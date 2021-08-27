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
# Manage your tags with the Tagging API in IBM Cloud. You can attach, detach, delete a
# tag or list all tags in your billing account with the Tagging API. The tag name must be
# unique within a billing account. You can create tags in two formats: `key:value` or
# `label`. The tagging API supports three types of tag: `user` `service`, and `access`
# tags. `service` tags cannot be attached to IMS resources. `service` tags must be in the
# form `service_prefix:tag_label` where `service_prefix` identifies the Service owning the
# tag. `access` tags cannot be attached to IMS and Cloud Foundry resources. They must be
# in the form `key:value`.

require "concurrent"
require "erb"
require "json"
require "ibm_cloud_sdk_core"
require_relative "./common.rb"

module IBMCloud
  ##
  # The global_tagging V1 service.
  class GlobalTaggingV1 < IBMCloudSdkCore::BaseService
    include Concurrent::Async
    DEFAULT_SERVICE_NAME = "global_tagging"
    DEFAULT_SERVICE_URL = "https://tags.global-search-tagging.cloud.ibm.com"
    ##
    # @!method initialize(args)
    # Construct a new client for the global_tagging service.
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
    # tags
    #########################

    ##
    # @!method list_tags(impersonate_user: nil, account_id: nil, tag_type: nil, full_data: nil, providers: nil, attached_to: nil, offset: nil, limit: nil, timeout: nil, order_by_name: nil, attached_only: nil)
    # Get all tags.
    # Lists all tags in a billing account. Use the `attached_to` parameter to return the
    #   list of tags attached to the specified resource.
    # @param impersonate_user [String] The user on whose behalf the get operation must be performed (_for administrators
    #   only_).
    # @param account_id [String] The ID of the billing account to list the tags for. If it is not set, then it is
    #   taken from the authorization token. This parameter is required if `tag_type` is
    #   set to `service`.
    # @param tag_type [String] The type of the tag you want to list. Supported values are `user`, `service` and
    #   `access`.
    # @param full_data [Boolean] If set to `true`, this query returns the provider, `ghost`, `ims` or `ghost,ims`,
    #   where the tag exists and the number of attached resources.
    # @param providers [Array[String]] Select a provider. Supported values are `ghost` and `ims`. To list both Global
    #   Search and Tagging tags and infrastructure tags, use `ghost,ims`. `service` and
    #   `access` tags can only be attached to resources that are onboarded to Global
    #   Search and Tagging, so you should not set this parameter when listing them.
    # @param attached_to [String] If you want to return only the list of tags attached to a specified resource, pass
    #   the ID of the resource on this parameter. For resources that are onboarded to
    #   Global Search and Tagging, the resource ID is the CRN; for IMS resources, it is
    #   the IMS ID. When using this parameter, you must specify the appropriate provider
    #   (`ims` or `ghost`).
    # @param offset [Fixnum] The offset is the index of the item from which you want to start returning data
    #   from.
    # @param limit [Fixnum] The number of tags to return.
    # @param timeout [Fixnum] The search timeout bounds the search request to be executed within the specified
    #   time value. It returns the hits accumulated until time runs out.
    # @param order_by_name [String] Order the output by tag name.
    # @param attached_only [Boolean] Filter on attached tags. If `true`, it returns only tags that are attached to one
    #   or more resources. If `false`, it returns all tags.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_tags(impersonate_user: nil, account_id: nil, tag_type: nil, full_data: nil, providers: nil, attached_to: nil, offset: nil, limit: nil, timeout: nil, order_by_name: nil, attached_only: nil)
      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("global_tagging", "V1", "list_tags")
      headers.merge!(sdk_headers)
      providers *= "," unless providers.nil?

      params = {
        "impersonate_user" => impersonate_user,
        "account_id" => account_id,
        "tag_type" => tag_type,
        "full_data" => full_data,
        "providers" => providers,
        "attached_to" => attached_to,
        "offset" => offset,
        "limit" => limit,
        "timeout" => timeout,
        "order_by_name" => order_by_name,
        "attached_only" => attached_only
      }

      method_url = "/v3/tags"

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
    # @!method create_tag(tag_names:, impersonate_user: nil, account_id: nil, tag_type: nil)
    # Create an access management tag.
    # Create an access management tag. To create an `access` tag, you must have the
    #   access listed in the [Granting users access to tag
    #   resources](https://cloud.ibm.com/docs/account?topic=account-access) documentation.
    #   `service` and `user` tags cannot be created upfront. They are created when they
    #   are attached for the first time to a resource.
    # @param tag_names [Array[String]] An array of tag names to create.
    # @param impersonate_user [String] The user on whose behalf the create operation must be performed (_for
    #   administrators only_).
    # @param account_id [String] The ID of the billing account where the tag must be created. It is a required
    #   parameter if `impersonate_user` is set.
    # @param tag_type [String] The type of the tags you want to create. The only allowed value is `access`.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def create_tag(tag_names:, impersonate_user: nil, account_id: nil, tag_type: nil)
      raise ArgumentError.new("tag_names must be provided") if tag_names.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("global_tagging", "V1", "create_tag")
      headers.merge!(sdk_headers)

      params = {
        "impersonate_user" => impersonate_user,
        "account_id" => account_id,
        "tag_type" => tag_type
      }

      data = {
        "tag_names" => tag_names
      }

      method_url = "/v3/tags"

      response = request(
        method: "POST",
        url: method_url,
        headers: headers,
        params: params,
        json: data,
        accept_json: true
      )
      response
    end

    ##
    # @!method delete_tag_all(providers: nil, impersonate_user: nil, account_id: nil, tag_type: nil)
    # Delete all unused tags.
    # Delete the tags that are not attached to any resource.
    # @param providers [String] Select a provider. Supported values are `ghost` and `ims`.
    # @param impersonate_user [String] The user on whose behalf the delete all operation must be performed (_for
    #   administrators only_).
    # @param account_id [String] The ID of the billing account to delete the tags for. If it is not set, then it is
    #   taken from the authorization token. It is a required parameter if `tag_type` is
    #   set to `service`.
    # @param tag_type [String] The type of the tag. Supported values are `user`, `service` and `access`.
    #   `service` and `access` are not supported for IMS resources (`providers` parameter
    #   set to `ims`).
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def delete_tag_all(providers: nil, impersonate_user: nil, account_id: nil, tag_type: nil)
      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("global_tagging", "V1", "delete_tag_all")
      headers.merge!(sdk_headers)

      params = {
        "providers" => providers,
        "impersonate_user" => impersonate_user,
        "account_id" => account_id,
        "tag_type" => tag_type
      }

      method_url = "/v3/tags"

      response = request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        params: params,
        accept_json: true
      )
      response
    end

    ##
    # @!method delete_tag(tag_name:, providers: nil, impersonate_user: nil, account_id: nil, tag_type: nil)
    # Delete an unused tag.
    # Delete an existing tag. A tag can be deleted only if it is not attached to any
    #   resource.
    # @param tag_name [String] The name of tag to be deleted.
    # @param providers [Array[String]] Select a provider. Supported values are `ghost` and `ims`. To delete tags both in
    #   Global Search and Tagging and in IMS, use `ghost,ims`.
    # @param impersonate_user [String] The user on whose behalf the delete operation must be performed (_for
    #   administrators only_).
    # @param account_id [String] The ID of the billing account to delete the tag for. It is a required parameter if
    #   `tag_type` is set to `service`, otherwise it is inferred from the authorization
    #   IAM token.
    # @param tag_type [String] The type of the tag. Supported values are `user`, `service` and `access`.
    #   `service` and `access` are not supported for IMS resources (`providers` parameter
    #   set to `ims`).
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def delete_tag(tag_name:, providers: nil, impersonate_user: nil, account_id: nil, tag_type: nil)
      raise ArgumentError.new("tag_name must be provided") if tag_name.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("global_tagging", "V1", "delete_tag")
      headers.merge!(sdk_headers)
      providers *= "," unless providers.nil?

      params = {
        "providers" => providers,
        "impersonate_user" => impersonate_user,
        "account_id" => account_id,
        "tag_type" => tag_type
      }

      method_url = "/v3/tags/%s" % [ERB::Util.url_encode(tag_name)]

      response = request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        params: params,
        accept_json: true
      )
      response
    end

    ##
    # @!method attach_tag(resources:, tag_name: nil, tag_names: nil, impersonate_user: nil, account_id: nil, tag_type: nil)
    # Attach tags.
    # Attaches one or more tags to one or more resources.
    # @param resources [Array[Resource]] List of resources on which the tag or tags should be attached.
    # @param tag_name [String] The name of the tag to attach.
    # @param tag_names [Array[String]] An array of tag names to attach.
    # @param impersonate_user [String] The user on whose behalf the attach operation must be performed (_for
    #   administrators only_).
    # @param account_id [String] The ID of the billing account where the resources to be tagged lives. It is a
    #   required parameter if `tag_type` is set to `service`. Otherwise, it is inferred
    #   from the authorization IAM token.
    # @param tag_type [String] The type of the tag. Supported values are `user`, `service` and `access`.
    #   `service` and `access` are not supported for IMS resources.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def attach_tag(resources:, tag_name: nil, tag_names: nil, impersonate_user: nil, account_id: nil, tag_type: nil)
      raise ArgumentError.new("resources must be provided") if resources.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("global_tagging", "V1", "attach_tag")
      headers.merge!(sdk_headers)

      params = {
        "impersonate_user" => impersonate_user,
        "account_id" => account_id,
        "tag_type" => tag_type
      }

      data = {
        "resources" => resources,
        "tag_name" => tag_name,
        "tag_names" => tag_names
      }

      method_url = "/v3/tags/attach"

      response = request(
        method: "POST",
        url: method_url,
        headers: headers,
        params: params,
        json: data,
        accept_json: true
      )
      response
    end

    ##
    # @!method detach_tag(resources:, tag_name: nil, tag_names: nil, impersonate_user: nil, account_id: nil, tag_type: nil)
    # Detach tags.
    # Detaches one or more tags from one or more resources.
    # @param resources [Array[Resource]] List of resources on which the tag or tags should be detached.
    # @param tag_name [String] The name of the tag to detach.
    # @param tag_names [Array[String]] An array of tag names to detach.
    # @param impersonate_user [String] The user on whose behalf the detach operation must be performed (_for
    #   administrators only_).
    # @param account_id [String] The ID of the billing account where the resources to be un-tagged lives. It is a
    #   required parameter if `tag_type` is set to `service`, otherwise it is inferred
    #   from the authorization IAM token.
    # @param tag_type [String] The type of the tag. Supported values are `user`, `service` and `access`.
    #   `service` and `access` are not supported for IMS resources.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def detach_tag(resources:, tag_name: nil, tag_names: nil, impersonate_user: nil, account_id: nil, tag_type: nil)
      raise ArgumentError.new("resources must be provided") if resources.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("global_tagging", "V1", "detach_tag")
      headers.merge!(sdk_headers)

      params = {
        "impersonate_user" => impersonate_user,
        "account_id" => account_id,
        "tag_type" => tag_type
      }

      data = {
        "resources" => resources,
        "tag_name" => tag_name,
        "tag_names" => tag_names
      }

      method_url = "/v3/tags/detach"

      response = request(
        method: "POST",
        url: method_url,
        headers: headers,
        params: params,
        json: data,
        accept_json: true
      )
      response
    end
  end
end
