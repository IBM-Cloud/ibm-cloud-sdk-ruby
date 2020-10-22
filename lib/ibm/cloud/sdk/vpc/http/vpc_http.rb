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
