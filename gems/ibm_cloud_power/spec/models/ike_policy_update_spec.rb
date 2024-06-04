=begin
#Power Cloud API

#IBM Power Cloud API for Power Hardware / Infrastructure

The version of the OpenAPI document: 1.0.0
Contact: kylej@us.ibm.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for IbmCloudPower::IKEPolicyUpdate
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe IbmCloudPower::IKEPolicyUpdate do
  let(:instance) { IbmCloudPower::IKEPolicyUpdate.new }

  describe 'test an instance of IKEPolicyUpdate' do
    it 'should create an instance of IKEPolicyUpdate' do
      expect(instance).to be_instance_of(IbmCloudPower::IKEPolicyUpdate)
    end
  end
  describe 'test attribute "authentication"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["sha1", "md5", "sha-256", "sha-384"])
      # validator.allowable_values.each do |value|
      #   expect { instance.authentication = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "dh_group"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Integer', [1, 2, 5, 14, 19, 20, 24])
      # validator.allowable_values.each do |value|
      #   expect { instance.dh_group = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "encryption"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["3des-cbc", "aes-128-cbc", "aes-128-gcm", "aes-192-cbc", "aes-256-cbc", "aes-256-gcm", "des-cbc"])
      # validator.allowable_values.each do |value|
      #   expect { instance.encryption = value }.not_to raise_error
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

  describe 'test attribute "preshared_key"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "version"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Integer', [1, 2])
      # validator.allowable_values.each do |value|
      #   expect { instance.version = value }.not_to raise_error
      # end
    end
  end

end