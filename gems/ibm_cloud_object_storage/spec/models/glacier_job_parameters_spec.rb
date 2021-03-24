=begin
#COS Compatibility S3 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1
Contact: nicholas.lange@ibm.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for IbmCloudObjectStorage::GlacierJobParameters
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'GlacierJobParameters' do
  before do
    # run before each test
    @instance = IbmCloudObjectStorage::GlacierJobParameters.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GlacierJobParameters' do
    it 'should create an instance of GlacierJobParameters' do
      expect(@instance).to be_instance_of(IbmCloudObjectStorage::GlacierJobParameters)
    end
  end
  describe 'test attribute "tier"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
