require_relative 'null_logger'

module IBM
  module Cloud
    module SDK
      class << self
        attr_writer :logger
      end

      def self.logger
        @logger ||= NullLogger.new
      end

      module Logging
        def logger
          IBM::Cloud::SDK.logger
        end
      end
    end
  end
end
