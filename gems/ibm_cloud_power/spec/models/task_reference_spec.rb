=begin
#Power Cloud API

#IBM Power Cloud API for Power Hardware / Infrastructure

The version of the OpenAPI document: 1.0.0
Contact: kylej@us.ibm.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for IbmCloudPower::TaskReference
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TaskReference' do
  before do
    # run before each test
    @instance = IbmCloudPower::TaskReference.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TaskReference' do
    it 'should create an instance of TaskReference' do
      expect(@instance).to be_instance_of(IbmCloudPower::TaskReference)
    end
  end
  describe 'test attribute "task_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "href"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
