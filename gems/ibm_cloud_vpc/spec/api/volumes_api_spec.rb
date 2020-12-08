=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-11-17

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'spec_helper'
require 'json'

# Unit tests for IbmCloudVpc::VolumesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VolumesApi' do
  before do
    # run before each test
    @api_instance = IbmCloudVpc::VolumesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VolumesApi' do
    it 'should create an instance of VolumesApi' do
      expect(@api_instance).to be_instance_of(IbmCloudVpc::VolumesApi)
    end
  end

  # unit tests for create_volume
  # Create a volume
  # This request creates a new volume from a volume prototype object. The prototype object is structured in the same way as a retrieved volume, and contains the information necessary to create the new volume.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param volume_prototype The volume prototype object
  # @param [Hash] opts the optional parameters
  # @return [Volume]
  describe 'create_volume test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_volume
  # Delete specified volume
  # This request deletes a volume. This operation cannot be reversed. For this request to succeed, the volume must not be attached to any instances.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The volume identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_volume test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_volume
  # Retrieve specified volume
  # This request retrieves a single volume specified by the identifier in the URL.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The volume identifier
  # @param [Hash] opts the optional parameters
  # @return [Volume]
  describe 'get_volume test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_volume_profile
  # Retrieve specified volume profile
  # This request retrieves a single volume profile specified by the name in the URL.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param name The volume profile name
  # @param [Hash] opts the optional parameters
  # @return [VolumeProfile]
  describe 'get_volume_profile test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_volume_profiles
  # List all volume profiles
  # This request lists all volume profiles available in the region. A volume profile specifies the performance characteristics and pricing model for a volume.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :start A server-supplied token determining what resource to start the page on
  # @option opts [Integer] :limit The number of resources to return on a page
  # @return [VolumeProfileCollection]
  describe 'list_volume_profiles test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_volumes
  # List all volumes
  # This request lists all volumes in the region. Volumes are network-connected block storage devices that may be attached to one or more instances in the same region.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :start A server-supplied token determining what resource to start the page on
  # @option opts [Integer] :limit The number of resources to return on a page
  # @option opts [String] :name Filters the collection to resources with the exact specified name
  # @option opts [String] :zone_name Filters the collection to resources in the zone with the exact specified name
  # @return [VolumeCollection]
  describe 'list_volumes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_volume
  # Update specified volume
  # This request updates a volume with the information in a provided volume patch. The volume patch object is structured in the same way as a retrieved volume and contains only the information to be updated.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The volume identifier
  # @param volume_patch The volume patch
  # @param [Hash] opts the optional parameters
  # @return [Volume]
  describe 'update_volume test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
