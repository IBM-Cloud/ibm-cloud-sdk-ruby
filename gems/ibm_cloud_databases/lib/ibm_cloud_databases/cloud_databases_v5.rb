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
# The IBM Cloud Databases API enables interaction between applications and Cloud
# Databases database deployments.
#
# Access to the API requires an IAM Bearer Token or an IAM API Key to be presented through
# bearer authentication.
#
# Deployment IDs are CRNs on the IBM Cloud Databases v5 API platform. No lookup or
# translation the Compose style UUIDs is needed. The Deployment ID is a traditional UUID
# on the Compose v5 API platform.
#
# When you use CRNs, remember to URL escape the CRN value as they can include the
# forward-slash (/) character.

require "concurrent"
require "erb"
require "json"
require "ibm_cloud_sdk_core"
require_relative "./common.rb"

module IbmCloudDatabases
  ##
  # The Cloud Databases V5 service.
  class CloudDatabasesV5 < IBMCloudSdkCore::BaseService
    include Concurrent::Async
    DEFAULT_SERVICE_NAME = "cloud_databases"
    DEFAULT_SERVICE_URL = "https://api.us-south.databases.cloud.ibm.com/v5/ibm"
    ##
    # @!method initialize(args)
    # Construct a new client for the Cloud Databases service.
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
    # Deployments
    #########################

    ##
    # @!method list_deployables
    # List all deployable databases.
    # Returns a list of all the types and associated major versions of database
    #   deployments that can be provisioned.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_deployables
      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "list_deployables")
      headers.merge!(sdk_headers)

      method_url = "/deployables"

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method list_regions
    # List all deployable regions.
    # Returns a list of all the regions that deployments can be provisioned into from
    #   the current region. Used to determine region availability for read-only replicas.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_regions
      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "list_regions")
      headers.merge!(sdk_headers)

      method_url = "/regions"

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method get_deployment_info(id:)
    # Get deployment information.
    # Gets the full data that is associated with a deployment. This data includes the
    #   ID, name, database type, and version.
    # @param id [String] Deployment ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_deployment_info(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "get_deployment_info")
      headers.merge!(sdk_headers)

      method_url = "/deployments/%s" % [ERB::Util.url_encode(id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end
    #########################
    # Database Users
    #########################

    ##
    # @!method create_database_user(id:, user_type:, user: nil)
    # Creates a user based on user type.
    # Creates a user in the database that can access the database through a connection.
    # @param id [String] Deployment ID.
    # @param user_type [String] User type.
    # @param user [CreateDatabaseUserRequestUser]
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def create_database_user(id:, user_type:, user: nil)
      raise ArgumentError.new("id must be provided") if id.nil?

      raise ArgumentError.new("user_type must be provided") if user_type.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "create_database_user")
      headers.merge!(sdk_headers)

      data = {
        "user" => user
      }

      method_url = "/deployments/%s/users/%s" % [ERB::Util.url_encode(id), ERB::Util.url_encode(user_type)]

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
    # @!method change_user_password(id:, user_type:, username:, user: nil)
    # Set specified user's password.
    # Sets the password of a specified user.
    # @param id [String] Deployment ID.
    # @param user_type [String] User type.
    # @param username [String] User ID.
    # @param user [APasswordSettingUser]
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def change_user_password(id:, user_type:, username:, user: nil)
      raise ArgumentError.new("id must be provided") if id.nil?

      raise ArgumentError.new("user_type must be provided") if user_type.nil?

      raise ArgumentError.new("username must be provided") if username.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "change_user_password")
      headers.merge!(sdk_headers)

      data = {
        "user" => user
      }

      method_url = "/deployments/%s/users/%s/%s" % [ERB::Util.url_encode(id), ERB::Util.url_encode(user_type), ERB::Util.url_encode(username)]

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
    # @!method delete_database_user(id:, user_type:, username:)
    # Deletes a user based on user type.
    # Removes a user from the deployment.
    # @param id [String] Deployment ID.
    # @param user_type [String] User type.
    # @param username [String] Username.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def delete_database_user(id:, user_type:, username:)
      raise ArgumentError.new("id must be provided") if id.nil?

      raise ArgumentError.new("user_type must be provided") if user_type.nil?

      raise ArgumentError.new("username must be provided") if username.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "delete_database_user")
      headers.merge!(sdk_headers)

      method_url = "/deployments/%s/users/%s/%s" % [ERB::Util.url_encode(id), ERB::Util.url_encode(user_type), ERB::Util.url_encode(username)]

      response = request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end
    #########################
    # Database Configuration
    #########################

    ##
    # @!method update_database_configuration(id:, configuration:)
    # Change your database configuration.
    # Change your database configuration. Available for PostgreSQL, EnterpriseDB, and
    #   Redis ONLY.
    # @param id [String] Deployment ID.
    # @param configuration [SetConfigurationConfiguration]
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def update_database_configuration(id:, configuration:)
      raise ArgumentError.new("id must be provided") if id.nil?

      raise ArgumentError.new("configuration must be provided") if configuration.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "update_database_configuration")
      headers.merge!(sdk_headers)

      data = {
        "configuration" => configuration
      }

      method_url = "/deployments/%s/configuration" % [ERB::Util.url_encode(id)]

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
    # Remotes
    #########################

    ##
    # @!method list_remotes(id:)
    # List read-only replica information.
    # Get the read-only replicas associated with a deployment. Available for PostgreSQL
    #   and EnterpriseDB ONLY.
    # @param id [String] Deployment ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_remotes(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "list_remotes")
      headers.merge!(sdk_headers)

      method_url = "/deployments/%s/remotes" % [ERB::Util.url_encode(id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method resync_replica(id:)
    # Resync read-only replica.
    # Reinitialize a read-only replica. Available for PostgreSQL and EnterpriseDB ONLY.
    # @param id [String] Deployment ID of the read-only replica.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def resync_replica(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "resync_replica")
      headers.merge!(sdk_headers)

      method_url = "/deployments/%s/remotes/resync" % [ERB::Util.url_encode(id)]

      response = request(
        method: "POST",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method set_promotion(id:, promotion:)
    # Promote read-only replica to a full deployment.
    # Promote a read-only replica or upgrade and promote a read-only replica. Available
    #   for PostgreSQL and EnterpriseDB ONLY.
    # @param id [String] Deployment ID of the read-only replica to promote.
    # @param promotion [SetPromotionPromotion]
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def set_promotion(id:, promotion:)
      raise ArgumentError.new("id must be provided") if id.nil?

      raise ArgumentError.new("promotion must be provided") if promotion.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "set_promotion")
      headers.merge!(sdk_headers)

      data = {
        "Promotion" => promotion
      }

      method_url = "/deployments/%s/remotes/promotion" % [ERB::Util.url_encode(id)]

      response = request(
        method: "POST",
        url: method_url,
        headers: headers,
        json: data,
        accept_json: true
      )
      response
    end
    #########################
    # Tasks
    #########################

    ##
    # @!method list_deployment_tasks(id:)
    # List currently running tasks on a deployment.
    # Obtain a list of tasks currently running or recently run on a deployment. Tasks
    #   are ephemeral. Records of successful tasks are shown for 24-48 hours, and
    #   unsuccessful tasks are shown for 7-8 days.
    # @param id [String] Deployment ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_deployment_tasks(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "list_deployment_tasks")
      headers.merge!(sdk_headers)

      method_url = "/deployments/%s/tasks" % [ERB::Util.url_encode(id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method get_task(id:)
    # Get information about a task.
    # Get information about a task and its status. Tasks themselves are persistent so
    #   old tasks can be consulted as well as running tasks.
    # @param id [String] Task ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_task(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "get_task")
      headers.merge!(sdk_headers)

      method_url = "/tasks/%s" % [ERB::Util.url_encode(id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end
    #########################
    # Backups
    #########################

    ##
    # @!method get_backup_info(backup_id:)
    # Get information about a backup.
    # Get information about a backup, such as creation date.
    # @param backup_id [String] Backup ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_backup_info(backup_id:)
      raise ArgumentError.new("backup_id must be provided") if backup_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "get_backup_info")
      headers.merge!(sdk_headers)

      method_url = "/backups/%s" % [ERB::Util.url_encode(backup_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method list_deployment_backups(id:)
    # List currently available backups from a deployment.
    # Get details of all currently available backups from a deployment.
    # @param id [String] Deployment ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_deployment_backups(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "list_deployment_backups")
      headers.merge!(sdk_headers)

      method_url = "/deployments/%s/backups" % [ERB::Util.url_encode(id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method start_ondemand_backup(id:)
    # Initiate an on-demand backup.
    # Signal the platform to create an on-demand backup for the specified deployment.
    #   The returned task can be polled to track progress of the backup as it takes place.
    # @param id [String] Deployment ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def start_ondemand_backup(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "start_ondemand_backup")
      headers.merge!(sdk_headers)

      method_url = "/deployments/%s/backups" % [ERB::Util.url_encode(id)]

      response = request(
        method: "POST",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method get_pit_rdata(id:)
    # Get earliest point-in-time-recovery timestamp.
    # Returns the earliest available time for point-in-time-recovery in ISO8601 UTC
    #   format. PostgreSQL and EnterpriseDB only.
    # @param id [String] Deployment ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_pit_rdata(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "get_pit_rdata")
      headers.merge!(sdk_headers)

      method_url = "/deployments/%s/point_in_time_recovery_data" % [ERB::Util.url_encode(id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end
    #########################
    # Connections
    #########################

    ##
    # @!method get_connection(id:, user_type:, user_id:, endpoint_type:, certificate_root: nil)
    # Discover connection information for a deployment for a user with an endpoint
    #   type.
    # Discover connection information for a deployment for a user with an endpoint type.
    # @param id [String] Deployment ID.
    # @param user_type [String] User type.
    # @param user_id [String] User ID.
    # @param endpoint_type [String] Endpoint Type. The endpoint must be enabled on the deployment before its
    #   connection information can be fetched.
    # @param certificate_root [String] Optional certificate root path to prepend certificate names. Certificates would be
    #   stored in this directory for use by other commands.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_connection(id:, user_type:, user_id:, endpoint_type:, certificate_root: nil)
      raise ArgumentError.new("id must be provided") if id.nil?

      raise ArgumentError.new("user_type must be provided") if user_type.nil?

      raise ArgumentError.new("user_id must be provided") if user_id.nil?

      raise ArgumentError.new("endpoint_type must be provided") if endpoint_type.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "get_connection")
      headers.merge!(sdk_headers)

      params = {
        "certificate_root" => certificate_root
      }

      method_url = "/deployments/%s/users/%s/%s/connections/%s" % [ERB::Util.url_encode(id), ERB::Util.url_encode(user_type), ERB::Util.url_encode(user_id), ERB::Util.url_encode(endpoint_type)]

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
    # @!method complete_connection(id:, user_type:, user_id:, endpoint_type:, password: nil, certificate_root: nil)
    # Discover connection information for a deployment for a user with substitutions
    #   and an endpoint type.
    # Discover connection information for a deployment for a user. Behaves the same as
    #   the GET method but substitutes the provided password parameter into the returned
    #   connection information.
    # @param id [String] Deployment ID.
    # @param user_type [String] User type of `database` is the only currently supported value.
    # @param user_id [String] User ID.
    # @param endpoint_type [String] Endpoint Type. The select endpoint must be enabled on the deployment before its
    #   connection information can be fetched.
    # @param password [String] Password to be substituted into the response.
    # @param certificate_root [String] Optional certificate root path to prepend certificate names. Certificates would be
    #   stored in this directory for use by other commands.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def complete_connection(id:, user_type:, user_id:, endpoint_type:, password: nil, certificate_root: nil)
      raise ArgumentError.new("id must be provided") if id.nil?

      raise ArgumentError.new("user_type must be provided") if user_type.nil?

      raise ArgumentError.new("user_id must be provided") if user_id.nil?

      raise ArgumentError.new("endpoint_type must be provided") if endpoint_type.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "complete_connection")
      headers.merge!(sdk_headers)

      data = {
        "password" => password,
        "certificate_root" => certificate_root
      }

      method_url = "/deployments/%s/users/%s/%s/connections/%s" % [ERB::Util.url_encode(id), ERB::Util.url_encode(user_type), ERB::Util.url_encode(user_id), ERB::Util.url_encode(endpoint_type)]

      response = request(
        method: "POST",
        url: method_url,
        headers: headers,
        json: data,
        accept_json: true
      )
      response
    end
    #########################
    # Scaling
    #########################

    ##
    # @!method list_deployment_scaling_groups(id:)
    # List currently available scaling groups from a deployment.
    # Scaling groups represent the various resources that are allocated to a deployment.
    #   This command allows for the retrieval of all of the groups for a particular
    #   deployment.
    # @param id [String] Deployment ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def list_deployment_scaling_groups(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "list_deployment_scaling_groups")
      headers.merge!(sdk_headers)

      method_url = "/deployments/%s/groups" % [ERB::Util.url_encode(id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method get_default_scaling_groups(type:)
    # Get default scaling groups for a new deployment.
    # Scaling groups represent the various resources allocated to a deployment. When a
    #   new deployment is created, there are a set of defaults for each database type.
    #   This endpoint returns them for a particular database.
    # @param type [String] Database type name.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_default_scaling_groups(type:)
      raise ArgumentError.new("type must be provided") if type.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "get_default_scaling_groups")
      headers.merge!(sdk_headers)

      method_url = "/deployables/%s/groups" % [ERB::Util.url_encode(type)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method set_deployment_scaling_group(id:, group_id:, set_deployment_scaling_group_request:)
    # Set scaling values on a specified group.
    # Set scaling value on a specified group. Can only be performed on
    #   is_adjustable=true groups. Values set are for the group as a whole and resources
    #   are distributed amongst the group. Values must be greater than or equal to the
    #   minimum size and must be a multiple of the step size.
    # @param id [String] Deployment ID.
    # @param group_id [String] Group Id.
    # @param set_deployment_scaling_group_request [SetDeploymentScalingGroupRequest] Scaling group settings.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def set_deployment_scaling_group(id:, group_id:, set_deployment_scaling_group_request:)
      raise ArgumentError.new("id must be provided") if id.nil?

      raise ArgumentError.new("group_id must be provided") if group_id.nil?

      raise ArgumentError.new("set_deployment_scaling_group_request must be provided") if set_deployment_scaling_group_request.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "set_deployment_scaling_group")
      headers.merge!(sdk_headers)

      data = set_deployment_scaling_group_request
      headers["Content-Type"] = "application/json"

      method_url = "/deployments/%s/groups/%s" % [ERB::Util.url_encode(id), ERB::Util.url_encode(group_id)]

      response = request(
        method: "PATCH",
        url: method_url,
        headers: headers,
        data: data,
        accept_json: true
      )
      response
    end
    #########################
    # Autoscaling
    #########################

    ##
    # @!method get_autoscaling_conditions(id:, group_id:)
    # Get the autoscaling configuration from a deployment.
    # The Autoscaling configuration represents the various conditions that control
    #   autoscaling for a deployment. This command allows for the retrieval of all
    #   autoscaling conditions for a particular deployment.
    # @param id [String] Deployment ID.
    # @param group_id [String] Group ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_autoscaling_conditions(id:, group_id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      raise ArgumentError.new("group_id must be provided") if group_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "get_autoscaling_conditions")
      headers.merge!(sdk_headers)

      method_url = "/deployments/%s/groups/%s/autoscaling" % [ERB::Util.url_encode(id), ERB::Util.url_encode(group_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method set_autoscaling_conditions(id:, group_id:, autoscaling:)
    # Set the autoscaling configuration from a deployment.
    # Enable, disable, or set the conditions for autoscaling on your deployment. Memory,
    #   disk, and CPU (if available) can be set separately and are not all required.
    # @param id [String] Deployment ID.
    # @param group_id [String] Group ID.
    # @param autoscaling [AutoscalingSetGroupAutoscaling]
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def set_autoscaling_conditions(id:, group_id:, autoscaling:)
      raise ArgumentError.new("id must be provided") if id.nil?

      raise ArgumentError.new("group_id must be provided") if group_id.nil?

      raise ArgumentError.new("autoscaling must be provided") if autoscaling.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "set_autoscaling_conditions")
      headers.merge!(sdk_headers)

      data = {
        "autoscaling" => autoscaling
      }

      method_url = "/deployments/%s/groups/%s/autoscaling" % [ERB::Util.url_encode(id), ERB::Util.url_encode(group_id)]

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
    # Management
    #########################

    ##
    # @!method kill_connections(id:)
    # Kill connections to a PostgreSQL or EnterpriseDB deployment.
    # Closes all the connections on a deployment. Available for PostgreSQL and
    #   EnterpriseDB ONLY.
    # @param id [String] Deployment ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def kill_connections(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "kill_connections")
      headers.merge!(sdk_headers)

      method_url = "/deployments/%s/management/database_connections" % [ERB::Util.url_encode(id)]

      response = request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end
    #########################
    # Security
    #########################

    ##
    # @!method get_allowlist(id:)
    # Retrieve the allowlisted addresses and ranges for a deployment.
    # Retrieve the allowlisted addresses and ranges for a deployment.
    # @param id [String] Deployment ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def get_allowlist(id:)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "get_allowlist")
      headers.merge!(sdk_headers)

      method_url = "/deployments/%s/whitelists/ip_addresses" % [ERB::Util.url_encode(id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method set_allowlist(id:, ip_addresses: nil, if_match: nil)
    # Set the allowlist for a deployment.
    # Set the allowlist for a deployment. This action overwrites all existing entries,
    #   so when you modify the allowlist via a GET/update/PUT, provide the GET response's
    #   ETag header value in this endpoint's If-Match header to ensure that changes that
    #   are made by other clients are not accidentally overwritten.
    # @param id [String] Deployment ID.
    # @param ip_addresses [Array[AllowlistEntry]] An array of allowlist entries.
    # @param if_match [String] Verify that the current allowlist matches a provided ETag value. Use in
    #   conjunction with the GET operation's ETag header to ensure synchronicity between
    #   clients.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def set_allowlist(id:, ip_addresses: nil, if_match: nil)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
        "If-Match" => if_match
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "set_allowlist")
      headers.merge!(sdk_headers)

      data = {
        "ip_addresses" => ip_addresses
      }

      method_url = "/deployments/%s/whitelists/ip_addresses" % [ERB::Util.url_encode(id)]

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
    # @!method add_allowlist_entry(id:, ip_address: nil)
    # Add an address or range to the allowlist for a deployment.
    # Add an address or range to the allowlist for a deployment.
    # @param id [String] Deployment ID.
    # @param ip_address [AllowlistEntry]
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def add_allowlist_entry(id:, ip_address: nil)
      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "add_allowlist_entry")
      headers.merge!(sdk_headers)

      data = {
        "ip_address" => ip_address
      }

      method_url = "/deployments/%s/whitelists/ip_addresses" % [ERB::Util.url_encode(id)]

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
    # @!method delete_allowlist_entry(id:, ipaddress:)
    # Delete an address or range from the allowlist of a deployment.
    # Delete an address or range from the allowlist of a deployment.
    # @param id [String] Deployment ID.
    # @param ipaddress [String] An IPv4 address or a CIDR range (netmasked IPv4 address).
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def delete_allowlist_entry(id:, ipaddress:)
      raise ArgumentError.new("id must be provided") if id.nil?

      raise ArgumentError.new("ipaddress must be provided") if ipaddress.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("cloud_databases", "V5", "delete_allowlist_entry")
      headers.merge!(sdk_headers)

      method_url = "/deployments/%s/whitelists/ip_addresses/%s" % [ERB::Util.url_encode(id), ERB::Util.url_encode(ipaddress)]

      response = request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end
  end
end
