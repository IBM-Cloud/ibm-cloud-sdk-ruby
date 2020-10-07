# frozen_string_literal: true

require 'ibm-cloud-sdk'
require_relative 'vpc_vcr'

RSpec.describe 'Test vpc response exceptions', :vcr do
  let(:log) { Logger.new($stdout).tap { |l| l.level = Logger::DEBUG } }
  let(:vpc) { VCR.use_cassette('Test_vpc_API/vpc', { tags: %i[require_2xx token_request] }) { IBM::CloudSDK.new(ENV['IBM_CLOUD_APIKEY']).vpc } }

  it 'throws HttpStatusError on error occurs' do
    expect { IBM::CloudSDK.new('asssfafaf').vpc.adhoc }.to raise_error(IBM::Cloud::SDKHTTP::Exceptions::HttpStatusError)
  end

  it 'does not throw on 404' do
    expect(vpc.adhoc.code).to eq(404)
  end

  it 'json method throws ExceptionWithResponse body is not json' do
    res = vpc.adhoc
    expect { res.json }.to raise_error(IBM::Cloud::SDKHTTP::Exceptions::ExceptionWithResponse)
  end

  it 'Exception has response as method' do
    vpc.adhoc
  rescue IBM::Cloud::SDK::VPC::Exceptions::ExceptionWithResponse => e
    expect(e).to respond_to?(:response)
  end

  it 'Exception when status is not 2xx' do
    expect { vpc.adhoc(path: 'instances', params: { version: 3 }) }.to raise_error(IBM::Cloud::SDKHTTP::Exceptions::HttpStatusError)
  end

  it 'No exception when status is 2xx' do
    expect(vpc.adhoc(path: 'instances')).to be_an_instance_of(IBM::Cloud::SDKHTTP::SDKResponse)
  end

end
