# frozen_string_literal: true

require 'http'
require 'ibm/cloud/sdk/vpc/helpers/connection'
require 'ibm/cloud/sdk/vpc'

module IBM
    # Holds the SDK pieces.
    class CloudSDK
      def initialize(api_key, logger: nil, options: {})
        @logger = logger
        @logger ||= Logger.new($stdout, level: :warn)

        @client = HTTP.use(http_options(options))
        @connection = IBM::Cloud::SDK::VPC::Connection.new(api_key, logger: @logger, client: @client)
      end

      def http_options(options = {})
        options.merge(
          {
            logging: { logger: @logger },
            auto_deflate: {}
          }
        )
      end

      attr_reader :logger, :connection

      def vpc(region = 'us-east')
        IBM::Cloud::SDK::Vpc.new(region, @connection, logger: @logger)
      end
    end
end
