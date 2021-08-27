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
# IBM OpenAPI SDK Code Generator Version: 3.37.0-a85661cd-20210802-190136
#
# Manage lifecycle of your Cloud resources using Resource Controller APIs. Resources are
# provisioned globally in an account scope. Supports asynchronous provisioning of
# resources. Enables consumption of a global resource through a Cloud Foundry space in any
# region.

require "concurrent"
require "erb"
require "json"
require "ibm_cloud_sdk_core"
require_relative "./common.rb"

module IBMCloud
  ##
  # The resource_controller V2 service.
  class ResourceControllerV2 < IBMCloudSdkCore::BaseService
    include Concurrent::Async
    DEFAULT_SERVICE_NAME = "resource_controller"
    DEFAULT_SERVICE_URL = "https://resource-controller.cloud.ibm.com"
    ##
    # @!method initialize(args)
    # Construct a new client for the resource_controller service.
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
    # Resource Instances
    #########################

    ##
    # @!method list_resource_instances(guid: nil, name: nil, resource_group_id: nil, resource_id: nil, resource_plan_id: nil, type: nil, sub_type: nil, limit: nil, start: nil, state: nil, updated_from: nil, updated_to: nil)
    # Get a list of all resource instances.
    # View a list of all available resource instances. Resources is a broad term that
    #   could mean anything from a service instance to a virtual machine associated with
    #   the customer account.
    # @param guid [String] The GUID of the instance.
    # @param name [String] The human-readable name of the instance.
    # @param resource_group_id [String] The ID of the resource group.
    # @param resource_id [String] The unique ID of the offering. This value is provided by and stored in the global
    #   catalog.
    # @param resource_plan_id [String] The unique ID of the plan associated with the offering. This value is provided by
    #   and stored in the global catalog.
    # @param type [String] The type of the instance, for example, `service_instance`.
    # @param sub_type [String] The sub-type of instance, for example, `kms`.
    # @param limit [Fixnum] Limit on how many items should be returned.
    # @param start [String] An optional token that indicates the beginning of the page of results to be
    #   returned. Any additional query parameters are ignored if a page token is present.
    #   If omitted, the first page of results is returned. This value is obtained from the
    #   'next_url' field of the operation response.
    # @param state [String] The state of the instance. If not specified, instances in state `active` and
    #   `provisioning` are returned.
    # @param updated_from [String] Start date inclusive filter.
    # @param updated_to [String] End date inclusive filter.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_resource_instances(guid: nil, name: nil, resource_group_id: nil, resource_id: nil, resource_plan_id: nil, type: nil, sub_type: nil, limit: nil, start: nil, state: nil, updated_from: nil, updated_to: nil)
      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "list_resource_instances")
      headers.merge!(sdk_headers)

      params = {
        "guid" => guid,
        "name" => name,
        "resource_group_id" => resource_group_id,
        "resource_id" => resource_id,
        "resource_plan_id" => resource_plan_id,
        "type" => type,
        "sub_type" => sub_type,
        "limit" => limit,
        "start" => start,
        "state" => state,
        "updated_from" => updated_from,
        "updated_to" => updated_to
      }

      method_url = "/v2/resource_instances"

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
    # @!method create_resource_instance(name:, target:, resource_group:, resource_plan_id:, tags: nil, allow_cleanup: nil, parameters: nil, entity_lock: nil)
    # Create (provision) a new resource instance.
    # When you provision a service you get an instance of that service. An instance
    #   represents the resource with which you create, and additionally, represents a
    #   chargeable record of which billing can occur.
    # @param name [String] The name of the instance. Must be 180 characters or less and cannot include any
    #   special characters other than `(space) - . _ :`.
    # @param target [String] The deployment location where the instance should be hosted.
    # @param resource_group [String] The ID of the resource group.
    # @param resource_plan_id [String] The unique ID of the plan associated with the offering. This value is provided by
    #   and stored in the global catalog.
    # @param tags [Array[String]] Tags that are attached to the instance after provisioning. These tags can be
    #   searched and managed through the Tagging API in IBM Cloud.
    # @param allow_cleanup [Boolean] A boolean that dictates if the resource instance should be deleted (cleaned up)
    #   during the processing of a region instance delete call.
    # @param parameters [Hash] Configuration options represented as key-value pairs that are passed through to
    #   the target resource brokers.
    # @param entity_lock [Boolean] Indicates if the resource instance is locked for further update or delete
    #   operations. It does not affect actions performed on child resources like aliases,
    #   bindings or keys. False by default.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def create_resource_instance(name:, target:, resource_group:, resource_plan_id:, tags: nil, allow_cleanup: nil, parameters: nil, entity_lock: nil)
      raise ArgumentError.new("name must be provided") if name.nil?

      raise ArgumentError.new("target must be provided") if target.nil?

      raise ArgumentError.new("resource_group must be provided") if resource_group.nil?

      raise ArgumentError.new("resource_plan_id must be provided") if resource_plan_id.nil?

      headers = {
        "Entity-Lock" => entity_lock
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "create_resource_instance")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "target" => target,
        "resource_group" => resource_group,
        "resource_plan_id" => resource_plan_id,
        "tags" => tags,
        "allow_cleanup" => allow_cleanup,
        "parameters" => parameters
      }

      method_url = "/v2/resource_instances"

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
    # @!method get_resource_instance(id:)
    # Get a resource instance.
    # Retrieve a resource instance by ID. Find more details on a particular instance,
    #   like when it was provisioned and who provisioned it.
    # @param id [String] The ID of the instance.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_resource_instance(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "get_resource_instance")
      headers.merge!(sdk_headers)

      method_url = "/v2/resource_instances/%s" % [ERB::Util.url_encode(id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method delete_resource_instance(id:, recursive: nil)
    # Delete a resource instance.
    # Delete a resource instance by ID. If the resource instance has any resource keys
    #   or aliases associated with it, use the `recursive=true parameter` to delete it.
    # @param id [String] The ID of the instance.
    # @param recursive [Boolean] Will delete resource bindings, keys and aliases associated with the instance.
    # @return [nil]
    def delete_resource_instance(id:, recursive: nil)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "delete_resource_instance")
      headers.merge!(sdk_headers)

      params = {
        "recursive" => recursive
      }

      method_url = "/v2/resource_instances/%s" % [ERB::Util.url_encode(id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        params: params,
        accept_json: false
      )
      nil
    end

    ##
    # @!method update_resource_instance(id:, name: nil, parameters: nil, resource_plan_id: nil, allow_cleanup: nil)
    # Update a resource instance.
    # You can use the ID to make updates to the resource instance, like changing the
    #   name or plan.
    # @param id [String] The ID of the instance.
    # @param name [String] The new name of the instance. Must be 180 characters or less and cannot include
    #   any special characters other than `(space) - . _ :`.
    # @param parameters [Hash] The new configuration options for the instance.
    # @param resource_plan_id [String] The unique ID of the plan associated with the offering. This value is provided by
    #   and stored in the global catalog.
    # @param allow_cleanup [Boolean] A boolean that dictates if the resource instance should be deleted (cleaned up)
    #   during the processing of a region instance delete call.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def update_resource_instance(id:, name: nil, parameters: nil, resource_plan_id: nil, allow_cleanup: nil)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "update_resource_instance")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "parameters" => parameters,
        "resource_plan_id" => resource_plan_id,
        "allow_cleanup" => allow_cleanup
      }

      method_url = "/v2/resource_instances/%s" % [ERB::Util.url_encode(id)]

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
    # @!method list_resource_aliases_for_instance(id:, limit: nil, start: nil)
    # Get a list of all resource aliases for the instance.
    # Retrieving a list of all resource aliases can help you find out who's using the
    #   resource instance.
    # @param id [String] The ID of the instance.
    # @param limit [Fixnum] Limit on how many items should be returned.
    # @param start [String] An optional token that indicates the beginning of the page of results to be
    #   returned. Any additional query parameters are ignored if a page token is present.
    #   If omitted, the first page of results is returned. This value is obtained from the
    #   'next_url' field of the operation response.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_resource_aliases_for_instance(id:, limit: nil, start: nil)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "list_resource_aliases_for_instance")
      headers.merge!(sdk_headers)

      params = {
        "limit" => limit,
        "start" => start
      }

      method_url = "/v2/resource_instances/%s/resource_aliases" % [ERB::Util.url_encode(id)]

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
    # @!method list_resource_keys_for_instance(id:, limit: nil, start: nil)
    # Get a list of all the resource keys for the instance.
    # You may have many resource keys for one resource instance. For example, you may
    #   have a different resource key for each user or each role.
    # @param id [String] The ID of the instance.
    # @param limit [Fixnum] Limit on how many items should be returned.
    # @param start [String] An optional token that indicates the beginning of the page of results to be
    #   returned. Any additional query parameters are ignored if a page token is present.
    #   If omitted, the first page of results is returned. This value is obtained from the
    #   'next_url' field of the operation response.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_resource_keys_for_instance(id:, limit: nil, start: nil)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "list_resource_keys_for_instance")
      headers.merge!(sdk_headers)

      params = {
        "limit" => limit,
        "start" => start
      }

      method_url = "/v2/resource_instances/%s/resource_keys" % [ERB::Util.url_encode(id)]

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
    # @!method lock_resource_instance(id:)
    # Lock a resource instance.
    # Locks a resource instance by ID. A locked instance can not be updated or deleted.
    #   It does not affect actions performed on child resources like aliases, bindings or
    #   keys.
    # @param id [String] The ID of the instance.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def lock_resource_instance(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "lock_resource_instance")
      headers.merge!(sdk_headers)

      method_url = "/v2/resource_instances/%s/lock" % [ERB::Util.url_encode(id)]

      response = request(
        method: "POST",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method unlock_resource_instance(id:)
    # Unlock a resource instance.
    # Unlock a resource instance to update or delete it. Unlocking a resource instance
    #   does not affect child resources like aliases, bindings or keys.
    # @param id [String] The ID of the instance.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def unlock_resource_instance(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "unlock_resource_instance")
      headers.merge!(sdk_headers)

      method_url = "/v2/resource_instances/%s/lock" % [ERB::Util.url_encode(id)]

      response = request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end
    #########################
    # Resource Keys
    #########################

    ##
    # @!method list_resource_keys(guid: nil, name: nil, resource_group_id: nil, resource_id: nil, limit: nil, start: nil, updated_from: nil, updated_to: nil)
    # Get a list of all of the resource keys.
    # View all of the resource keys that exist for all of your resource instances.
    # @param guid [String] The GUID of the key.
    # @param name [String] The human-readable name of the key.
    # @param resource_group_id [String] The ID of the resource group.
    # @param resource_id [String] The unique ID of the offering. This value is provided by and stored in the global
    #   catalog.
    # @param limit [Fixnum] Limit on how many items should be returned.
    # @param start [String] An optional token that indicates the beginning of the page of results to be
    #   returned. Any additional query parameters are ignored if a page token is present.
    #   If omitted, the first page of results is returned. This value is obtained from the
    #   'next_url' field of the operation response.
    # @param updated_from [String] Start date inclusive filter.
    # @param updated_to [String] End date inclusive filter.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_resource_keys(guid: nil, name: nil, resource_group_id: nil, resource_id: nil, limit: nil, start: nil, updated_from: nil, updated_to: nil)
      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "list_resource_keys")
      headers.merge!(sdk_headers)

      params = {
        "guid" => guid,
        "name" => name,
        "resource_group_id" => resource_group_id,
        "resource_id" => resource_id,
        "limit" => limit,
        "start" => start,
        "updated_from" => updated_from,
        "updated_to" => updated_to
      }

      method_url = "/v2/resource_keys"

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
    # @!method create_resource_key(name:, source:, parameters: nil, role: nil)
    # Create a new resource key.
    # A resource key is a saved credential you can use to authenticate with a resource
    #   instance.
    # @param name [String] The name of the key.
    # @param source [String] The ID of resource instance or alias.
    # @param parameters [ResourceKeyPostParameters] Configuration options represented as key-value pairs. Service defined options are
    #   passed through to the target resource brokers, whereas platform defined options
    #   are not.
    # @param role [String] The role name or it's CRN.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def create_resource_key(name:, source:, parameters: nil, role: nil)
      raise ArgumentError.new("name must be provided") if name.nil?

      raise ArgumentError.new("source must be provided") if source.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "create_resource_key")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "source" => source,
        "parameters" => parameters,
        "role" => role
      }

      method_url = "/v2/resource_keys"

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
    # @!method get_resource_key(id:)
    # Get resource key by ID.
    # View a resource key and all of its details, like the credentials for the key and
    #   who created it.
    # @param id [String] The ID of the key.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_resource_key(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "get_resource_key")
      headers.merge!(sdk_headers)

      method_url = "/v2/resource_keys/%s" % [ERB::Util.url_encode(id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method delete_resource_key(id:)
    # Delete a resource key by ID.
    # Deleting a resource key does not affect any resource instance or resource alias
    #   associated with the key.
    # @param id [String] The ID of the key.
    # @return [nil]
    def delete_resource_key(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "delete_resource_key")
      headers.merge!(sdk_headers)

      method_url = "/v2/resource_keys/%s" % [ERB::Util.url_encode(id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: false
      )
      nil
    end

    ##
    # @!method update_resource_key(id:, name:)
    # Update a resource key.
    # Use the resource key ID to update the name of the resource key.
    # @param id [String] The ID of the key.
    # @param name [String] The new name of the key. Must be 180 characters or less and cannot include any
    #   special characters other than `(space) - . _ :`.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def update_resource_key(id:, name:)
      raise ArgumentError.new("id must be provided") if id.nil?

      raise ArgumentError.new("name must be provided") if name.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "update_resource_key")
      headers.merge!(sdk_headers)

      data = {
        "name" => name
      }

      method_url = "/v2/resource_keys/%s" % [ERB::Util.url_encode(id)]

      response = request(
        method: "PATCH",
        url: method_url,
        headers: headers,
        json: data,
        accept_json: true
      )
      response
    end
    #########################
    # Resource Bindings
    #########################

    ##
    # @!method list_resource_bindings(guid: nil, name: nil, resource_group_id: nil, resource_id: nil, region_binding_id: nil, limit: nil, start: nil, updated_from: nil, updated_to: nil)
    # Get a list of all resource bindings.
    # View all of the resource bindings that exist for all of your resource aliases.
    # @param guid [String] The GUID of the binding.
    # @param name [String] The human-readable name of the binding.
    # @param resource_group_id [String] The ID of the resource group.
    # @param resource_id [String] The unique ID of the offering (service name). This value is provided by and stored
    #   in the global catalog.
    # @param region_binding_id [String] The ID of the binding in the target environment. For example, `service_binding_id`
    #   in a given IBM Cloud environment.
    # @param limit [Fixnum] Limit on how many items should be returned.
    # @param start [String] An optional token that indicates the beginning of the page of results to be
    #   returned. Any additional query parameters are ignored if a page token is present.
    #   If omitted, the first page of results is returned. This value is obtained from the
    #   'next_url' field of the operation response.
    # @param updated_from [String] Start date inclusive filter.
    # @param updated_to [String] End date inclusive filter.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_resource_bindings(guid: nil, name: nil, resource_group_id: nil, resource_id: nil, region_binding_id: nil, limit: nil, start: nil, updated_from: nil, updated_to: nil)
      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "list_resource_bindings")
      headers.merge!(sdk_headers)

      params = {
        "guid" => guid,
        "name" => name,
        "resource_group_id" => resource_group_id,
        "resource_id" => resource_id,
        "region_binding_id" => region_binding_id,
        "limit" => limit,
        "start" => start,
        "updated_from" => updated_from,
        "updated_to" => updated_to
      }

      method_url = "/v2/resource_bindings"

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
    # @!method create_resource_binding(source:, target:, name: nil, parameters: nil, role: nil)
    # Create a new resource binding.
    # A resource binding connects credentials to a resource alias. The credentials are
    #   in the form of a resource key.
    # @param source [String] The ID of resource alias.
    # @param target [String] The CRN of application to bind to in a specific environment, for example, Dallas
    #   YP, CFEE instance.
    # @param name [String] The name of the binding. Must be 180 characters or less and cannot include any
    #   special characters other than `(space) - . _ :`.
    # @param parameters [ResourceBindingPostParameters] Configuration options represented as key-value pairs. Service defined options are
    #   passed through to the target resource brokers, whereas platform defined options
    #   are not.
    # @param role [String] The role name or it's CRN.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def create_resource_binding(source:, target:, name: nil, parameters: nil, role: nil)
      raise ArgumentError.new("source must be provided") if source.nil?

      raise ArgumentError.new("target must be provided") if target.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "create_resource_binding")
      headers.merge!(sdk_headers)

      data = {
        "source" => source,
        "target" => target,
        "name" => name,
        "parameters" => parameters,
        "role" => role
      }

      method_url = "/v2/resource_bindings"

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
    # @!method get_resource_binding(id:)
    # Get a resource binding.
    # View a resource binding and all of its details, like who created it, the
    #   credential, and the resource alias that the binding is associated with.
    # @param id [String] The ID of the binding.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_resource_binding(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "get_resource_binding")
      headers.merge!(sdk_headers)

      method_url = "/v2/resource_bindings/%s" % [ERB::Util.url_encode(id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method delete_resource_binding(id:)
    # Delete a resource binding.
    # Deleting a resource binding does not affect the resource alias that the binding is
    #   associated with.
    # @param id [String] The ID of the binding.
    # @return [nil]
    def delete_resource_binding(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "delete_resource_binding")
      headers.merge!(sdk_headers)

      method_url = "/v2/resource_bindings/%s" % [ERB::Util.url_encode(id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: false
      )
      nil
    end

    ##
    # @!method update_resource_binding(id:, name:)
    # Update a resource binding.
    # Use the resource binding ID to update the name of the resource binding.
    # @param id [String] The ID of the binding.
    # @param name [String] The new name of the binding. Must be 180 characters or less and cannot include any
    #   special characters other than `(space) - . _ :`.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def update_resource_binding(id:, name:)
      raise ArgumentError.new("id must be provided") if id.nil?

      raise ArgumentError.new("name must be provided") if name.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "update_resource_binding")
      headers.merge!(sdk_headers)

      data = {
        "name" => name
      }

      method_url = "/v2/resource_bindings/%s" % [ERB::Util.url_encode(id)]

      response = request(
        method: "PATCH",
        url: method_url,
        headers: headers,
        json: data,
        accept_json: true
      )
      response
    end
    #########################
    # Resource Aliases
    #########################

    ##
    # @!method list_resource_aliases(guid: nil, name: nil, resource_instance_id: nil, region_instance_id: nil, resource_id: nil, resource_group_id: nil, limit: nil, start: nil, updated_from: nil, updated_to: nil)
    # Get a list of all resource aliases.
    # View all of the resource aliases that exist for every resource instance.
    # @param guid [String] The GUID of the alias.
    # @param name [String] The human-readable name of the alias.
    # @param resource_instance_id [String] The ID of the resource instance.
    # @param region_instance_id [String] The ID of the instance in the target environment. For example,
    #   `service_instance_id` in a given IBM Cloud environment.
    # @param resource_id [String] The unique ID of the offering (service name). This value is provided by and stored
    #   in the global catalog.
    # @param resource_group_id [String] The ID of the resource group.
    # @param limit [Fixnum] Limit on how many items should be returned.
    # @param start [String] An optional token that indicates the beginning of the page of results to be
    #   returned. Any additional query parameters are ignored if a page token is present.
    #   If omitted, the first page of results is returned. This value is obtained from the
    #   'next_url' field of the operation response.
    # @param updated_from [String] Start date inclusive filter.
    # @param updated_to [String] End date inclusive filter.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_resource_aliases(guid: nil, name: nil, resource_instance_id: nil, region_instance_id: nil, resource_id: nil, resource_group_id: nil, limit: nil, start: nil, updated_from: nil, updated_to: nil)
      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "list_resource_aliases")
      headers.merge!(sdk_headers)

      params = {
        "guid" => guid,
        "name" => name,
        "resource_instance_id" => resource_instance_id,
        "region_instance_id" => region_instance_id,
        "resource_id" => resource_id,
        "resource_group_id" => resource_group_id,
        "limit" => limit,
        "start" => start,
        "updated_from" => updated_from,
        "updated_to" => updated_to
      }

      method_url = "/v2/resource_aliases"

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
    # @!method create_resource_alias(name:, source:, target:)
    # Create a new resource alias.
    # Alias a resource instance into a targeted environment's (name)space.
    # @param name [String] The name of the alias. Must be 180 characters or less and cannot include any
    #   special characters other than `(space) - . _ :`.
    # @param source [String] The ID of resource instance.
    # @param target [String] The CRN of target name(space) in a specific environment, for example, space in
    #   Dallas YP, CFEE instance etc.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def create_resource_alias(name:, source:, target:)
      raise ArgumentError.new("name must be provided") if name.nil?

      raise ArgumentError.new("source must be provided") if source.nil?

      raise ArgumentError.new("target must be provided") if target.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "create_resource_alias")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "source" => source,
        "target" => target
      }

      method_url = "/v2/resource_aliases"

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
    # @!method get_resource_alias(id:)
    # Get a resource alias.
    # View a resource alias and all of its details, like who created it and the resource
    #   instance that it's associated with.
    # @param id [String] The ID of the alias.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_resource_alias(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "get_resource_alias")
      headers.merge!(sdk_headers)

      method_url = "/v2/resource_aliases/%s" % [ERB::Util.url_encode(id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method delete_resource_alias(id:)
    # Delete a resource alias.
    # If the resource alias has any resource keys or bindings associated with it, you
    #   must delete those child resources before deleting the resource alias.
    # @param id [String] The ID of the alias.
    # @return [nil]
    def delete_resource_alias(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "delete_resource_alias")
      headers.merge!(sdk_headers)

      method_url = "/v2/resource_aliases/%s" % [ERB::Util.url_encode(id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: false
      )
      nil
    end

    ##
    # @!method update_resource_alias(id:, name:)
    # Update a resource alias.
    # Use the resource alias ID to update the name of the resource alias.
    # @param id [String] The ID of the alias.
    # @param name [String] The new name of the alias. Must be 180 characters or less and cannot include any
    #   special characters other than `(space) - . _ :`.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def update_resource_alias(id:, name:)
      raise ArgumentError.new("id must be provided") if id.nil?

      raise ArgumentError.new("name must be provided") if name.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "update_resource_alias")
      headers.merge!(sdk_headers)

      data = {
        "name" => name
      }

      method_url = "/v2/resource_aliases/%s" % [ERB::Util.url_encode(id)]

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
    # @!method list_resource_bindings_for_alias(id:, limit: nil, start: nil)
    # Get a list of all resource bindings for the alias.
    # View all of the resource bindings associated with a specific resource alias.
    # @param id [String] The ID of the alias.
    # @param limit [Fixnum] Limit on how many items should be returned.
    # @param start [String] An optional token that indicates the beginning of the page of results to be
    #   returned. Any additional query parameters are ignored if a page token is present.
    #   If omitted, the first page of results is returned. This value is obtained from the
    #   'next_url' field of the operation response.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_resource_bindings_for_alias(id:, limit: nil, start: nil)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "list_resource_bindings_for_alias")
      headers.merge!(sdk_headers)

      params = {
        "limit" => limit,
        "start" => start
      }

      method_url = "/v2/resource_aliases/%s/resource_bindings" % [ERB::Util.url_encode(id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        params: params,
        accept_json: true
      )
      response
    end
    #########################
    # Resource Reclamations
    #########################

    ##
    # @!method list_reclamations(account_id: nil, resource_instance_id: nil)
    # Get a list of all reclamations.
    # View all of the resource reclamations that exist for every resource instance.
    # @param account_id [String] An alpha-numeric value identifying the account ID.
    # @param resource_instance_id [String] The ID of the resource instance.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_reclamations(account_id: nil, resource_instance_id: nil)
      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "list_reclamations")
      headers.merge!(sdk_headers)

      params = {
        "account_id" => account_id,
        "resource_instance_id" => resource_instance_id
      }

      method_url = "/v1/reclamations"

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
    # @!method run_reclamation_action(id:, action_name:, request_by: nil, comment: nil)
    # Perform a reclamation action.
    # Reclaim a resource instance so that it can no longer be used, or restore the
    #   resource instance so that it's usable again.
    # @param id [String] The ID associated with the reclamation.
    # @param action_name [String] The reclamation action name. Specify `reclaim` to delete a resource, or `restore`
    #   to restore a resource.
    # @param request_by [String] The request initiator, if different from the request token.
    # @param comment [String] A comment to describe the action.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def run_reclamation_action(id:, action_name:, request_by: nil, comment: nil)
      raise ArgumentError.new("id must be provided") if id.nil?

      raise ArgumentError.new("action_name must be provided") if action_name.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("resource_controller", "V2", "run_reclamation_action")
      headers.merge!(sdk_headers)

      data = {
        "request_by" => request_by,
        "comment" => comment
      }

      method_url = "/v1/reclamations/%s/actions/%s" % [ERB::Util.url_encode(id), ERB::Util.url_encode(action_name)]

      response = request(
        method: "POST",
        url: method_url,
        headers: headers,
        json: data,
        accept_json: true
      )
      response
    end
  end
end
