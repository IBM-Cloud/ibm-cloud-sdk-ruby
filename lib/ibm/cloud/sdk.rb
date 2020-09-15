# typed: true
# frozen_string_literal: true

require_relative 'sdk/base_service'
require_relative 'sdk/iam'
require_relative 'sdk/power_iaas'
require_relative 'sdk/resource_controller'
require_relative 'sdk/vpc'

module IBM
  # Holds the SDK pieces.
  class CloudSDK
    def initialize(api_key, logger: nil, options: {})
      @logger = logger
      @logger ||= Logger.new($stdout, level: :warn)

      @client = HTTP.use(http_options(options))
      @token = IBM::Cloud::SDK::Connection.new(api_key, logger: @logger, client: @client)
    end

    def http_options(options = {})
      options.merge(
        {
          logging: { logger: @logger },
          auto_deflate: {}
        }
      )
    end

    attr_reader :logger, :token

    def vpc(region = 'us-east')
      IBM::Cloud::SDK::Vpc.new(region, @token, logger: @logger)
    end

    def power(region, guid, crn, tenant)
      IBM::Cloud::SDK::PowerIaas.new(region, guid, @token, crn, tenant)
    end
  end

  module Cloud
    module SDK
      class Error < StandardError; end
    end
  end
end
