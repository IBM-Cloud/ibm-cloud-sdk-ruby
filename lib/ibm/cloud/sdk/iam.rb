# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      # Get a new Bearer using the API Key.
      class IAM < BaseService
        def endpoint
          'https://iam.cloud.ibm.com'
        end

        def initialize(api_key) # rubocop:disable Lint/MissingSuper
          @api_key = api_key
        end

        def get_identity_token
          payload = {
            grant_type: 'urn:ibm:params:oauth:grant-type:apikey',
            apikey: @api_key
          }

          result = post('identity/token', payload)

          require 'ibm/cloud/sdk/iam/token'
          Token.new(*result.values_at('token_type', 'access_token'))
        end

        private

        def headers
          {
            'Content-Type': 'application/x-www-form-urlencoded',
            'Accept': 'application/json'
          }
        end
      end
    end
  end
end
