# frozen_string_literal: true

require 'httparty'

module IBM
  module Cloud
    module SDKHTTP
      # Class to wrap the HTTP Provider implementation.
      class HTTPConnection
        include HTTParty

        def initialize(logger)
          self.class.logger(logger)
        end

        def default_options
          self.class.default_options
        end

        def add_proxy(host, port, user, password)
          self.class.http_proxy(host, port, user, password)
        end

        def send(method, path, params)
          self.class.send(method.to_sym, path, params)
        end
      end
    end
  end
end
