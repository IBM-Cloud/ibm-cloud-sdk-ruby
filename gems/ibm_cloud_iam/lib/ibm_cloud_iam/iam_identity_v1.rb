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
# The IAM Identity Service API allows for the management of Account Settings and
# Identities (Service IDs, ApiKeys).

require "concurrent"
require "erb"
require "json"
require "ibm_cloud_sdk_core"
require_relative "./common.rb"

module IbmCloudIam
  ##
  # The iam_identity V1 service.
  class IamIdentityV1 < IBMCloudSdkCore::BaseService
    include Concurrent::Async
    DEFAULT_SERVICE_NAME = "iam_identity"
    DEFAULT_SERVICE_URL = "https://iam.cloud.ibm.com"
    ##
    # @!method initialize(args)
    # Construct a new client for the iam_identity service.
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
    # API key Operations
    #########################

    ##
    # @!method list_api_keys(account_id: nil, iam_id: nil, pagesize: nil, pagetoken: nil, scope: nil, type: nil, sort: nil, order: nil, include_history: nil)
    # Get API keys for a given service or user IAM ID and account ID.
    # Returns the list of API key details for a given service or user IAM ID and account
    #   ID. Users can manage user API keys for themself, or service ID API keys for
    #   service IDs that are bound to an entity they have access to. In case of  service
    #   IDs and their API keys, a user must be either an account owner,  a IBM Cloud org
    #   manager or IBM Cloud space developer in order to manage  service IDs of the
    #   entity.
    # @param account_id [String] Account ID of the API keys(s) to query. If a service IAM ID is specified in iam_id
    #   then account_id must match the account of the IAM ID. If a user IAM ID is
    #   specified in iam_id then then account_id must match the account of the
    #   Authorization token.
    # @param iam_id [String] IAM ID of the API key(s) to be queried. The IAM ID may be that of a user or a
    #   service. For a user IAM ID iam_id must match the Authorization token.
    # @param pagesize [Fixnum] Optional size of a single page. Default is 20 items per page. Valid range is 1 to
    #   100.
    # @param pagetoken [String] Optional Prev or Next page token returned from a previous query execution. Default
    #   is start with first page.
    # @param scope [String] Optional parameter to define the scope of the queried API Keys. Can be 'entity'
    #   (default) or 'account'.
    # @param type [String] Optional parameter to filter the type of the queried API Keys. Can be 'user' or
    #   'serviceid'.
    # @param sort [String] Optional sort property, valid values are name, description, created_at and
    #   created_by. If specified, the items are sorted by the value of this property.
    # @param order [String] Optional sort order, valid values are asc and desc. Default: asc.
    # @param include_history [Boolean] Defines if the entity history is included in the response.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_api_keys(account_id: nil, iam_id: nil, pagesize: nil, pagetoken: nil, scope: nil, type: nil, sort: nil, order: nil, include_history: nil)
      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "list_api_keys")
      headers.merge!(sdk_headers)

      params = {
        "account_id" => account_id,
        "iam_id" => iam_id,
        "pagesize" => pagesize,
        "pagetoken" => pagetoken,
        "scope" => scope,
        "type" => type,
        "sort" => sort,
        "order" => order,
        "include_history" => include_history
      }

      method_url = "/v1/apikeys"

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
    # @!method create_api_key(name:, iam_id:, description: nil, account_id: nil, apikey: nil, store_value: nil, entity_lock: nil)
    # Create an API key.
    # Creates an API key for a UserID or service ID. Users can manage user API keys for
    #   themself, or service ID API keys for  service IDs that are bound to an entity they
    #   have access to.
    # @param name [String] Name of the API key. The name is not checked for uniqueness. Therefore multiple
    #   names with the same value can exist. Access is done via the UUID of the API key.
    # @param iam_id [String] The iam_id that this API key authenticates.
    # @param description [String] The optional description of the API key. The 'description' property is only
    #   available if a description was provided during a create of an API key.
    # @param account_id [String] The account ID of the API key.
    # @param apikey [String] You can optionally passthrough the API key value for this API key. If passed, NO
    #   validation of that apiKey value is done, i.e. the value can be non-URL safe. If
    #   omitted, the API key management will create an URL safe opaque API key value. The
    #   value of the API key is checked for uniqueness. Please ensure enough variations
    #   when passing in this value.
    # @param store_value [Boolean] Send true or false to set whether the API key value is retrievable in the future
    #   by using the Get details of an API key request. If you create an API key for a
    #   user, you must specify `false` or omit the value. We don't allow storing of API
    #   keys for users.
    # @param entity_lock [String] Indicates if the API key is locked for further write operations. False by default.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def create_api_key(name:, iam_id:, description: nil, account_id: nil, apikey: nil, store_value: nil, entity_lock: nil)
      raise ArgumentError.new("name must be provided") if name.nil?

      raise ArgumentError.new("iam_id must be provided") if iam_id.nil?

      headers = {
        "Entity-Lock" => entity_lock
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "create_api_key")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "iam_id" => iam_id,
        "description" => description,
        "account_id" => account_id,
        "apikey" => apikey,
        "store_value" => store_value
      }

      method_url = "/v1/apikeys"

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
    # @!method get_api_keys_details(iam_api_key: nil, include_history: nil)
    # Get details of an API key by its value.
    # Returns the details of an API key by its value. Users can manage user API keys for
    #   themself, or service ID API keys  for service IDs that are bound to an entity they
    #   have access to.
    # @param iam_api_key [String] API key value.
    # @param include_history [Boolean] Defines if the entity history is included in the response.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_api_keys_details(iam_api_key: nil, include_history: nil)
      headers = {
        "IAM-ApiKey" => iam_api_key
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "get_api_keys_details")
      headers.merge!(sdk_headers)

      params = {
        "include_history" => include_history
      }

      method_url = "/v1/apikeys/details"

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
    # @!method get_api_key(id:, include_history: nil)
    # Get details of an API key.
    # Returns the details of an API key. Users can manage user API keys for themself, or
    #   service ID API keys for  service IDs that are bound to an entity they have access
    #   to. In case of  service IDs and their API keys, a user must be either an account
    #   owner,  a IBM Cloud org manager or IBM Cloud space developer in order to manage
    #   service IDs of the entity.
    # @param id [String] Unique ID of the API key.
    # @param include_history [Boolean] Defines if the entity history is included in the response.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_api_key(id:, include_history: nil)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "get_api_key")
      headers.merge!(sdk_headers)

      params = {
        "include_history" => include_history
      }

      method_url = "/v1/apikeys/%s" % [ERB::Util.url_encode(id)]

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
    # @!method update_api_key(id:, if_match:, name: nil, description: nil)
    # Updates an API key.
    # Updates properties of an API key. This does NOT affect existing access tokens.
    #   Their token content will stay unchanged until the access token is refreshed. To
    #   update an API key, pass the property to be modified. To delete one property's
    #   value, pass the property with an empty value "".Users can manage user API keys for
    #   themself, or service ID API keys for service IDs that are bound to an entity they
    #   have access to.
    # @param id [String] Unique ID of the API key to be updated.
    # @param if_match [String] Version of the API key to be updated. Specify the version that you retrieved when
    #   reading the API key. This value  helps identifying parallel usage of this API.
    #   Pass * to indicate to update any version available. This might result in stale
    #   updates.
    # @param name [String] The name of the API key to update. If specified in the request the parameter must
    #   not be empty. The name is not checked for uniqueness. Failure to this will result
    #   in an Error condition.
    # @param description [String] The description of the API key to update. If specified an empty description will
    #   clear the description of the API key. If a non empty value is provided the API key
    #   will be updated.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def update_api_key(id:, if_match:, name: nil, description: nil)
      raise ArgumentError.new("id must be provided") if id.nil?

      raise ArgumentError.new("if_match must be provided") if if_match.nil?

      headers = {
        "If-Match" => if_match
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "update_api_key")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "description" => description
      }

      method_url = "/v1/apikeys/%s" % [ERB::Util.url_encode(id)]

      response = request(
        method: "PUT",
        url: method_url,
        headers: headers,
        json: data,
        accept_json: true
      )
      response
    end

    ##
    # @!method delete_api_key(id:)
    # Deletes an API key.
    # Deletes an API key. Existing tokens will remain valid until expired. Users can
    #   manage user API keys for themself, or service ID API  keys for service IDs that
    #   are bound to an entity they have access  to.
    # @param id [String] Unique ID of the API key.
    # @return [nil]
    def delete_api_key(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "delete_api_key")
      headers.merge!(sdk_headers)

      method_url = "/v1/apikeys/%s" % [ERB::Util.url_encode(id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      nil
    end

    ##
    # @!method lock_api_key(id:)
    # Lock the API key.
    # Locks an API key by ID. Users can manage user API keys for themself, or service ID
    #   API keys for service IDs that are bound to an entity they have access to. In case
    #   of service IDs and their API keys, a user must be either an account owner, a IBM
    #   Cloud org manager or IBM Cloud space developer in order to manage service IDs of
    #   the entity.
    # @param id [String] Unique ID of the API key.
    # @return [nil]
    def lock_api_key(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "lock_api_key")
      headers.merge!(sdk_headers)

      method_url = "/v1/apikeys/%s/lock" % [ERB::Util.url_encode(id)]

      request(
        method: "POST",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      nil
    end

    ##
    # @!method unlock_api_key(id:)
    # Unlock the API key.
    # Unlocks an API key by ID. Users can manage user API keys for themself, or service
    #   ID API keys for service IDs that are bound to an entity they have access to. In
    #   case of service IDs and their API keys, a user must be either an account owner, a
    #   IBM Cloud org manager or IBM Cloud space developer in order to manage service IDs
    #   of the entity.
    # @param id [String] Unique ID of the API key.
    # @return [nil]
    def unlock_api_key(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "unlock_api_key")
      headers.merge!(sdk_headers)

      method_url = "/v1/apikeys/%s/lock" % [ERB::Util.url_encode(id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      nil
    end
    #########################
    # Service ID Operations
    #########################

    ##
    # @!method list_service_ids(account_id: nil, name: nil, pagesize: nil, pagetoken: nil, sort: nil, order: nil, include_history: nil)
    # List service IDs.
    # Returns a list of service IDs. Users can manage user API keys for themself, or
    #   service ID API keys for service IDs that are bound to an entity they have access
    #   to. Note: apikey details are only included in the response when  creating a
    #   Service ID with an apikey.
    # @param account_id [String] Account ID of the service ID(s) to query. This parameter is required (unless using
    #   a pagetoken).
    # @param name [String] Name of the service ID(s) to query. Optional.20 items per page. Valid range is 1
    #   to 100.
    # @param pagesize [Fixnum] Optional size of a single page. Default is 20 items per page. Valid range is 1 to
    #   100.
    # @param pagetoken [String] Optional Prev or Next page token returned from a previous query execution. Default
    #   is start with first page.
    # @param sort [String] Optional sort property, valid values are name, description, created_at and
    #   modified_at. If specified, the items are sorted by the value of this property.
    # @param order [String] Optional sort order, valid values are asc and desc. Default: asc.
    # @param include_history [Boolean] Defines if the entity history is included in the response.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_service_ids(account_id: nil, name: nil, pagesize: nil, pagetoken: nil, sort: nil, order: nil, include_history: nil)
      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "list_service_ids")
      headers.merge!(sdk_headers)

      params = {
        "account_id" => account_id,
        "name" => name,
        "pagesize" => pagesize,
        "pagetoken" => pagetoken,
        "sort" => sort,
        "order" => order,
        "include_history" => include_history
      }

      method_url = "/v1/serviceids/"

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
    # @!method create_service_id(account_id:, name:, description: nil, unique_instance_crns: nil, apikey: nil, entity_lock: nil)
    # Create a service ID.
    # Creates a service ID for an IBM Cloud account. Users can manage user API keys for
    #   themself, or service ID API keys for service IDs that are bound to an entity they
    #   have access to.
    # @param account_id [String] ID of the account the service ID belongs to.
    # @param name [String] Name of the Service Id. The name is not checked for uniqueness. Therefore multiple
    #   names with the same value can exist. Access is done via the UUID of the Service
    #   Id.
    # @param description [String] The optional description of the Service Id. The 'description' property is only
    #   available if a description was provided during a create of a Service Id.
    # @param unique_instance_crns [Array[String]] Optional list of CRNs (string array) which point to the services connected to the
    #   service ID.
    # @param apikey [ApiKeyInsideCreateServiceIdRequest] Parameters for the API key in the Create service Id V1 REST request.
    # @param entity_lock [String] Indicates if the service ID is locked for further write operations. False by
    #   default.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def create_service_id(account_id:, name:, description: nil, unique_instance_crns: nil, apikey: nil, entity_lock: nil)
      raise ArgumentError.new("account_id must be provided") if account_id.nil?

      raise ArgumentError.new("name must be provided") if name.nil?

      headers = {
        "Entity-Lock" => entity_lock
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "create_service_id")
      headers.merge!(sdk_headers)

      data = {
        "account_id" => account_id,
        "name" => name,
        "description" => description,
        "unique_instance_crns" => unique_instance_crns,
        "apikey" => apikey
      }

      method_url = "/v1/serviceids/"

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
    # @!method get_service_id(id:, include_history: nil)
    # Get details of a service ID.
    # Returns the details of a service ID. Users can manage user API keys for themself,
    #   or service ID API keys for service IDs that are bound to an entity they have
    #   access to. Note: apikey details are only included in the response when  creating a
    #   Service ID with an apikey.
    # @param id [String] Unique ID of the service ID.
    # @param include_history [Boolean] Defines if the entity history is included in the response.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_service_id(id:, include_history: nil)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "get_service_id")
      headers.merge!(sdk_headers)

      params = {
        "include_history" => include_history
      }

      method_url = "/v1/serviceids/%s" % [ERB::Util.url_encode(id)]

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
    # @!method update_service_id(id:, if_match:, name: nil, description: nil, unique_instance_crns: nil)
    # Update service ID.
    # Updates properties of a service ID. This does NOT affect existing access tokens.
    #   Their token content will stay unchanged until the access token is refreshed. To
    #   update a service ID, pass the property to be modified. To delete one property's
    #   value, pass the property with an empty value "".Users can manage user API keys for
    #   themself, or service ID API keys for service IDs that are bound to an entity they
    #   have access to.   Note: apikey details are only included in the response when
    #   creating a  Service ID with an apikey.
    # @param id [String] Unique ID of the service ID to be updated.
    # @param if_match [String] Version of the service ID to be updated. Specify the version that you retrieved as
    #   entity_tag (ETag header) when reading the service ID. This value helps identifying
    #   parallel usage of this API. Pass * to indicate to update any version available.
    #   This might result in stale updates.
    # @param name [String] The name of the service ID to update. If specified in the request the parameter
    #   must not be empty. The name is not checked for uniqueness. Failure to this will
    #   result in an Error condition.
    # @param description [String] The description of the service ID to update. If specified an empty description
    #   will clear the description of the service ID. If an non empty value is provided
    #   the service ID will be updated.
    # @param unique_instance_crns [Array[String]] List of CRNs which point to the services connected to this service ID. If
    #   specified an empty list will clear all existing unique instance crns of the
    #   service ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def update_service_id(id:, if_match:, name: nil, description: nil, unique_instance_crns: nil)
      raise ArgumentError.new("id must be provided") if id.nil?

      raise ArgumentError.new("if_match must be provided") if if_match.nil?

      headers = {
        "If-Match" => if_match
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "update_service_id")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "description" => description,
        "unique_instance_crns" => unique_instance_crns
      }

      method_url = "/v1/serviceids/%s" % [ERB::Util.url_encode(id)]

      response = request(
        method: "PUT",
        url: method_url,
        headers: headers,
        json: data,
        accept_json: true
      )
      response
    end

    ##
    # @!method delete_service_id(id:)
    # Deletes a service ID and associated API keys.
    # Deletes a service ID and all API keys associated to it. Before deleting the
    #   service ID, all associated API keys are deleted. In case a Delete Conflict (status
    #   code 409) a retry of the request may help as the service ID is only deleted if the
    #   associated API keys were successfully deleted before. Users can manage user API
    #   keys for themself, or service ID API keys for service IDs that are bound to an
    #   entity they have access to.
    # @param id [String] Unique ID of the service ID.
    # @return [nil]
    def delete_service_id(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "delete_service_id")
      headers.merge!(sdk_headers)

      method_url = "/v1/serviceids/%s" % [ERB::Util.url_encode(id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      nil
    end

    ##
    # @!method lock_service_id(id:)
    # Lock the service ID.
    # Locks a service ID by ID. Users can manage user API keys for themself, or service
    #   ID API keys for service IDs that are bound to an entity they have access to. In
    #   case of service IDs and their API keys, a user must be either an account owner, a
    #   IBM Cloud org manager or IBM Cloud space developer in order to manage service IDs
    #   of the entity.
    # @param id [String] Unique ID of the service ID.
    # @return [nil]
    def lock_service_id(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "lock_service_id")
      headers.merge!(sdk_headers)

      method_url = "/v1/serviceids/%s/lock" % [ERB::Util.url_encode(id)]

      request(
        method: "POST",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      nil
    end

    ##
    # @!method unlock_service_id(id:)
    # Unlock the service ID.
    # Unlocks a service ID by ID. Users can manage user API keys for themself, or
    #   service ID API keys for service IDs that are bound to an entity they have access
    #   to. In case of service IDs and their API keys, a user must be either an account
    #   owner, a IBM Cloud org manager or IBM Cloud space developer in order to manage
    #   service IDs of the entity.
    # @param id [String] Unique ID of the service ID.
    # @return [nil]
    def unlock_service_id(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "unlock_service_id")
      headers.merge!(sdk_headers)

      method_url = "/v1/serviceids/%s/lock" % [ERB::Util.url_encode(id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      nil
    end
    #########################
    # Trusted Profiles Operations
    #########################

    ##
    # @!method create_profile(name:, account_id:, description: nil)
    # Create a trusted profile.
    # Create a trusted profile for a given account ID.
    # @param name [String] Name of the trusted profile. The name is checked for uniqueness. Therefore trusted
    #   profiles with the same names can not exist in the same account.
    # @param account_id [String] The account ID of the trusted profile.
    # @param description [String] The optional description of the trusted profile. The 'description' property is
    #   only available if a description was provided during creation of trusted profile.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def create_profile(name:, account_id:, description: nil)
      raise ArgumentError.new("name must be provided") if name.nil?

      raise ArgumentError.new("account_id must be provided") if account_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "create_profile")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "account_id" => account_id,
        "description" => description
      }

      method_url = "/v1/profiles"

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
    # @!method list_profile(account_id:, name: nil, pagesize: nil, sort: nil, order: nil, include_history: nil, pagetoken: nil)
    # List trusted profiles.
    # List the trusted profiles in an account. The `account_id` query parameter
    #   determines the account from which to retrieve the list of trusted profiles.
    # @param account_id [String] Account ID to query for trusted profiles.
    # @param name [String] Name of the trusted profile to query.
    # @param pagesize [Fixnum] Optional size of a single page. Default is 20 items per page. Valid range is 1 to
    #   100.
    # @param sort [String] Optional sort property, valid values are name, description, created_at and
    #   modified_at. If specified, the items are sorted by the value of this property.
    # @param order [String] Optional sort order, valid values are asc and desc. Default: asc.
    # @param include_history [Boolean] Defines if the entity history is included in the response.
    # @param pagetoken [String] Optional Prev or Next page token returned from a previous query execution. Default
    #   is start with first page.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_profile(account_id:, name: nil, pagesize: nil, sort: nil, order: nil, include_history: nil, pagetoken: nil)
      raise ArgumentError.new("account_id must be provided") if account_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "list_profile")
      headers.merge!(sdk_headers)

      params = {
        "account_id" => account_id,
        "name" => name,
        "pagesize" => pagesize,
        "sort" => sort,
        "order" => order,
        "include_history" => include_history,
        "pagetoken" => pagetoken
      }

      method_url = "/v1/profiles"

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
    # @!method get_profile(profile_id:)
    # Get a trusted profile.
    # Retrieve a trusted profile by its `profile-id`. Only the trusted profile's data is
    #   returned (`name`, `description`, `iam_id`, etc.), not the federated users or
    #   compute resources that qualify to apply the trusted profile.
    # @param profile_id [String] ID of the trusted profile to get.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_profile(profile_id:)
      raise ArgumentError.new("profile_id must be provided") if profile_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "get_profile")
      headers.merge!(sdk_headers)

      method_url = "/v1/profiles/profile-id" % [ERB::Util.url_encode(profile_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method update_profile(profile_id:, if_match:, name: nil, description: nil)
    # Update a trusted profile.
    # Update the name or description of an existing trusted profile.
    # @param profile_id [String] ID of the trusted profile to be updated.
    # @param if_match [String] Version of the trusted profile to be updated.  Specify the version that you
    #   retrived when reading list of trusted profiles. This value helps to identify any
    #   parallel usage of trusted profile. Pass * to indicate to update any version
    #   available. This might result in stale updates.
    # @param name [String] The name of the trusted profile to update. If specified in the request the
    #   parameter must not be empty. The name is checked for uniqueness. Failure to this
    #   will result in an Error condition.
    # @param description [String] The description of the trusted profile to update. If specified an empty
    #   description will clear the description of the trusted profile. If a non empty
    #   value is provided the trusted profile will be updated.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def update_profile(profile_id:, if_match:, name: nil, description: nil)
      raise ArgumentError.new("profile_id must be provided") if profile_id.nil?

      raise ArgumentError.new("if_match must be provided") if if_match.nil?

      headers = {
        "If-Match" => if_match
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "update_profile")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "description" => description
      }

      method_url = "/v1/profiles/profile-id" % [ERB::Util.url_encode(profile_id)]

      response = request(
        method: "PUT",
        url: method_url,
        headers: headers,
        json: data,
        accept_json: true
      )
      response
    end

    ##
    # @!method delete_profile(profile_id:)
    # Delete a trusted profile.
    # Delete a trusted profile. When you delete trusted profile, compute resources and
    #   federated users are unlinked from the profile and can no longer apply the trusted
    #   profile identity.
    # @param profile_id [String] ID of the trusted profile.
    # @return [nil]
    def delete_profile(profile_id:)
      raise ArgumentError.new("profile_id must be provided") if profile_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "delete_profile")
      headers.merge!(sdk_headers)

      method_url = "/v1/profiles/profile-id" % [ERB::Util.url_encode(profile_id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      nil
    end

    ##
    # @!method create_claim_rule(profile_id:, type:, conditions:, context: nil, name: nil, realm_name: nil, cr_type: nil, expiration: nil)
    # Create claim rule for a trusted profile.
    # Create a claim rule for a trusted profile. There is a limit of 20 rules per
    #   trusted profile.
    # @param profile_id [String] ID of the trusted profile to create a claim rule.
    # @param type [String] Type of the calim rule, either 'Profile-SAML' or 'Profile-CR'.
    # @param conditions [Array[ProfileClaimRuleConditions]] Conditions of this claim rule.
    # @param context [ResponseContext] Context with key properties for problem determination.
    # @param name [String] Name of the claim rule to be created or updated.
    # @param realm_name [String] The realm name of the Idp this claim rule applies to. This field is required only
    #   if the type is specified as 'Profile-SAML'.
    # @param cr_type [String] The compute resource type the rule applies to, required only if type is specified
    #   as 'Profile-CR'. Valid values are VSI, IKS_SA, ROKS_SA.
    # @param expiration [Fixnum] Session expiration in seconds, only required if type is 'Profile-SAML'.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def create_claim_rule(profile_id:, type:, conditions:, context: nil, name: nil, realm_name: nil, cr_type: nil, expiration: nil)
      raise ArgumentError.new("profile_id must be provided") if profile_id.nil?

      raise ArgumentError.new("type must be provided") if type.nil?

      raise ArgumentError.new("conditions must be provided") if conditions.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "create_claim_rule")
      headers.merge!(sdk_headers)

      data = {
        "type" => type,
        "conditions" => conditions,
        "context" => context,
        "name" => name,
        "realm_name" => realm_name,
        "cr_type" => cr_type,
        "expiration" => expiration
      }

      method_url = "/v1/profiles/profile-id/rules" % [ERB::Util.url_encode(profile_id)]

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
    # @!method list_claim_rules(profile_id:)
    # List claim rules for a trusted profile.
    # Get a list of all claim rules for a trusted profile. The `profile-id` query
    #   parameter determines the profile from which to retrieve the list of claim rules.
    # @param profile_id [String] ID of the trusted profile.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_claim_rules(profile_id:)
      raise ArgumentError.new("profile_id must be provided") if profile_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "list_claim_rules")
      headers.merge!(sdk_headers)

      method_url = "/v1/profiles/profile-id/rules" % [ERB::Util.url_encode(profile_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method get_claim_rule(profile_id:, rule_id:)
    # Get a claim rule for a trusted profile.
    # A specific claim rule can be fetched for a given trusted profile ID and rule ID.
    # @param profile_id [String] ID of the trusted profile.
    # @param rule_id [String] ID of the claim rule to get.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_claim_rule(profile_id:, rule_id:)
      raise ArgumentError.new("profile_id must be provided") if profile_id.nil?

      raise ArgumentError.new("rule_id must be provided") if rule_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "get_claim_rule")
      headers.merge!(sdk_headers)

      method_url = "/v1/profiles/profile-id/rules/rule-id" % [ERB::Util.url_encode(profile_id), ERB::Util.url_encode(rule_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method update_claim_rule(profile_id:, rule_id:, if_match:, type:, conditions:, context: nil, name: nil, realm_name: nil, cr_type: nil, expiration: nil)
    # Update claim rule for a trusted profile.
    # Update a specific claim rule for a given trusted profile ID and rule ID.
    # @param profile_id [String] ID of the trusted profile.
    # @param rule_id [String] ID of the claim rule to update.
    # @param if_match [String] Version of the claim rule to be updated.  Specify the version that you retrived
    #   when reading list of claim rules. This value helps to identify any parallel usage
    #   of claim rule. Pass * to indicate to update any version available. This might
    #   result in stale updates.
    # @param type [String] Type of the calim rule, either 'Profile-SAML' or 'Profile-CR'.
    # @param conditions [Array[ProfileClaimRuleConditions]] Conditions of this claim rule.
    # @param context [ResponseContext] Context with key properties for problem determination.
    # @param name [String] Name of the claim rule to be created or updated.
    # @param realm_name [String] The realm name of the Idp this claim rule applies to. This field is required only
    #   if the type is specified as 'Profile-SAML'.
    # @param cr_type [String] The compute resource type the rule applies to, required only if type is specified
    #   as 'Profile-CR'. Valid values are VSI, IKS_SA, ROKS_SA.
    # @param expiration [Fixnum] Session expiration in seconds, only required if type is 'Profile-SAML'.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def update_claim_rule(profile_id:, rule_id:, if_match:, type:, conditions:, context: nil, name: nil, realm_name: nil, cr_type: nil, expiration: nil)
      raise ArgumentError.new("profile_id must be provided") if profile_id.nil?

      raise ArgumentError.new("rule_id must be provided") if rule_id.nil?

      raise ArgumentError.new("if_match must be provided") if if_match.nil?

      raise ArgumentError.new("type must be provided") if type.nil?

      raise ArgumentError.new("conditions must be provided") if conditions.nil?

      headers = {
        "If-Match" => if_match
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "update_claim_rule")
      headers.merge!(sdk_headers)

      data = {
        "type" => type,
        "conditions" => conditions,
        "context" => context,
        "name" => name,
        "realm_name" => realm_name,
        "cr_type" => cr_type,
        "expiration" => expiration
      }

      method_url = "/v1/profiles/profile-id/rules/rule-id" % [ERB::Util.url_encode(profile_id), ERB::Util.url_encode(rule_id)]

      response = request(
        method: "PUT",
        url: method_url,
        headers: headers,
        json: data,
        accept_json: true
      )
      response
    end

    ##
    # @!method delete_claim_rule(profile_id:, rule_id:)
    # Delete a claim rule.
    # Delete a claim rule. When you delete a claim rule, federated user or compute
    #   resources are no longer required to meet the conditions of the claim rule in order
    #   to apply the trusted profile.
    # @param profile_id [String] ID of the trusted profile.
    # @param rule_id [String] ID of the claim rule to delete.
    # @return [nil]
    def delete_claim_rule(profile_id:, rule_id:)
      raise ArgumentError.new("profile_id must be provided") if profile_id.nil?

      raise ArgumentError.new("rule_id must be provided") if rule_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "delete_claim_rule")
      headers.merge!(sdk_headers)

      method_url = "/v1/profiles/profile-id/rules/rule-id" % [ERB::Util.url_encode(profile_id), ERB::Util.url_encode(rule_id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      nil
    end

    ##
    # @!method create_link(profile_id:, cr_type:, link:, name: nil)
    # Create link to a trusted profile.
    # Create a direct link between a specific compute resource and a trusted profile,
    #   rather than creating conditions that a compute resource must fulfill to apply a
    #   trusted profile.
    # @param profile_id [String] ID of the trusted profile.
    # @param cr_type [String] The compute resource type. Valid values are VSI, IKS_SA, ROKS_SA.
    # @param link [CreateProfileLinkRequestLink] Link details.
    # @param name [String] Optional name of the Link.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def create_link(profile_id:, cr_type:, link:, name: nil)
      raise ArgumentError.new("profile_id must be provided") if profile_id.nil?

      raise ArgumentError.new("cr_type must be provided") if cr_type.nil?

      raise ArgumentError.new("link must be provided") if link.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "create_link")
      headers.merge!(sdk_headers)

      data = {
        "cr_type" => cr_type,
        "link" => link,
        "name" => name
      }

      method_url = "/v1/profiles/profile-id/links" % [ERB::Util.url_encode(profile_id)]

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
    # @!method list_link(profile_id:)
    # List links to a trusted profile.
    # Get a list of links to a trusted profile.
    # @param profile_id [String] ID of the trusted profile.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_link(profile_id:)
      raise ArgumentError.new("profile_id must be provided") if profile_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "list_link")
      headers.merge!(sdk_headers)

      method_url = "/v1/profiles/profile-id/links" % [ERB::Util.url_encode(profile_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method get_link(profile_id:, link_id:)
    # Get link to a trusted profile.
    # Get a specific link to a trusted profile by `link_id`.
    # @param profile_id [String] ID of the trusted profile.
    # @param link_id [String] ID of the link.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_link(profile_id:, link_id:)
      raise ArgumentError.new("profile_id must be provided") if profile_id.nil?

      raise ArgumentError.new("link_id must be provided") if link_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "get_link")
      headers.merge!(sdk_headers)

      method_url = "/v1/profiles/profile-id/links/link-id" % [ERB::Util.url_encode(profile_id), ERB::Util.url_encode(link_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method delete_link(profile_id:, link_id:)
    # Delete link to a trusted profile.
    # Delete a link between a compute resource and a trusted profile.
    # @param profile_id [String] ID of the trusted profile.
    # @param link_id [String] ID of the link.
    # @return [nil]
    def delete_link(profile_id:, link_id:)
      raise ArgumentError.new("profile_id must be provided") if profile_id.nil?

      raise ArgumentError.new("link_id must be provided") if link_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "delete_link")
      headers.merge!(sdk_headers)

      method_url = "/v1/profiles/profile-id/links/link-id" % [ERB::Util.url_encode(profile_id), ERB::Util.url_encode(link_id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      nil
    end
    #########################
    # Account Settings
    #########################

    ##
    # @!method get_account_settings(account_id:, include_history: nil)
    # Get account configurations.
    # Returns the details of an account's configuration.
    # @param account_id [String] Unique ID of the account.
    # @param include_history [Boolean] Defines if the entity history is included in the response.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_account_settings(account_id:, include_history: nil)
      raise ArgumentError.new("account_id must be provided") if account_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "get_account_settings")
      headers.merge!(sdk_headers)

      params = {
        "include_history" => include_history
      }

      method_url = "/v1/accounts/%s/settings/identity" % [ERB::Util.url_encode(account_id)]

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
    # @!method update_account_settings(if_match:, account_id:, restrict_create_service_id: nil, restrict_create_platform_apikey: nil, allowed_ip_addresses: nil, mfa: nil, session_expiration_in_seconds: nil, session_invalidation_in_seconds: nil, max_sessions_per_identity: nil)
    # Update account configurations.
    # Allows a user to configure settings on their account with regards to MFA, session
    #   lifetimes,  access control for creating new identities, and enforcing IP
    #   restrictions on  token creation.
    # @param if_match [String] Version of the account settings to be updated. Specify the version that you
    #   retrieved as entity_tag (ETag header) when reading the account. This value helps
    #   identifying parallel usage of this API. Pass * to indicate to update any version
    #   available. This might result in stale updates.
    # @param account_id [String] The id of the account to update the settings for.
    # @param restrict_create_service_id [String] Defines whether or not creating a Service Id is access controlled. Valid values:
    #     * RESTRICTED - to apply access control
    #     * NOT_RESTRICTED - to remove access control
    #     * NOT_SET - to unset a previously set value.
    # @param restrict_create_platform_apikey [String] Defines whether or not creating platform API keys is access controlled. Valid
    #   values:
    #     * RESTRICTED - to apply access control
    #     * NOT_RESTRICTED - to remove access control
    #     * NOT_SET - to 'unset' a previous set value.
    # @param allowed_ip_addresses [String] Defines the IP addresses and subnets from which IAM tokens can be created for the
    #   account.
    # @param mfa [String] Defines the MFA trait for the account. Valid values:
    #     * NONE - No MFA trait set
    #     * TOTP - For all non-federated IBMId users
    #     * TOTP4ALL - For all users
    #     * LEVEL1 - Email-based MFA for all users
    #     * LEVEL2 - TOTP-based MFA for all users
    #     * LEVEL3 - U2F MFA for all users.
    # @param session_expiration_in_seconds [String] Defines the session expiration in seconds for the account. Valid values:
    #     * Any whole number between between '900' and '86400'
    #     * NOT_SET - To unset account setting and use service default.
    # @param session_invalidation_in_seconds [String] Defines the period of time in seconds in which a session will be invalidated due
    #   to inactivity. Valid values:
    #     * Any whole number between '900' and '7200'
    #     * NOT_SET - To unset account setting and use service default.
    # @param max_sessions_per_identity [String] Defines the max allowed sessions per identity required by the account. Value
    #   values:
    #     * Any whole number greater than 0
    #     * NOT_SET - To unset account setting and use service default.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def update_account_settings(if_match:, account_id:, restrict_create_service_id: nil, restrict_create_platform_apikey: nil, allowed_ip_addresses: nil, mfa: nil, session_expiration_in_seconds: nil, session_invalidation_in_seconds: nil, max_sessions_per_identity: nil)
      raise ArgumentError.new("if_match must be provided") if if_match.nil?

      raise ArgumentError.new("account_id must be provided") if account_id.nil?

      headers = {
        "If-Match" => if_match
      }
      sdk_headers = Common.new.get_sdk_headers("iam_identity", "V1", "update_account_settings")
      headers.merge!(sdk_headers)

      data = {
        "restrict_create_service_id" => restrict_create_service_id,
        "restrict_create_platform_apikey" => restrict_create_platform_apikey,
        "allowed_ip_addresses" => allowed_ip_addresses,
        "mfa" => mfa,
        "session_expiration_in_seconds" => session_expiration_in_seconds,
        "session_invalidation_in_seconds" => session_invalidation_in_seconds,
        "max_sessions_per_identity" => max_sessions_per_identity
      }

      method_url = "/v1/accounts/%s/settings/identity" % [ERB::Util.url_encode(account_id)]

      response = request(
        method: "PUT",
        url: method_url,
        headers: headers,
        json: data,
        accept_json: true
      )
      response
    end
  end
end