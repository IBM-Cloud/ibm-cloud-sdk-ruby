# frozen_string_literal: true

require_relative '../http'

module IBM
  module Cloud
    module SDK
      # Module holds basic HTTP functionality.
      module VPC
        # Generic methods for accessing VPC.
        module VpcHTTP
          include SDKHTTP::BaseHTTPMixin

          # Preprocess request parameters, add required version and generation parameters to query.
          # @param query [Hash] A hash of query parameters.
          # @param payload [Hash] A hash to send as the body.
          # @param payload_type [Hash] If json then convert to json string, else send as form data.
          # @return [Hash]
          def metadata(query = nil, payload = nil, payload_type = 'json')
            default_params = { version: '2020-08-01', generation: 2 }
            default_params.merge!(query) if query
            super(default_params, payload, payload_type)
          end
        end
      end
    end
  end
end
