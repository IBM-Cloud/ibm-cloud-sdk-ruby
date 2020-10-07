# frozen_string_literal: true

require 'httparty'

require_relative 'cloud/sdk_http'
require_relative 'cloud/sdk/vpc'
require_relative 'cloud/sdk/tags'

module IBM
  # Holds the SDK pieces.
  class CloudSDK
    def initialize(api_key, logger: nil)
      @logger = logger || Logger.new($stdout, level: :warn)
      @connection = IBM::Cloud::SDKHTTP::HTTPConnection.new(@logger)
      @token = IBM::Cloud::SDKHTTP::IAMToken.new(api_key, @connection, logger: @logger)
    end

    attr_reader :logger, :token, :connection

    # Add a proxy to the configuration.
    # @param uri [URI::Generic] A URI object with proxy configuration.
    def add_proxy(uri)
      raise "URI #{uri} is not set properly. Requires a full url, and optional user & password" if uri.relative?

      path = "#{uri.scheme}://#{uri.hostname}"
      @connection.class.http_proxy(path, uri.port, uri.user, uri.password)
    end

    def tags
      @tags ||= IBM::Cloud::SDK::Tags.new(@connection, @token, logger: @logger)
    end

    # Get an instance of the VPC API.
    # @param region [String] The region to use for the VPC connection.
    def vpc(region = 'us-east')
      @vpc ||= IBM::Cloud::SDK::Vpc.new(region, @connection, @token, logger: @logger)
    end
  end
end
