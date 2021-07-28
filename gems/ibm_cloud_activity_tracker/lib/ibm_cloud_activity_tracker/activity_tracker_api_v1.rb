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
# IBM OpenAPI SDK Code Generator Version: 3.36.0-6f5b0381-20210716-180747
#
# REST API to manage the IBM Cloud Activity Tracker service

require "concurrent"
require "erb"
require "json"
require "ibm_cloud_sdk_core"
require_relative "./common.rb"

module IbmCloudActivityTracker
  ##
  # The Activity Tracker API V1 service.
  class ActivityTrackerApiV1 < IBMCloudSdkCore::BaseService
    include Concurrent::Async
    DEFAULT_SERVICE_NAME = "activity_tracker_api"
    DEFAULT_SERVICE_URL = "https://api.us-south.logging.cloud.ibm.com"
    ##
    # @!method initialize(args)
    # Construct a new client for the Activity Tracker API service.
    #
    # @param args [Hash] The args to initialize with
    # @option args service_url [String] The base service URL to use when contacting the service.
    #   The base service_url may differ between IBM Cloud regions.
    # @option args authenticator [Object] The Authenticator instance to be configured for this service.
    # @option args service_name [String] The name of the service to configure. Will be used as the key to load
    #   any external configuration, if applicable.
    # @option args service_key [String] The Activity Tracker service key
    def initialize(args = {})
      @__async_initialized__ = false
      @service_key = args[:service_key]
      raise ArgumentError.new("service_key must be provided") if @service_key.nil?
      args.delete(:service_key)

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
    # Export
    #########################

    ##
    # @!method export(from:, to:, size: nil, hosts: nil, apps: nil, levels: nil, query: nil, prefer: nil, email: nil, email_subject: nil)
    # Export logs V1.
    # Use this method to export logs in JSON format from a logging instance.
    # @param from [String] Start time. Set as UNIX timestamp in seconds or milliseconds.
    # @param to [String] End time. Set as UNIX timestamp in seconds or milliseconds.
    # @param size [String] Number of log lines to include in the export.
    # @param hosts [String] Comma-separated list of hosts.
    # @param apps [String] Comma-separated list of applications.
    # @param levels [String] Comma-separated list of log levels.
    # @param query [String] Search query.
    # @param prefer [String] Defines the log lines that you want to export. Valid values are head, first log
    #   lines, and tail, last log lines. If not specified, defaults to tail.
    # @param email [String] Specifies the email with the downloadable link of your export. By default, the log
    #   lines are streamed.
    # @param email_subject [String] Use to set the subject of the email. Use %20 to represent a space. For example, a
    #   sample value is Export%20logs.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def export(from:, to:, size: nil, hosts: nil, apps: nil, levels: nil, query: nil, prefer: nil, email: nil, email_subject: nil)
      raise ArgumentError.new("from must be provided") if from.nil?

      raise ArgumentError.new("to must be provided") if to.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("activity_tracker_api", "V1", "export", @service_key)
      headers.merge!(sdk_headers)

      params = {
        "from" => from,
        "to" => to,
        "size" => size,
        "hosts" => hosts,
        "apps" => apps,
        "levels" => levels,
        "query" => query,
        "prefer" => prefer,
        "email" => email,
        "emailSubject" => email_subject
      }

      method_url = "/v1/export"

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        params: params,
        accept_json: false
      )
      response
    end

    ##
    # @!method exportv2(from:, to:, size: nil, hosts: nil, apps: nil, levels: nil, query: nil, prefer: nil, pagination_id: nil)
    # Export logs V2.
    # Use this method to export logs in JSON format from a logging instance.
    # @param from [String] Start time. Set as UNIX timestamp in seconds or milliseconds.
    # @param to [String] End time. Set as UNIX timestamp in seconds or milliseconds.
    # @param size [String] Number of log lines to include in the export.
    # @param hosts [String] Comma-separated list of hosts.
    # @param apps [String] Comma-separated list of applications.
    # @param levels [String] Comma-separated list of log levels.
    # @param query [String] Search query.
    # @param prefer [String] Defines the log lines that you want to export. Valid values are head, first log
    #   lines, and tail, last log lines. If not specified, defaults to tail.
    # @param pagination_id [String] ID that indicates which page of results to be retrieved. Leave empty for the
    #   initial export request.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def exportv2(from:, to:, size: nil, hosts: nil, apps: nil, levels: nil, query: nil, prefer: nil, pagination_id: nil)
      raise ArgumentError.new("from must be provided") if from.nil?

      raise ArgumentError.new("to must be provided") if to.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("activity_tracker_api", "V1", "exportv2", @service_key)
      headers.merge!(sdk_headers)

      params = {
        "from" => from,
        "to" => to,
        "size" => size,
        "hosts" => hosts,
        "apps" => apps,
        "levels" => levels,
        "query" => query,
        "prefer" => prefer,
        "pagination_id" => pagination_id
      }

      method_url = "/v2/export"

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        params: params,
        accept_json: false
      )
      response
    end
    #########################
    # Configuration
    #########################

    ##
    # @!method create_view(config_request:, content_type: nil)
    # Create a view.
    # Use this method to create a view and attach alerts to the view.
    # @param config_request [File] Request parameters.
    # @param content_type [String] The type of the input.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def create_view(config_request:, content_type: nil)
      raise ArgumentError.new("config_request must be provided") if config_request.nil?

      headers = {
        "Content-Type" => content_type
      }
      sdk_headers = Common.new.get_sdk_headers("activity_tracker_api", "V1", "create_view", @service_key)
      headers.merge!(sdk_headers)

      data = config_request

      method_url = "/v1/config/view"

      response = request(
        method: "POST",
        url: method_url,
        headers: headers,
        data: data,
        accept_json: false
      )
      response
    end

    ##
    # @!method update_view(view_id:, config_request:, content_type: nil)
    # Update view.
    # Use this method to update a view. You can change the view configuration details,
    #   attach or modify alerts, and detach alerts.
    # @param view_id [String] ID of a view.
    # @param config_request [File] Request parameters.
    # @param content_type [String] The type of the input.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def update_view(view_id:, config_request:, content_type: nil)
      raise ArgumentError.new("view_id must be provided") if view_id.nil?

      raise ArgumentError.new("config_request must be provided") if config_request.nil?

      headers = {
        "Content-Type" => content_type
      }
      sdk_headers = Common.new.get_sdk_headers("activity_tracker_api", "V1", "update_view", @service_key)
      headers.merge!(sdk_headers)

      data = config_request

      method_url = "/v1/config/view/%s" % [ERB::Util.url_encode(view_id)]

      response = request(
        method: "PUT",
        url: method_url,
        headers: headers,
        data: data,
        accept_json: false
      )
      response
    end

    ##
    # @!method delete_view(view_id:)
    # Delete a view.
    # Use this method to delete a view and any attached alerts.
    # @param view_id [String] ID of a view.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def delete_view(view_id:)
      raise ArgumentError.new("view_id must be provided") if view_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("activity_tracker_api", "V1", "delete_view", @service_key)
      headers.merge!(sdk_headers)

      method_url = "/v1/config/view/%s" % [ERB::Util.url_encode(view_id)]

      response = request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: false
      )
      response
    end

    ##
    # @!method list_group
    # List groups.
    # Use this method to list the log groups.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_group
      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("activity_tracker_api", "V1", "list_group", @service_key)
      headers.merge!(sdk_headers)

      method_url = "/v1/config/groups"

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: false
      )
      response
    end

    ##
    # @!method create_group(groups_request:, content_type: nil)
    # Create group.
    # Use this method to create a log group where you can scope the data that is
    #   accessible by members in that group.
    # @param groups_request [File] Request parameters.
    # @param content_type [String] The type of the input.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def create_group(groups_request:, content_type: nil)
      raise ArgumentError.new("groups_request must be provided") if groups_request.nil?

      headers = {
        "Content-Type" => content_type
      }
      sdk_headers = Common.new.get_sdk_headers("activity_tracker_api", "V1", "create_group", @service_key)
      headers.merge!(sdk_headers)

      data = groups_request

      method_url = "/v1/config/groups"

      response = request(
        method: "POST",
        url: method_url,
        headers: headers,
        data: data,
        accept_json: false
      )
      response
    end

    ##
    # @!method read_group(group_id:)
    # Get details of a group.
    # Use this method to get information on a group.
    # @param group_id [String] ID of a group.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def read_group(group_id:)
      raise ArgumentError.new("group_id must be provided") if group_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("activity_tracker_api", "V1", "read_group", @service_key)
      headers.merge!(sdk_headers)

      method_url = "/v1/config/groups/%s" % [ERB::Util.url_encode(group_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: false
      )
      response
    end

    ##
    # @!method delete_group(group_id:)
    # Delete a group.
    # Use this method to list the log groups.
    # @param group_id [String] ID of a group.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def delete_group(group_id:)
      raise ArgumentError.new("group_id must be provided") if group_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("activity_tracker_api", "V1", "delete_group", @service_key)
      headers.merge!(sdk_headers)

      method_url = "/v1/config/groups/%s" % [ERB::Util.url_encode(group_id)]

      response = request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: false
      )
      response
    end

    ##
    # @!method update_group(group_id:, groups_request:, content_type: nil)
    # Update group.
    # Use this method to modify a log group. You can change the name of the group and
    #   the access scope that defines the data that is accessible by members in that
    #   group.
    # @param group_id [String] ID of a group.
    # @param groups_request [File] Request parameters.
    # @param content_type [String] The type of the input.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def update_group(group_id:, groups_request:, content_type: nil)
      raise ArgumentError.new("group_id must be provided") if group_id.nil?

      raise ArgumentError.new("groups_request must be provided") if groups_request.nil?

      headers = {
        "Content-Type" => content_type
      }
      sdk_headers = Common.new.get_sdk_headers("activity_tracker_api", "V1", "update_group", @service_key)
      headers.merge!(sdk_headers)

      data = groups_request

      method_url = "/v1/config/groups/%s" % [ERB::Util.url_encode(group_id)]

      response = request(
        method: "PATCH",
        url: method_url,
        headers: headers,
        data: data,
        accept_json: false
      )
      response
    end
  end
end
