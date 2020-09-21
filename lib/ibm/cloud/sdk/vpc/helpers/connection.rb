# frozen_string_literal: true

require 'time'
require 'http'
require_relative 'response'

module IBM
  module Cloud
    module SDK
      module VPC
        # Contols tokens.
        class Connection
          def initialize(api_key, logger: nil, client: nil)
            @api_key = api_key
            @logger = logger
            @client = client
            @token = Token.new(api_key, logger: logger, client: client)
          end

          attr_reader :client

          def adhoc(verb, uri, opts = {})
            response = @client.auth(@token.authorization_header).request(verb.to_sym, uri, opts)
            Response.new(response)
          end

          def authorization_header
            @token.authorization_header
          end
        end

        # Get a token.
        class Token
          def initialize(api_key, logger: nil, client: nil)
            @api_key = api_key
            @logger = logger
            @client = client
            @data = nil
          end

          def fetch
            payload = {
              form: {
                grant_type: 'urn:ibm:params:oauth:grant-type:apikey',
                apikey: @api_key
              }
            }
            response = HTTP.post('https://iam.cloud.ibm.com/identity/token', payload)
            @data = Response.new(response).json
          end

          def expired?
            fetch unless @data
            @data.fetch(:expiration).to_i <= Time.now.to_i + 600
          end

          def authorization_header
            fetch if expired?
            "#{@data.fetch(:token_type)} #{@data.fetch(:access_token)}"
          end
        end
      end
    end
  end
end
