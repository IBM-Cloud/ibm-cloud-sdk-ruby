# frozen_string_literal: true

# (C) Copyright IBM Corp. 2021.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# IBM OpenAPI SDK Code Generator Version: 3.30.0-bd714324-20210406-200538
#
# Manage lifecycle of your Cloud resource groups using Resource Manager APIs.

require "concurrent"
require "erb"
require "json"
require "ibm_cloud_sdk_core"
require_relative "./common.rb"

module IbmCloudResourceController
  ##
  # The Resource Manager V2 service.
  class ResourceManagerV2 < IBMCloudSdkCore::BaseService
    include Concurrent::Async
    DEFAULT_SERVICE_NAME = "resource_manager"
    DEFAULT_SERVICE_URL = "https://resource-controller.cloud.ibm.com/v2"
    ##
    # @!method initialize(args)
    # Construct a new client for the Resource Manager service.
    #
    # @param args [Hash] The args to initialize with
    # @option args service_url [String] The base service URL to use when contacting the service.
    #   The base service_url may differ between IBM Cloud regions.
    # @option args authenticator [Object] The Authenticator instance to be configured for this service.
    # @option args service_name [String] The name of the service to configure. Will be used as the key to load
    #   any external configuration, if applicable.
    def initialize(args = {})
      @__async_initialized__ = false
      defaults = {}
      defaults[:service_url] = DEFAULT_SERVICE_URL
      defaults[:service_name] = DEFAULT_SERVICE_NAME
      defaults[:authenticator] = nil
      user_service_url = args[:service_url] unless args[:service_url].nil?
      args = defaults.merge(args)
      super
      @service_url = user_service_url unless user_service_url.nil?
    end

    #########################
    # Resource Group
    #########################

    ##
    # @!method list_resource_groups(account_id: nil, date: nil, name: nil, default: nil, include_deleted: nil)
    # Get a list of all resource groups.
    # Call this method to retrieve information about all resource groups and associated
    #   quotas in an account. The `id` returned in the response can be used to [create a
    #   resource instance
    #   later](https://cloud.ibm.com/apidocs/resource-controller/resource-controller?code=java#create-resource-instance).
    #   The response can be filtered based on queryParams such as `account_id`, `name`,
    #   `default`, and more to narrow your search.
    # @param account_id [String] The ID of the account that contains the resource groups that you want to get.
    # @param date [String] The date in the format of YYYY-MM which returns resource groups. Deleted resource
    #   groups will be excluded before this month.
    # @param name [String] The name of the resource group.
    # @param default [Boolean] Boolean value to specify whether or not to list default resource groups.
    # @param include_deleted [Boolean] Boolean value to specify whether or not to list default resource groups.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_resource_groups(account_id: nil, date: nil, name: nil, default: nil, include_deleted: nil)
      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_manager", "V2", "list_resource_groups")
      headers.merge!(sdk_headers)

      params = {
        "account_id" => account_id,
        "date" => date,
        "name" => name,
        "default" => default,
        "include_deleted" => include_deleted
      }

      method_url = "/resource_groups"

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        params: params,
        accept_json: true
      )
      response
    end

    ##
    # @!method create_resource_group(name: nil, account_id: nil)
    # Create a resource group.
    # Create a resource group in an account to organize your account resources in
    #   customizable groupings so that you can quickly assign users access to more than
    #   one resource at a time. To learn what makes a good resource group strategy, see
    #   [Best practices for organizing
    #   resources](https://cloud.ibm.com/docs/account?topic=account-account_setup). A
    #   default resource group is created when an account is created. If you have a Lite
    #   account or 30-day trial, you cannot create extra resource groups, but you can
    #   rename your default resource group. If you have a Pay-As-You-Go or Subscription
    #   account, you can create multiple resource groups. You must be assigned an IAM
    #   policy with the Administrator role on All Account Management services to create
    #   extra resource groups.
    # @param name [String] The new name of the resource group.
    # @param account_id [String] The account id of the resource group.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def create_resource_group(name: nil, account_id: nil)
      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_manager", "V2", "create_resource_group")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "account_id" => account_id
      }

      method_url = "/resource_groups"

      response = request(
        method: "POST",
        url: method_url,
        headers: headers,
        json: data,
        accept_json: true
      )
      response
    end

    ##
    # @!method get_resource_group(id:)
    # Get a resource group.
    # Retrieve a resource group by alias ID. Call this method to get details about a
    #   particular resource group, like the name of the resource group, associated quotas,
    #   whether the state is active, the resource group ID and the CRN. The `id` returned
    #   in the response can be used to [create a resource instance
    #   later](https://cloud.ibm.com/apidocs/resource-controller/resource-controller?code=java#create-resource-instance).
    # @param id [String] The short or long ID of the alias.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_resource_group(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_manager", "V2", "get_resource_group")
      headers.merge!(sdk_headers)

      method_url = "/resource_groups/%s" % [ERB::Util.url_encode(id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method update_resource_group(id:, name: nil, state: nil)
    # Update a resource group.
    # Update a resource group by the alias ID. Call this method to update information
    #   about an existing resource group. You can rename a resource group and activate or
    #   suspend a particular resource group. To update a resource group, users need to be
    #   assigned with IAM policies with the Editor role or higher.
    # @param id [String] The short or long ID of the alias.
    # @param name [String] The new name of the resource group.
    # @param state [String] The state of the resource group.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def update_resource_group(id:, name: nil, state: nil)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_manager", "V2", "update_resource_group")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "state" => state
      }

      method_url = "/resource_groups/%s" % [ERB::Util.url_encode(id)]

      response = request(
        method: "PATCH",
        url: method_url,
        headers: headers,
        json: data,
        accept_json: true
      )
      response
    end

    ##
    # @!method delete_resource_group(id:)
    # Delete a resource group.
    # Delete a resource group by the alias ID. You can delete a resource group only if
    #   the targeted resource group does not contain any resources or if it is not a
    #   default resource group. When a user creates an account, a default resource group
    #   is created in the account. If you want to delete a resource group that contains
    #   resources, first [delete the resource
    #   instances](https://cloud.ibm.com/apidocs/resource-controller/resource-controller?code=java#delete-resource-instance).
    #   Then, delete the resource group when all resource instances in the group are
    #   deleted.
    # @param id [String] The short or long ID of the alias.
    # @return [nil]
    def delete_resource_group(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_manager", "V2", "delete_resource_group")
      headers.merge!(sdk_headers)

      method_url = "/resource_groups/%s" % [ERB::Util.url_encode(id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: false
      )
      nil
    end
    #########################
    # Quota Definition
    #########################

    ##
    # @!method list_quota_definitions
    # List quota definitions.
    # Get a list of all quota definitions. Quotas for a resource group limit the number
    #   of apps, instances, and memory allowed for that specific resource group. Each
    #   resource group that you have on your account has a specific set of quotas.
    #   Standard quotas are for resource groups that are created by users with a Lite
    #   account, and Pay-As-You-Go quotas are for resource groups that are created with a
    #   Pay-As-You-Go account. This method provides list of all available quota
    #   definitions.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_quota_definitions
      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_manager", "V2", "list_quota_definitions")
      headers.merge!(sdk_headers)

      method_url = "/quota_definitions"

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method get_quota_definition(id:)
    # Get a quota definition.
    # Call this method to retrieve information about a particular quota by passing the
    #   quota ID. The response can be used to identify the quota type, Standard or Paid.
    #   Information about available resources, such as number of apps, number of service
    #   instances, and memory, are returned in the response. Quotas for a resource group
    #   limit the number of apps, instances, and memory allowed for that specific resource
    #   group. Each resource group that you have on your account has a specific set of
    #   quotas. Standard quotas are for resource groups that are created by users with a
    #   Lite account, and Pay-As-You-Go quotas are for resource groups that are created
    #   with a Pay-As-You-Go account.
    # @param id [String] The id of the quota.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_quota_definition(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_manager", "V2", "get_quota_definition")
      headers.merge!(sdk_headers)

      method_url = "/quota_definitions/%s" % [ERB::Util.url_encode(id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end
  end
end
