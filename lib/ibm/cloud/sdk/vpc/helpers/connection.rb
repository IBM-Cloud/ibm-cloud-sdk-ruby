# frozen_string_literal: true

require 'time'
require 'http'
require_relative 'response'

module IBM
  module Cloud
    module SDK
      module VPC
        # The Connection object to be used for all HTTP requests.
        # @param api_key [String] The API Key to be used for this account.
        # @param logger [Logger] An instantiated logger instance.
        # @param client [HTTP::Client] An instantiated HTTP client.
        class Connection
          def initialize(api_key, logger: nil, client: nil)
            @api_key = api_key
            @logger = logger
            @client = client
            @token = Token.new(api_key, logger: logger, client: client)
          end

          attr_reader :client

          # Send a HTTP request. Checks the validity of the response.
          # @param verb [String] THe HTTP verb to use for this request.
          # @param uri [String] The Full URL to send.
          # @options opts [Hash] :params Parameters for URL encoding parameters.
          # @options opts [Hash] :json Used when sending a hash as application/json content type.
          # @options opts [Hash] :form Used when sending a hash as a form.
          # @options opts [Hash] :headers Used to modify headers for request.
          # @return [IBM::Cloud::SDK::VPC::Response] Wrapped response to query.
          # @raise [IBM::Cloud::SDK::VPC::Exceptions::HttpStatusError] Response code is not either in 200-series or 404.
          def adhoc(verb, uri, opts = {})
            unverified_request(verb, uri, opts).raise_for_status?
          end

          # Send a HTTP request. Don't do any validation checks.
          # @see :adhoc for options.
          def unverified_request(verb, uri, opts = {})
            response = @client.auth(@token.authorization_header).request(verb.to_s.downcase.to_sym, uri, opts)
            Response.new(response)
          end

          # Get bearer token string for clients not using the adhoc method.
          def authorization_header
            @token.authorization_header
          end
        end

        # The IAM token manager.
        # @param api_key [String] The API Key to be used for this account.
        # @param logger [Logger] An instantiated logger instance.
        # @param client [HTTP::Client] An instantiated HTTP client.
        class Token
          def initialize(api_key, logger: nil, client: nil)
            @api_key = api_key
            @logger = logger
            @client = client
            @data = fetch
          end

          # Retrieve a new access_token from IAM.
          # @return [IBM::Cloud::SDK::VPC::Response] Wrapped response to query.
          # @raise [IBM::Cloud::SDK::VPC::Exceptions::HttpStatusError] Response code is not either in 200-series or 404.
          def fetch
            payload = {
              form: {
                grant_type: 'urn:ibm:params:oauth:grant-type:apikey',
                apikey: @api_key
              }
            }
            response = HTTP.post('https://iam.cloud.ibm.com/identity/token', payload)
            @data = Response.new(response).raise_for_status?.json
          end

          # Check to see if the access_token is expired. Fetch a new token if none exists.
          # @return [IBM::Cloud::SDK::VPC::Response] Wrapped response to query.
          # @raise [IBM::Cloud::SDK::VPC::Exceptions::HttpStatusError] Response code is not either in 200-series or 404.
          def expired?
            fetch unless @data
            @data.fetch(:expiration).to_i <= Time.now.to_i + 600
          end

          # Get a Bearer token string. Before returning check to see if token is expired.
          # @return [String] The Bearer token header used in subsequent requests.
          # @raise [IBM::Cloud::SDK::VPC::Exceptions::HttpStatusError] Response code is not either in 200-series or 404.
          def authorization_header
            fetch if expired?
            "#{@data.fetch(:token_type)} #{@data.fetch(:access_token)}"
          end
        end
      end
    end
  end
end
