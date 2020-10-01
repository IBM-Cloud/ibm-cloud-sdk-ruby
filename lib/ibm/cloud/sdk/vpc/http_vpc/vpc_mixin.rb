# frozen_string_literal: true

require_relative '../http_vpc'

module IBM
  module Cloud
    module SDK
      # Module holds basic HTTP functionality.
      module VPC
        # Generic methods for accessing VPC.
        module VpcHTTP
          include IBM::Cloud::SDKHTTP::BaseHTTPMixin

          def metadata(query = nil, payload = nil)
            query ||= {}
            payload ||= {}
            {
              query: { version: '2020-08-01', generation: 2 }.merge(query),
              body: payload,
              headers: { "Authorization": @token.authorization_header }
            }
          end
        end
      end
    end
  end
end
