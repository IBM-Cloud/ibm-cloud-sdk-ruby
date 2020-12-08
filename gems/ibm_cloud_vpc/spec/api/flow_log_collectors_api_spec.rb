=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-11-17

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'spec_helper'
require 'json'

# Unit tests for IbmCloudVpc::FlowLogCollectorsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FlowLogCollectorsApi' do
  before do
    # run before each test
    @api_instance = IbmCloudVpc::FlowLogCollectorsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FlowLogCollectorsApi' do
    it 'should create an instance of FlowLogCollectorsApi' do
      expect(@api_instance).to be_instance_of(IbmCloudVpc::FlowLogCollectorsApi)
    end
  end

  # unit tests for create_flow_log_collector
  # Create a flow log collector
  # This request creates and starts a new flow log collector from a flow log collector prototype object. The prototype object is structured in the same way as a retrieved flow log collector, and contains the information necessary to create and start the new flow log collector.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param unknown_base_type The flow log collector prototype object
  # @param [Hash] opts the optional parameters
  # @return [FlowLogCollector]
  describe 'create_flow_log_collector test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_flow_log_collector
  # Delete the specified flow log collector
  # This request stops and deletes a flow log collector. Collected flow logs remain available within the flow log collector&#39;s bucket.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The flow log collector identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_flow_log_collector test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_flow_log_collector
  # Retrieve the specified flow log collector
  # This request retrieves a single flow log collector specified by the identifier in the URL.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The flow log collector identifier
  # @param [Hash] opts the optional parameters
  # @return [FlowLogCollector]
  describe 'get_flow_log_collector test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_flow_log_collectors
  # List all flow log collectors
  # This request retrieves all flow log collectors in the region. A flow log collector summarizes data sent over one or more network interfaces within a VPC, depending on the chosen target.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :start A server-supplied token determining what resource to start the page on
  # @option opts [Integer] :limit The number of resources to return on a page
  # @option opts [String] :resource_group_id Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers
  # @option opts [String] :name Filters the collection to resources with the exact specified name
  # @option opts [String] :vpc_id Filters the collection to resources in the VPC with the specified identifier
  # @option opts [String] :vpc_crn Filters the collection to resources in the VPC with the specified CRN
  # @option opts [String] :vpc_name Filters the collection to resources in the VPC with the exact specified name
  # @option opts [String] :target_id Filters the collection to flow log collectors that target the specified resource.
  # @option opts [String] :target_resource_type Filters the collection to flow log collectors that target the specified resource type.
  # @return [FlowLogCollectorCollection]
  describe 'list_flow_log_collectors test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_flow_log_collector
  # Update the specified flow log collector
  # This request updates a flow log collector with the information in a provided flow log collector patch. The flow log collector patch object is structured in the same way as a retrieved flow log collector and contains only the information to be updated.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The flow log collector identifier
  # @param flow_log_collector_patch The flow log collector patch
  # @param [Hash] opts the optional parameters
  # @return [FlowLogCollector]
  describe 'update_flow_log_collector test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
