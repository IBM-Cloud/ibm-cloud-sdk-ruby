# frozen_string_literal: true

require 'httparty'
require_relative 'sdk_response'

module IBM
  module Cloud
    module SDKHTTP
      # Class to wrap the HTTP Provider implementation.
      class HTTPConnection
        include HTTParty

        def initialize(logger)
          @logger = logger
          self.class.logger(logger, :debug, :apache)
        end

        # Set the logger type to curl which has more information.
        def verbose_logger=(verbosity)
          default_options[:log_format] = verbosity ? :curl : :apache
        end

        def default_options
          self.class.default_options
        end

        def add_proxy(host, port, user, password)
          self.class.http_proxy(host, port, user, password)
        end

        def request(method, path, params)
          response = self.class.send(method.to_sym, path, params)
          SDKResponse.new(response)
        end
      end
    end
  end
end
