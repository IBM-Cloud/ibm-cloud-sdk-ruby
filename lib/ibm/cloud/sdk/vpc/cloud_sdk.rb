# frozen_string_literal: true

require 'http'
require 'ibm/cloud/sdk/vpc/helpers/connection'
require 'ibm/cloud/sdk/vpc'

module IBM
  # Holds the SDK pieces.
  class CloudSDK
    # Controls the CLI options help text and environment variables used.
    def self.env_options
      {
        api_key: {
          type: :string,
          desc: 'The API Key to log into IBM Cloud',
          env_var: 'IBM_CLOUD_APIKEY'
        },
        region: {
          type: :string,
          desc: 'The region to connect to',
          env_var: 'IBM_CLOUD_REGION',
          default: 'us-east'
        },
        crn: {
          type: :string,
          desc: 'The CRN for the region.',
          env_var: 'IBM_CLOUD_CRN'
        },
        guid: {
          type: :string,
          desc: 'The GUID for the power env.',
          env_var: 'IBM_CLOUD_GUID'
        },
        tenant: {
          type: :string,
          desc: 'The tenant for the region.',
          env_var: 'IBM_CLOUD_TENANT'
        }
      }.freeze
    end

    # Print when called from the CLI. Putting here to ensure changes in class are reflected in message.
    def self.cli_help
      puts <<~DESC
        The console will start a PRY session inside the Engine class which provides access to the IBM Cloud SDK.

        To access the SDK use the following methods without options:
          * vpc to get an instance of the VPC API.
          * power to get an instance of the Power API.
      DESC
    end

    def initialize(api_key = nil, logger: nil, options: {}, cli_options: {})
      @logger = logger
      @logger ||= Logger.new($stdout, level: :warn)
      @client = HTTP.use(http_options(options))
      _set_variables(cli_options)
      @api_key ||= api_key
      raise 'API Key must be set.' unless @api_key

      @connection = IBM::Cloud::SDK::VPC::Connection.new(@api_key, logger: @logger, client: @client)
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

    def power(region = nil, guid = nil, crn = nil, tenant = nil)
      _set_variables({ region: region, quid: guid, crn: crn, tenant: tenant })
      IBM::Cloud::SDK::PowerIaas.new(@region, @guid, @connection, @crn, @tenant) if required %w[region guid crn tenant]
    end

    def vpc(region = 'us-east')
      _set_variables({ region: region })
      IBM::Cloud::SDK::Vpc.new(@region, @connection, logger: @logger) if required %w[region]
    end

    private

    def required(values)
      empty_values = []
      values.each do |v|
        empty_values.push(v) unless instance_variable_get("@#{v}")
      end
      if empty_values.length.positive?
        puts "Values required for options #{empty_values.join(', ')} to continue."
        return false
      end
      true
    end

    def _set_variables(options)
      options.each do |k, v|
        instance_variable_set("@#{k}", v) unless v.nil? || v.empty?
      end
    end
  end
end
