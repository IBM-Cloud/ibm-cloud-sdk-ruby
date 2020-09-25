=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-09-08

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for IbmCloudVpc::IKEPolicy
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'IKEPolicy' do
  before do
    # run before each test
    @instance = IbmCloudVpc::IKEPolicy.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IKEPolicy' do
    it 'should create an instance of IKEPolicy' do
      expect(@instance).to be_instance_of(IbmCloudVpc::IKEPolicy)
    end
  end
  describe 'test attribute "authentication_algorithm"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["md5", "sha1", "sha256"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.authentication_algorithm = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "connections"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "created_at"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "dh_group"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Integer', [2, 5, 14])
      # validator.allowable_values.each do |value|
      #   expect { @instance.dh_group = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "encryption_algorithm"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["triple_des", "aes128", "aes256"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.encryption_algorithm = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "href"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "ike_version"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Integer', [1, 2])
      # validator.allowable_values.each do |value|
      #   expect { @instance.ike_version = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "key_lifetime"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "negotiation_mode"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["main"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.negotiation_mode = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "resource_group"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "resource_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ike_policy"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.resource_type = value }.not_to raise_error
      # end
    end
  end

end