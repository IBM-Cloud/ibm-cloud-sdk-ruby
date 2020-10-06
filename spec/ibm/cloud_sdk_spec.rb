# frozen_string_literal: true

require 'logger'

require 'ibm-cloud-sdk'
require_relative 'cloud/sdk/vpc_vcr'
# rubocop:disable Metrics/BlockLength

RSpec.describe IBM::CloudSDK do
  let(:sdk) { IBM::CloudSDK.new(ENV['IBM_CLOUD_APIKEY']) }

  it 'can be instanciated' do
    expect(sdk).to be_an_instance_of(IBM::CloudSDK)
  end

  it 'has a token object' do
    expect(sdk.token).to be_an_instance_of(IBM::Cloud::SDKHTTP::IAMToken)
  end

  it 'has a logger object and logger is warn' do
    expect(sdk.logger).to be_an_instance_of(Logger)
    expect(sdk.logger.level).to eq(2)
  end

  it 'changing logger level changes http logging level.' do
    expect(sdk.logger.level).to eq(2)
    expect(sdk.token.connection.default_options[:logger].level).to eq(2)
    sdk.logger.level = :debug
    expect(sdk.logger.level).to eq(0)
    expect(sdk.token.connection.default_options[:logger].level).to eq(0)
  end

  it 'can add proxy config' do
    url = URI.parse('https://127.0.0.1')
    expect(sdk.token.connection.default_options.key?(:http_proxyaddr)).to be_falsey

    sdk.add_proxy(url)
    expect(sdk.token.connection.default_options.key?(:http_proxyaddr)).to be_truthy
    expect(sdk.vpc.connection.default_options.key?(:http_proxyaddr)).to be_truthy
  end

  it 'http config is global' do
    token_len = sdk.token.connection.default_options.length
    vpc_len = sdk.vpc.connection.default_options.length
    expect(token_len).to eq(vpc_len)
  end
end

# rubocop:enable Metrics/BlockLength
