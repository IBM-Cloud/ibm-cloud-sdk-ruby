=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-11-17

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'spec_helper'
require 'json'

# Unit tests for IbmCloudVpc::InstanceGroupsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InstanceGroupsApi' do
  before do
    # run before each test
    @api_instance = IbmCloudVpc::InstanceGroupsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InstanceGroupsApi' do
    it 'should create an instance of InstanceGroupsApi' do
      expect(@api_instance).to be_instance_of(IbmCloudVpc::InstanceGroupsApi)
    end
  end

  # unit tests for create_instance_group
  # Create an instance group
  # This request creates a new instance group
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param instance_group_prototype The instance group prototype object
  # @param [Hash] opts the optional parameters
  # @return [InstanceGroup]
  describe 'create_instance_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_instance_group_manager
  # Create an instance group manager
  # This request creates a new instance group manager
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param instance_group_id The instance group identifier
  # @param instance_group_manager_prototype The instance group manager prototype object
  # @param [Hash] opts the optional parameters
  # @return [InstanceGroupManager]
  describe 'create_instance_group_manager test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_instance_group_manager_policy
  # Create an instance group manager policy
  # This request creates a new instance group manager policy
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param instance_group_id The instance group identifier
  # @param instance_group_manager_id The instance group manager identifier
  # @param instance_group_manager_policy_prototype The instance group manager policy prototype object
  # @param [Hash] opts the optional parameters
  # @return [InstanceGroupManagerPolicy]
  describe 'create_instance_group_manager_policy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_instance_group
  # Delete specified instance group
  # This request deletes an instance group. This operation cannot be reversed. Any instances associated with the group will be deleted.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The instance group identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_instance_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_instance_group_load_balancer
  # Delete specified instance group load balancer
  # This request unbinds the instance group from the load balancer pool, and deletes the load balancer pool members.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param instance_group_id The instance group identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_instance_group_load_balancer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_instance_group_manager
  # Delete specified instance group manager
  # This request deletes an instance group manager. This operation cannot be reversed.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param instance_group_id The instance group identifier
  # @param id The instance group manager identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_instance_group_manager test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_instance_group_manager_policy
  # Delete specified instance group manager policy
  # This request deletes an instance group manager policy. This operation cannot be reversed.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param instance_group_id The instance group identifier
  # @param instance_group_manager_id The instance group manager identifier
  # @param id The instance group manager policy identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_instance_group_manager_policy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_instance_group_membership
  # Delete specified instance group membership
  # This request deletes a memberships of an instance group. This operation cannot be reversed. reversed. If the membership has &#x60;delete_instance_on_membership_delete&#x60; set to &#x60;true&#x60;, the instance will also be deleted.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param instance_group_id The instance group identifier
  # @param id The instance group membership identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_instance_group_membership test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_instance_group_memberships
  # Delete all memberships from the instance group
  # This request deletes all memberships of an instance group. This operation cannot be reversed. reversed. Any memberships that have &#x60;delete_instance_on_membership_delete&#x60; set to &#x60;true&#x60; will also have their instances deleted.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param instance_group_id The instance group identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_instance_group_memberships test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_instance_group
  # Retrieve specified instance group
  # This request retrieves a single instance group specified by identifier in the URL.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The instance group identifier
  # @param [Hash] opts the optional parameters
  # @return [InstanceGroup]
  describe 'get_instance_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_instance_group_manager
  # Retrieve specified instance group
  # This request retrieves a single instance group manager specified by identifier in the URL.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param instance_group_id The instance group identifier
  # @param id The instance group manager identifier
  # @param [Hash] opts the optional parameters
  # @return [InstanceGroupManager]
  describe 'get_instance_group_manager test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_instance_group_manager_policy
  # Retrieve specified instance group manager policy
  # This request retrieves a single instance group manager policy specified by identifier in the URL.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param instance_group_id The instance group identifier
  # @param instance_group_manager_id The instance group manager identifier
  # @param id The instance group manager policy identifier
  # @param [Hash] opts the optional parameters
  # @return [InstanceGroupManagerPolicy]
  describe 'get_instance_group_manager_policy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_instance_group_membership
  # Retrieve specified instance group membership
  # This request retrieves a single instance group membership specified by identifier in the URL.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param instance_group_id The instance group identifier
  # @param id The instance group membership identifier
  # @param [Hash] opts the optional parameters
  # @return [InstanceGroupMembership]
  describe 'get_instance_group_membership test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_instance_group_manager_policies
  # List all policies for an instance group manager
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param instance_group_id The instance group identifier
  # @param instance_group_manager_id The instance group manager identifier
  # @param [Hash] opts the optional parameters
  # @return [InstanceGroupManagerPolicyCollection]
  describe 'list_instance_group_manager_policies test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_instance_group_managers
  # List all managers for an instance group
  # This request retrieves instance group managers
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param instance_group_id The instance group identifier
  # @param [Hash] opts the optional parameters
  # @return [InstanceGroupManagerCollection]
  describe 'list_instance_group_managers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_instance_group_memberships
  # List all memberships for the instance group
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param instance_group_id The instance group identifier
  # @param [Hash] opts the optional parameters
  # @return [InstanceGroupMembershipCollection]
  describe 'list_instance_group_memberships test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_instance_groups
  # List all instance groups
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :start A server-supplied token determining what resource to start the page on
  # @option opts [Integer] :limit The number of resources to return on a page
  # @return [InstanceGroupCollection]
  describe 'list_instance_groups test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_instance_group
  # Update specified instance group
  # This request updates an instance group with the information provided instance group patch. The instance group patch object is structured in the same way as a retrieved instance group and contains only the information to be updated.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The instance group identifier
  # @param instance_group_patch The instance group patch
  # @param [Hash] opts the optional parameters
  # @return [InstanceGroup]
  describe 'update_instance_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_instance_group_manager
  # Update specified instance group manager
  # This request updates an instance group manager with the information provided instance group manager patch.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param instance_group_id The instance group identifier
  # @param id The instance group manager identifier
  # @param instance_group_manager_patch The instance group manager patch
  # @param [Hash] opts the optional parameters
  # @return [InstanceGroupManager]
  describe 'update_instance_group_manager test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_instance_group_manager_policy
  # Update specified instance group manager policy
  # This request updates an instance group manager policy.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param instance_group_id The instance group identifier
  # @param instance_group_manager_id The instance group manager identifier
  # @param id The instance group manager policy identifier
  # @param instance_group_manager_policy_patch The instance group manager policy patch
  # @param [Hash] opts the optional parameters
  # @return [InstanceGroupManagerPolicy]
  describe 'update_instance_group_manager_policy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_instance_group_membership
  # Update specified instance group membership
  # This request updates an instance group membership with the information provided instance group membership patch.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param instance_group_id The instance group identifier
  # @param id The instance group membership identifier
  # @param instance_group_membership_patch The instance group membership patch
  # @param [Hash] opts the optional parameters
  # @return [InstanceGroupMembership]
  describe 'update_instance_group_membership test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
