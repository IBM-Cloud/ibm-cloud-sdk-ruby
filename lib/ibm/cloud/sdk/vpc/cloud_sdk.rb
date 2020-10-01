# frozen_string_literal: true

require 'ibm/cloud/sdk/vpc'

module IBM
  # Holds the SDK pieces.
  class CloudSDK
    def initialize(api_key, logger: nil, proxy_config: {}, options: {})
      @logger = logger || Logger.new($stdout, level: :warn)
      @token = IBM::Cloud::SDKHTTP::IAMToken.new(api_key)
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
      IBM::Cloud::SDK::Vpc.new(region, @token, logger: @logger)
    end
  end
end
