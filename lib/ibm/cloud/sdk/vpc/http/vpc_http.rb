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

          def metadata(query = nil, payload = nil)
            @params ||= {}
            @params.merge!(query) if query

            payload ||= {}
            {
              query: { version: '2020-08-01', generation: 2 }.merge(@params),
              body: payload,
              headers: { "Authorization": @token.authorization_header }
            }
          end
        end
      end
    end
  end
end
