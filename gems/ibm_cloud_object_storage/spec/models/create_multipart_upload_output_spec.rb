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

# Unit tests for IbmCloudObjectStorage::CreateMultipartUploadOutput
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CreateMultipartUploadOutput' do
  before do
    # run before each test
    @instance = IbmCloudObjectStorage::CreateMultipartUploadOutput.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateMultipartUploadOutput' do
    it 'should create an instance of CreateMultipartUploadOutput' do
      expect(@instance).to be_instance_of(IbmCloudObjectStorage::CreateMultipartUploadOutput)
    end
  end
  describe 'test attribute "bucket"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "key"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "upload_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
