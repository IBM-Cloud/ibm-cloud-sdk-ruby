# frozen_string_literal: true

require 'ibm-cloud-sdk'
require_relative 'vpc_vcr'

RSpec.describe 'Test vpc response exceptions', :vcr do
  let(:log) { Logger.new($stdout).tap { |l| l.level = Logger::DEBUG } }
  let(:vpc) { VCR.use_cassette('Test_vpc_API/vpc', { tags: %i[require_2xx token_request] }) { IBM::CloudSDK.new(ENV['IBM_CLOUD_APIKEY']).vpc } }

  it 'throws HttpStatusError on error occurs' do
    expect { IBM::CloudSDK.new('asssfafaf').vpc.adhoc }.to raise_error(IBM::Cloud::SDK::VPC::Exceptions::HttpStatusError)
  end

  it 'does not throw on 404' do
    expect(vpc.adhoc.code).to eq(404)
  end

  it 'json method throws ExceptionWithResponse body is not json' do
    res = vpc.adhoc
    expect { res.json }.to raise_error(IBM::Cloud::SDK::VPC::Exceptions::ExceptionWithResponse)
  end

  it 'Exception has response as method' do
    vpc.adhoc
  rescue IBM::Cloud::SDK::VPC::Exceptions::ExceptionWithResponse => e
    expect(e).to respond_to?(:response)
  end
end
