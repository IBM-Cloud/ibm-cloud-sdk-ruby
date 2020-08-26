# frozen_string_literal: true

require 'logger'

# Append logdev method to default logger. For working with original loggers.
class Logger
  # @return [LogDevice] Retreive currently configured LogDevice
  attr_reader :logdev
end
# A modified log for storing multiple instances.
class Log < Logger
  # Creates or opens a secondary log file.
  def initialize(logdev = nil, shift_age = 0, shift_size = 1_048_576, name: nil, log_level: 'debug')
    @progname = name
    @level = level(log_level)
    @logdev = _set_logdev(logdev, shift_age, shift_size)

    # Reset the attributes controlling log naming.
    @old_method = nil
    @basename = nil

    # Formatting
    @datetime_format = '%Y-%m-%d %H:%M:%S'
    @default_formatter = Formatter.new
    @formatter = proc do |severity, datetime, progname, msg|
      "#{datetime} #{severity} #{progname} #{msg}\n"
    end
  end

  # @return [String] The class name this logger is logging for.
  attr_accessor :basename

  # @return [LogDevice] The configured LogDevice class.
  attr_reader :logdev

  # Set the level for the logger.
  # @param loglevel [String] Can be debug, info, warn, error, fatal, unknown
  # @return [Symbol] The converted level.
  def log_level=(loglevel)
    @level = level(loglevel)
  end

  private

  # Determine what class is being passed in and set appropriately.
  # @param logdev [Logger | Log] The param passed in from initialize.
  # @param shift_age [Integer] How long to keep logs for.
  # @param shift_size [Integer] How large a log file can last for.
  # @return [LogDevice]
  def _set_logdev(logdev, shift_age, shift_size)
    # This class's logdev was passed in.
    return logdev if logdev.class == Config::Helpers::Log::LogDevice

    # A stardard ruby logger class from the legacy code.
    return logdev.logdev if logdev.class == Logger

    # Undetermined so create a new one.
    LogDevice.new(logdev, shift_age: shift_age, shift_size: shift_size)
  end

  # Set the level of logging use the string equivalent of the Logger constants.
  # @param log_level [String] Contains either debug, info, warn, error, fatal or unknown.
  # @return [Integer] The log level inteteger that Logger uses internally.
  def level(log_level) # rubocop:disable Metrics/CyclomaticComplexity
    return @level = log_level unless log_level.instance_of?(String)

    log_level = log_level.downcase

    return @level = Logger::DEBUG if log_level == 'debug'

    return @level = Logger::INFO if log_level == 'info'

    return @level = Logger::WARN if log_level == 'warn'

    return @level = Logger::ERROR if log_level == 'error'

    return @level = Logger::FATAL if log_level == 'fatal'

    return @level = Logger::UNKNOWN if log_level == 'unknown'
  end

  # Standardize the progname formatting.
  # @param progname [Symbol] Whatever is returned from __method__.
  # @param log_enter [Boolean] Whether to print the enter string. default: true
  # @return [Symbol] The old progname value.
  def method_name(progname, log_enter = true)
    return if progname.nil? == true

    # Save the original progname for later.
    @old_method = @progname
    # Define if the enter/exit log messages should be printed.
    @log_enter = log_enter
    # Set the new progname variable.
    @progname = @basename.nil? && progname || "#{@basename}.#{progname}"
    debug('Entering method') if @log_enter == true
    @old_method
  end

  # Reset the progname string back to the original progname.
  # @param old_method [Symbol] Whatever value was returned from the method_name method. default: nil
  # @return [Symbol] The changed progname for Log.
  def unset_method(old_method = nil)
    debug('Exiting method') if @log_enter == true
    # If the old_method param is nil then set to the class attribute.
    @progname = old_method.nil? && @old_method || old_method
    # Return the new progname.
    @progname
  end

  # Get a logger that inherits the configuation of this logger.
  # @param basename [Symbol] Module name for logger.
  # @return [Log] New instance of Log with basename and logdev set.
  def get_logger(basename)
    # Set name & basename to Class name.
    l = Config::Helpers::Log.new(@logdev, name: basename, log_level: @level)
    # Save Class name for appending to method name.
    l.basename = basename
    l
  end

  # Open and log to the named file.
  # @param name [Logger|IO|String] A Logger, IO instance or a path to a log file.
  # @return [NilClass]
  def attach(name)
    if name.class == Logger
      @logdev.attach(name.logdev.filename)
    else
      @logdev.attach(name)
    end
    nil
  end

  # Stop logging to the named file.
  # @param name [String] Name of log file to remove.
  # @return [NilClass]
  def detach(name)
    @logdev.detach(name)
  end

  # Log the message and the error stack.
  # @param message [string] Message to print to log file.
  # @param error [Exception] Exception object.
  # @return [true]
  def exception(message, error)
    fatal("#{message} Exception is: #{error.message} #{error.backtrace}")
  end

  # The devices to log to.
  class LogDevice < Logger::LogDevice
    # @return [Hash] The IO instances being used.
    attr_reader :devs

    # Add another log file to log to.
    # @param log [String] Name of log file to attach.
    # @return [NilClass]
    def attach(log)
      @mutex.synchronize do
        # If @devs is not defined then set to empty Hash.
        @devs ||= {}
        # Open file for writing and add to Hash.
        @devs[log] = open_logfile(log)
      end
      nil
    end

    # Remove and close the named log file.
    # @param log [String] Name of the log file to detach.
    # @return [NilClass]
    def detach(log)
      # If @devs is not defined then set to empty Hash.
      @devs ||= {}
      # Return if key returns nil.
      return if @devs[log].nil?

      # Set lock, close log file and delete from hash.
      @mutex.synchronize do
        @devs[log].close
        @devs.delete(log)
      end
      nil
    end

    # @return [?] Move the parent's write method to old_write
    alias old_write write
    # Write to all configured devices.
    # @param message [String] Message to write.
    # @return [?]
    def write(message)
      # Write to the original log file.
      old_write(message)
      # Set lock, and write message to each defined log file.
      @mutex.synchronize do
        # If @devs is not defined then set to Hash.
        @devs ||= {}
        # Iterate through @devs.
        @devs.each_value do |_log, dev|
          dev.write(message)
        end
      end
    end
  end
end
