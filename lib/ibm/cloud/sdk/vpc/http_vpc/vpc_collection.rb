# typed: true
# frozen_string_literal: true

require_relative '../http_vpc'
require_relative 'vpc_http'

module IBM
  module Cloud
    module SDK
      module VPC
        # Container that encapsulates the VPC API.
        # This class is used as a base for collection APIs.
        # @param parent [Object] The parent instance in the API chain.
        # @param endpoint [string] A path from the parent to the desired endpoint. In most cases is should be 1 word.
        # @param array_key [string] The key that the API response holds the endpoint data. When nil the endpoint will be used.
        # @param child_class [Object] The Object to be used when instanciating the single instance for this class.
        class BaseCollection < SDKHTTP::BaseCollection
          include VpcHTTP

          # Determine if the collection has a total_count key in its response.
          # @return [Boolean]
          def has_count?
            fetch.json&.key?(:total_count)
          end

          # Get the total count if it exists in the response. Returns nil otherwise.
          # @return [Integer] The total count reuturned by the server.
          def count
            fetch.json&.[](:total_count)
          end
        end
      end
    end
  end
end
