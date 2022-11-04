=begin
#Power Cloud API

#IBM Power Cloud API for Power Hardware / Infrastructure

The version of the OpenAPI document: 1.0.0
Contact: kylej@us.ibm.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for IbmCloudPower::VolumeGroupActionReset
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe IbmCloudPower::VolumeGroupActionReset do
  let(:instance) { IbmCloudPower::VolumeGroupActionReset.new }

  describe 'test an instance of VolumeGroupActionReset' do
    it 'should create an instance of VolumeGroupActionReset' do
      expect(instance).to be_instance_of(IbmCloudPower::VolumeGroupActionReset)
    end
  end
  describe 'test attribute "status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["available"])
      # validator.allowable_values.each do |value|
      #   expect { instance.status = value }.not_to raise_error
      # end
    end
  end

end
