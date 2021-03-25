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
# IBM OpenAPI SDK Code Generator Version: 3.29.1-b338fb38-20210313-010605
#
# Manage lifecycle of your Cloud resource groups using Resource Manager APIs.

require "concurrent"
require "erb"
require "json"
require "ibm_cloud_sdk_core"
require_relative "./common.rb"

module IbmCloudResourceManager
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
    # Get a list of all resource groups in an account.
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
    # Create a new resource group.
    # Create a new resource group in an account.
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
    # Retrieve a resource group by ID.
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
    # Update a resource group by ID.
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
    # Delete a resource group by ID.
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
    # Get a list of all quota definitions.
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
    # Get a a quota definition.
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
