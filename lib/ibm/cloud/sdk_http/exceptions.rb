# frozen_string_literal: true

module IBM
  module Cloud
    module SDKHTTP
      # Module to contain all custom exception classes.
      module Exceptions
        # An exception for http with a response attribute.
        # @param msg [String] A human readable message.
        # @param response [IBM::Cloud::SDK::VPC::Response] The original response object.
        class ExceptionWithResponse < RuntimeError
          def initialize(msg, response)
            @response = response
            super(msg)
          end
          # @return [IBM::Cloud::SDK::VPC::Response] The response
          attr_reader :response
        end

        # An exception for http status errors with a response attribute.
        # @param response [IBM::Cloud::SDK::VPC::Response] The original response object.
        class HttpStatusError < ExceptionWithResponse
          def initialize(response)
            msg = "Invalid status #{response.code} for url \"#{response.url}\", #{response.reason}. #{response.body}"
            super(msg, response)
          end
        end
      end
    end
  end
end
