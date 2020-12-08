=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-11-17

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for IbmCloudVpc::NetworkInterfaceIdentityById
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NetworkInterfaceIdentityById' do
  before do
    # run before each test
    @instance = IbmCloudVpc::NetworkInterfaceIdentityById.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NetworkInterfaceIdentityById' do
    it 'should create an instance of NetworkInterfaceIdentityById' do
      expect(@instance).to be_instance_of(IbmCloudVpc::NetworkInterfaceIdentityById)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
