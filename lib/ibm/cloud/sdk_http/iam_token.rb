# frozen_string_literal: true

require 'httparty'

module IBM
  module Cloud
    # Module holds basic HTTP functionality.
    module SDKHTTP
      # Used to authenticate with IAM.
      class IAMToken
        include HTTParty
        # base_uri 'https://iam.cloud.ibm.com/identity/token'

        def initialize(api_key, logger: nil)
          @api_key = api_key
          @logger = logger
          @response = nil
          @data = nil
        end

        attr_reader :response

        def fetch
          payload = {
            body: {
              grant_type: 'urn:ibm:params:oauth:grant-type:apikey',
              apikey: @api_key
            }
          }
          response = self.class.post('https://iam.cloud.ibm.com/identity/token', payload)
          @response = SDKResponse.new(response)
        end

        def data
          fetch unless @response
          @response.raise_for_status?.json
        end

        # Check to see if the access_token is expired. Fetch a new token if none exists.
        # @return [IBM::Cloud::SDK::VPC::Response] Wrapped response to query.
        # @raise [IBM::Cloud::SDK::VPC::Exceptions::HttpStatusError] Response code is not either in 200-series or 404.
        def expired?
          data.fetch(:expiration, 0).to_i <= Time.now.to_i + 600
        end

        # Get a Bearer token string. Before returning check to see if token is expired.
        # @return [String] The Bearer token header used in subsequent requests.
        # @raise [IBM::Cloud::SDK::VPC::Exceptions::HttpStatusError] Response code is not either in 200-series or 404.
        def authorization_header
          fetch if expired?
          "#{data.fetch(:token_type)} #{data.fetch(:access_token)}"
        end
      end
    end
  end
end
