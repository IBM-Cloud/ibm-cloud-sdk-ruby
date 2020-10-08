require_relative 'logging'

module IBM
  module Cloud
    module SDK
      class IAM < BaseService
        include Logging

        def endpoint
          "https://iam.cloud.ibm.com".freeze
        end

        def initialize(api_key)
          @api_key = api_key
          RestClient.log = logger
        end

        def get_identity_token
          payload = {
            :grant_type => "urn:ibm:params:oauth:grant-type:apikey",
            :apikey     => api_key
          }

          result = post("identity/token", payload)

          require "ibm/cloud/sdk/iam/token"
          Token.new(*result.values_at("token_type", "access_token"))
        end

        private

        attr_reader :api_key

        def headers
          {
            "Content-Type" => "application/x-www-form-urlencoded",
            "Accept"       => "application/json"
          }
        end
      end
    end
  end
end
