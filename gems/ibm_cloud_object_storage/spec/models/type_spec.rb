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

# Unit tests for IbmCloudObjectStorage::Type
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Type' do
  before do
    # run before each test
    @instance = IbmCloudObjectStorage::Type.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Type' do
    it 'should create an instance of Type' do
      expect(@instance).to be_instance_of(IbmCloudObjectStorage::Type)
    end
  end
end
