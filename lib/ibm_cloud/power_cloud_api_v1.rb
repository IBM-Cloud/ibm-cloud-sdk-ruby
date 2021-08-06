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
# IBM Power Cloud API for Power Hardware / Infrastructure

require "concurrent"
require "erb"
require "json"
require "ibm_cloud_sdk_core"
require_relative "./common.rb"

module IBMCloud
  ##
  # The Power Cloud API V1 service.
  class PowerCloudApiV1 < IBMCloudSdkCore::BaseService
    include Concurrent::Async
    DEFAULT_SERVICE_NAME = "power_cloud_api"
    DEFAULT_SERVICE_URL = "https://power-cloud-api.cloud.ibm.com"
    ##
    # @!method initialize(args)
    # Construct a new client for the Power Cloud API service.
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
    # pCloudCloudConnections
    #########################

    ##
    # @!method pcloud_cloudconnections_virtualprivateclouds_getall(cloud_instance_id:)
    # Get all virtual private clouds in a specific cloud instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_cloudconnections_virtualprivateclouds_getall(cloud_instance_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudconnections_virtualprivateclouds_getall")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/cloud-connections-virtual-private-clouds" % [ERB::Util.url_encode(cloud_instance_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_cloudconnections_getall(cloud_instance_id:)
    # Get all Cloud connections in a specific cloud instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_cloudconnections_getall(cloud_instance_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudconnections_getall")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/cloud-connections" % [ERB::Util.url_encode(cloud_instance_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_cloudconnections_post(cloud_instance_id:, name:, speed:, global_routing: nil, metered: nil)
    # Create a new Cloud connection.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param name [String] name of the cloud connection.
    # @param speed [Fixnum] speed of the cloud connection (speed in megabits per second).
    # @param global_routing [Boolean] enable global routing for this cloud connection (default=false).
    # @param metered [Boolean] enable metered for this cloud connection (default=false).
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_cloudconnections_post(cloud_instance_id:, name:, speed:, global_routing: nil, metered: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("name must be provided") if name.nil?

      raise ArgumentError.new("speed must be provided") if speed.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudconnections_post")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "speed" => speed,
        "globalRouting" => global_routing,
        "metered" => metered
      }

      method_url = "/pcloud/v1/cloud-instances/%s/cloud-connections" % [ERB::Util.url_encode(cloud_instance_id)]

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
    # @!method pcloud_cloudconnections_get(cloud_instance_id:, cloud_connection_id:)
    # Get a Cloud connection's state or information.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param cloud_connection_id [String] Cloud connection ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_cloudconnections_get(cloud_instance_id:, cloud_connection_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("cloud_connection_id must be provided") if cloud_connection_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudconnections_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/cloud-connections/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(cloud_connection_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_cloudconnections_put(cloud_instance_id:, cloud_connection_id:, name: nil, speed: nil, global_routing: nil, metered: nil, classic: nil, vpc: nil)
    # Update a Cloud connection.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param cloud_connection_id [String] Cloud connection ID.
    # @param name [String] name of the cloud connection.
    # @param speed [Fixnum] speed of the cloud connection (speed in megabits per second).
    # @param global_routing [Boolean] enable global routing for this cloud connection (default=false).
    # @param metered [Boolean] enable metered for this cloud connection (default=false).
    # @param classic [CloudConnectionEndpointClassic]
    # @param vpc [CloudConnectionEndpointVPC]
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_cloudconnections_put(cloud_instance_id:, cloud_connection_id:, name: nil, speed: nil, global_routing: nil, metered: nil, classic: nil, vpc: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("cloud_connection_id must be provided") if cloud_connection_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudconnections_put")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "speed" => speed,
        "globalRouting" => global_routing,
        "metered" => metered,
        "classic" => classic,
        "vpc" => vpc
      }

      method_url = "/pcloud/v1/cloud-instances/%s/cloud-connections/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(cloud_connection_id)]

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
    # @!method pcloud_cloudconnections_delete(cloud_instance_id:, cloud_connection_id:)
    # Delete a Cloud connection.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param cloud_connection_id [String] Cloud connection ID.
    # @return [nil]
    def pcloud_cloudconnections_delete(cloud_instance_id:, cloud_connection_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("cloud_connection_id must be provided") if cloud_connection_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudconnections_delete")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/cloud-connections/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(cloud_connection_id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: false
      )
      nil
    end

    ##
    # @!method pcloud_cloudconnections_networks_put(cloud_instance_id:, cloud_connection_id:, network_id:)
    # Add a network to the Cloud connection.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param cloud_connection_id [String] Cloud connection ID.
    # @param network_id [String] Network ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_cloudconnections_networks_put(cloud_instance_id:, cloud_connection_id:, network_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("cloud_connection_id must be provided") if cloud_connection_id.nil?

      raise ArgumentError.new("network_id must be provided") if network_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudconnections_networks_put")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/cloud-connections/%s/networks/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(cloud_connection_id), ERB::Util.url_encode(network_id)]

      response = request(
        method: "PUT",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_cloudconnections_networks_delete(cloud_instance_id:, cloud_connection_id:, network_id:)
    # Delete a network from a Cloud connection.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param cloud_connection_id [String] Cloud connection ID.
    # @param network_id [String] Network ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_cloudconnections_networks_delete(cloud_instance_id:, cloud_connection_id:, network_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("cloud_connection_id must be provided") if cloud_connection_id.nil?

      raise ArgumentError.new("network_id must be provided") if network_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudconnections_networks_delete")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/cloud-connections/%s/networks/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(cloud_connection_id), ERB::Util.url_encode(network_id)]

      response = request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: false
      )
      response
    end
    #########################
    # pCloudEvents
    #########################

    ##
    # @!method pcloud_events_getsince(cloud_instance_id:, time:, accept_language: nil)
    # Get events from this cloud instance since a specific timestamp.
    # You must append the '?time=' query parameter to the cURL URL to get a list of
    #   events.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param time [String] (deprecated - use from_time) A time in either ISO 8601 or unix epoch format.
    # @param accept_language [String] The language requested for the return document.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_events_getsince(cloud_instance_id:, time:, accept_language: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("time must be provided") if time.nil?

      headers = {
        "Accept-Language" => accept_language
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_events_getsince")
      headers.merge!(sdk_headers)

      params = {
        "time" => time
      }

      method_url = "/pcloud/v1/cloud-instances/%s/events" % [ERB::Util.url_encode(cloud_instance_id)]

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
    # @!method pcloud_events_get(cloud_instance_id:, event_id:, accept_language: nil)
    # Get a single event.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param event_id [String] Event ID.
    # @param accept_language [String] The language requested for the return document.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_events_get(cloud_instance_id:, event_id:, accept_language: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("event_id must be provided") if event_id.nil?

      headers = {
        "Accept-Language" => accept_language
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_events_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/events/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(event_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end
    #########################
    # pCloudImages
    #########################

    ##
    # @!method pcloud_images_getall(sap: nil)
    # Deprecated for /pcloud/v1/cloud-instances/${CLOUD_INSTANCE_ID}/stock-images -
    #   List all available stock images.
    # @param sap [Boolean] Include SAP images with get available stock images.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_images_getall(sap: nil)
      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_images_getall")
      headers.merge!(sdk_headers)

      params = {
        "sap" => sap
      }

      method_url = "/pcloud/v1/images"

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
    # @!method pcloud_images_get(image_id:)
    # Deprecated for
    #   /pcloud/v1/cloud-instances/${CLOUD_INSTANCE_ID}/stock-images/{image_id} - Detailed
    #   info of an available stock image.
    # @param image_id [String] Image ID of a image.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_images_get(image_id:)
      raise ArgumentError.new("image_id must be provided") if image_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_images_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/images/%s" % [ERB::Util.url_encode(image_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_cloudinstances_stockimages_getall(cloud_instance_id:, sap: nil)
    # List all available stock images.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param sap [Boolean] Include SAP images with get available stock images.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_cloudinstances_stockimages_getall(cloud_instance_id:, sap: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudinstances_stockimages_getall")
      headers.merge!(sdk_headers)

      params = {
        "sap" => sap
      }

      method_url = "/pcloud/v1/cloud-instances/%s/stock-images" % [ERB::Util.url_encode(cloud_instance_id)]

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
    # @!method pcloud_cloudinstances_stockimages_get(cloud_instance_id:, image_id:)
    # Detailed info of an available stock image.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param image_id [String] Image ID of a image.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_cloudinstances_stockimages_get(cloud_instance_id:, image_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("image_id must be provided") if image_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudinstances_stockimages_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/stock-images/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(image_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_cloudinstances_images_getall(cloud_instance_id:)
    # List all of the images for this cloud instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_cloudinstances_images_getall(cloud_instance_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudinstances_images_getall")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/images" % [ERB::Util.url_encode(cloud_instance_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_cloudinstances_images_post(cloud_instance_id:, source:, image_id: nil, image_name: nil, image_path: nil, region: nil, image_filename: nil, bucket_name: nil, access_key: nil, secret_key: nil, os_type: nil, disk_type: nil)
    # Create a new image from available images.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param source [String] Source of the image. The root-project value is used to import an available stock
    #   image into a PCloud instance image catalog. The url value is used to import a
    #   custom image from a Cloud storage account into a PCloud instance image catalog.
    # @param image_id [String] Image ID of existing stock image; required for copy image.
    # @param image_name [String] Name to specify a custom image that is imported from Cloud Object Storage. You
    #   must not use this property when you import an available stock image. Stock image
    #   names cannot be changed.
    # @param image_path [String] (deprecated - replaced by region, imageFilename and bucketName) Path to image
    #   starting with service endpoint and ending with image filename.
    # @param region [String] Cloud Storage Region; only required to access IBM Cloud Storage.
    # @param image_filename [String] Cloud Storage image filename; required for import image.
    # @param bucket_name [String] Cloud Storage bucket name; bucket-name[/optional/folder]; required for import
    #   image.
    # @param access_key [String] Cloud Storage access key; required for import image.
    # @param secret_key [String] Cloud Storage secret key; required for import image.
    # @param os_type [String] Image OS Type, required if importing a raw image; raw images can only be imported
    #   using the command line interface.
    # @param disk_type [String] Type of Disk.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_cloudinstances_images_post(cloud_instance_id:, source:, image_id: nil, image_name: nil, image_path: nil, region: nil, image_filename: nil, bucket_name: nil, access_key: nil, secret_key: nil, os_type: nil, disk_type: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("source must be provided") if source.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudinstances_images_post")
      headers.merge!(sdk_headers)

      data = {
        "source" => source,
        "imageID" => image_id,
        "imageName" => image_name,
        "imagePath" => image_path,
        "region" => region,
        "imageFilename" => image_filename,
        "bucketName" => bucket_name,
        "accessKey" => access_key,
        "secretKey" => secret_key,
        "osType" => os_type,
        "diskType" => disk_type
      }

      method_url = "/pcloud/v1/cloud-instances/%s/images" % [ERB::Util.url_encode(cloud_instance_id)]

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
    # @!method pcloud_cloudinstances_images_get(cloud_instance_id:, image_id:)
    # Detailed information of an image.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param image_id [String] Image ID of a image.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_cloudinstances_images_get(cloud_instance_id:, image_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("image_id must be provided") if image_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudinstances_images_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/images/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(image_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_cloudinstances_images_delete(cloud_instance_id:, image_id:)
    # Delete an image from a cloud instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param image_id [String] Image ID of a image.
    # @return [nil]
    def pcloud_cloudinstances_images_delete(cloud_instance_id:, image_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("image_id must be provided") if image_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudinstances_images_delete")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/images/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(image_id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: false
      )
      nil
    end

    ##
    # @!method pcloud_cloudinstances_images_export_post(cloud_instance_id:, image_id:, bucket_name:, access_key:, region: nil, secret_key: nil)
    # Export an image.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param image_id [String] Image ID of a image.
    # @param bucket_name [String] Cloud Object Storage Bucket name.
    # @param access_key [String] Cloud Object Storage Access key.
    # @param region [String] Cloud Object Storage Region; required for IBM COS.
    # @param secret_key [String] Cloud Object Storage Secret key.
    # @return [nil]
    def pcloud_cloudinstances_images_export_post(cloud_instance_id:, image_id:, bucket_name:, access_key:, region: nil, secret_key: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("image_id must be provided") if image_id.nil?

      raise ArgumentError.new("bucket_name must be provided") if bucket_name.nil?

      raise ArgumentError.new("access_key must be provided") if access_key.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudinstances_images_export_post")
      headers.merge!(sdk_headers)

      data = {
        "bucketName" => bucket_name,
        "accessKey" => access_key,
        "region" => region,
        "secretKey" => secret_key
      }

      method_url = "/pcloud/v1/cloud-instances/%s/images/%s/export" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(image_id)]

      request(
        method: "POST",
        url: method_url,
        headers: headers,
        json: data,
        accept_json: true
      )
      nil
    end
    #########################
    # pCloudInstances
    #########################

    ##
    # @!method pcloud_cloudinstances_get(cloud_instance_id:)
    # Get a cloud instance's current state or information.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_cloudinstances_get(cloud_instance_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudinstances_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s" % [ERB::Util.url_encode(cloud_instance_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_cloudinstances_put(cloud_instance_id:, processors: nil, proc_units: nil, memory: nil, instances: nil, storage: nil)
    # Update or upgrade a cloud instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param processors [Float] Number of processors allowed.
    # @param proc_units [Float] Number of processor units allowed.
    # @param memory [Float] Amount of memory allowed.
    # @param instances [Float] Number of power instances allowed.
    # @param storage [Float] Amount of storage allowed (TB).
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_cloudinstances_put(cloud_instance_id:, processors: nil, proc_units: nil, memory: nil, instances: nil, storage: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudinstances_put")
      headers.merge!(sdk_headers)

      data = {
        "processors" => processors,
        "procUnits" => proc_units,
        "memory" => memory,
        "instances" => instances,
        "storage" => storage
      }

      method_url = "/pcloud/v1/cloud-instances/%s" % [ERB::Util.url_encode(cloud_instance_id)]

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
    # @!method pcloud_cloudinstances_delete(cloud_instance_id:)
    # Delete a Power Cloud instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @return [nil]
    def pcloud_cloudinstances_delete(cloud_instance_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudinstances_delete")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s" % [ERB::Util.url_encode(cloud_instance_id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: false
      )
      nil
    end
    #########################
    # pCloudNetworks
    #########################

    ##
    # @!method pcloud_networks_getall(cloud_instance_id:, filter: nil)
    # Get all networks in this cloud instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param filter [String] A filter expression that filters resources listed in the response.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_networks_getall(cloud_instance_id:, filter: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_networks_getall")
      headers.merge!(sdk_headers)

      params = {
        "filter" => filter
      }

      method_url = "/pcloud/v1/cloud-instances/%s/networks" % [ERB::Util.url_encode(cloud_instance_id)]

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
    # @!method pcloud_networks_post(cloud_instance_id:, type:, name: nil, cidr: nil, gateway: nil, dns_servers: nil, ip_address_ranges: nil, jumbo: nil)
    # Create a new network.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param type [String] Type of Network - 'vlan' (private network) 'pub-vlan' (public network).
    # @param name [String] Network Name.
    # @param cidr [String] Network in CIDR notation (192.168.0.0/24).
    # @param gateway [String] Gateway IP Address.
    # @param dns_servers [Array[String]] DNS Servers.
    # @param ip_address_ranges [Array[IPAddressRange]] IP Address Ranges.
    # @param jumbo [Boolean] Enable MTU Jumbo Network.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_networks_post(cloud_instance_id:, type:, name: nil, cidr: nil, gateway: nil, dns_servers: nil, ip_address_ranges: nil, jumbo: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("type must be provided") if type.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_networks_post")
      headers.merge!(sdk_headers)

      data = {
        "type" => type,
        "name" => name,
        "cidr" => cidr,
        "gateway" => gateway,
        "dnsServers" => dns_servers,
        "ipAddressRanges" => ip_address_ranges,
        "jumbo" => jumbo
      }

      method_url = "/pcloud/v1/cloud-instances/%s/networks" % [ERB::Util.url_encode(cloud_instance_id)]

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
    # @!method pcloud_networks_get(cloud_instance_id:, network_id:)
    # Get a network's current state or information.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param network_id [String] Network ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_networks_get(cloud_instance_id:, network_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("network_id must be provided") if network_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_networks_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/networks/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(network_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_networks_put(cloud_instance_id:, network_id:, name: nil, gateway: nil, dns_servers: nil, ip_address_ranges: nil)
    # Update a network.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param network_id [String] Network ID.
    # @param name [String] Replaces the current Network Name.
    # @param gateway [String] Replaces the current Gateway IP Address.
    # @param dns_servers [Array[String]] Replaces the current DNS Servers.
    # @param ip_address_ranges [Array[IPAddressRange]] Replaces the current IP Address Ranges.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_networks_put(cloud_instance_id:, network_id:, name: nil, gateway: nil, dns_servers: nil, ip_address_ranges: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("network_id must be provided") if network_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_networks_put")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "gateway" => gateway,
        "dnsServers" => dns_servers,
        "ipAddressRanges" => ip_address_ranges
      }

      method_url = "/pcloud/v1/cloud-instances/%s/networks/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(network_id)]

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
    # @!method pcloud_networks_delete(cloud_instance_id:, network_id:)
    # Delete a network.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param network_id [String] Network ID.
    # @return [nil]
    def pcloud_networks_delete(cloud_instance_id:, network_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("network_id must be provided") if network_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_networks_delete")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/networks/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(network_id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: false
      )
      nil
    end

    ##
    # @!method pcloud_networks_ports_getall(cloud_instance_id:, network_id:)
    # Get all ports for this network.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param network_id [String] Network ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_networks_ports_getall(cloud_instance_id:, network_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("network_id must be provided") if network_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_networks_ports_getall")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/networks/%s/ports" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(network_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_networks_ports_post(cloud_instance_id:, network_id:, description: nil, ip_address: nil)
    # Perform port addition, deletion, and listing.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param network_id [String] Network ID.
    # @param description [String] Description of the port (not unique or indexable).
    # @param ip_address [String] The requested ip address of this port.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_networks_ports_post(cloud_instance_id:, network_id:, description: nil, ip_address: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("network_id must be provided") if network_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_networks_ports_post")
      headers.merge!(sdk_headers)

      data = {
        "description" => description,
        "ipAddress" => ip_address
      }

      method_url = "/pcloud/v1/cloud-instances/%s/networks/%s/ports" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(network_id)]

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
    # @!method pcloud_networks_ports_get(cloud_instance_id:, network_id:, port_id:, accept: nil)
    # Get a port's information.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param network_id [String] Network ID.
    # @param port_id [String] Port ID.
    # @param accept [String] The type of the response: application/json or applicaton/json.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_networks_ports_get(cloud_instance_id:, network_id:, port_id:, accept: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("network_id must be provided") if network_id.nil?

      raise ArgumentError.new("port_id must be provided") if port_id.nil?

      headers = {
        "Accept" => accept
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_networks_ports_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/networks/%s/ports/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(network_id), ERB::Util.url_encode(port_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_networks_ports_put(cloud_instance_id:, network_id:, port_id:, description: nil, pvm_instance_id: nil)
    # Update a port's information.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param network_id [String] Network ID.
    # @param port_id [String] Port ID.
    # @param description [String] Description of the port (not unique or indexable).
    # @param pvm_instance_id [String] If supplied populated it attaches to the PVMInstanceID, if empty detaches from
    #   PVMInstanceID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_networks_ports_put(cloud_instance_id:, network_id:, port_id:, description: nil, pvm_instance_id: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("network_id must be provided") if network_id.nil?

      raise ArgumentError.new("port_id must be provided") if port_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_networks_ports_put")
      headers.merge!(sdk_headers)

      data = {
        "description" => description,
        "pvmInstanceID" => pvm_instance_id
      }

      method_url = "/pcloud/v1/cloud-instances/%s/networks/%s/ports/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(network_id), ERB::Util.url_encode(port_id)]

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
    # @!method pcloud_networks_ports_delete(cloud_instance_id:, network_id:, port_id:)
    # Delete a network port.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param network_id [String] Network ID.
    # @param port_id [String] Port ID.
    # @return [nil]
    def pcloud_networks_ports_delete(cloud_instance_id:, network_id:, port_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("network_id must be provided") if network_id.nil?

      raise ArgumentError.new("port_id must be provided") if port_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_networks_ports_delete")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/networks/%s/ports/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(network_id), ERB::Util.url_encode(port_id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      nil
    end
    #########################
    # pCloudPVMInstances
    #########################

    ##
    # @!method pcloud_pvminstances_getall(cloud_instance_id:)
    # Get all the PVM instances for this cloud instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_pvminstances_getall(cloud_instance_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_getall")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances" % [ERB::Util.url_encode(cloud_instance_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_pvminstances_get(cloud_instance_id:, pvm_instance_id:)
    # Get a PVM instance's current state or information.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_pvminstances_get(cloud_instance_id:, pvm_instance_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_pvminstances_put(cloud_instance_id:, pvm_instance_id:, server_name: nil, processors: nil, proc_type: nil, memory: nil, migratable: nil, software_licenses: nil, pin_policy: nil, sap_profile_id: nil, virtual_cores: nil)
    # Update a PCloud PVM instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @param server_name [String] Name of the server to create.
    # @param processors [Float] Number of processors allocated.
    # @param proc_type [String] Processor type (dedicated, shared, capped).
    # @param memory [Float] Amount of memory allocated (in GB).
    # @param migratable [Boolean] Indicates if the server is allowed to migrate between hosts.
    # @param software_licenses [SoftwareLicenses]
    # @param pin_policy [String] Specify PVM pin policy.
    # @param sap_profile_id [String] If an SAP pvm-instance, the SAP profile ID to switch to (only while shutdown).
    # @param virtual_cores [VirtualCores]
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_pvminstances_put(cloud_instance_id:, pvm_instance_id:, server_name: nil, processors: nil, proc_type: nil, memory: nil, migratable: nil, software_licenses: nil, pin_policy: nil, sap_profile_id: nil, virtual_cores: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_put")
      headers.merge!(sdk_headers)

      data = {
        "serverName" => server_name,
        "processors" => processors,
        "procType" => proc_type,
        "memory" => memory,
        "migratable" => migratable,
        "softwareLicenses" => software_licenses,
        "pinPolicy" => pin_policy,
        "sapProfileID" => sap_profile_id,
        "virtualCores" => virtual_cores
      }

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id)]

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
    # @!method pcloud_pvminstances_delete(cloud_instance_id:, pvm_instance_id:, delete_data_volumes: nil)
    # Delete a PCloud PVM instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @param delete_data_volumes [Boolean] Indicates whether all data volumes attached to the PVMInstance must be deleted
    #   when deleting the PVMInstance. Shared data volumes will be deleted if no other
    #   PVMInstances are attached.
    # @return [nil]
    def pcloud_pvminstances_delete(cloud_instance_id:, pvm_instance_id:, delete_data_volumes: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_delete")
      headers.merge!(sdk_headers)

      params = {
        "delete_data_volumes" => delete_data_volumes
      }

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id)]

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
    # @!method pcloud_pvminstances_networks_getall(cloud_instance_id:, pvm_instance_id:)
    # Get all networks for this PVM instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_pvminstances_networks_getall(cloud_instance_id:, pvm_instance_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_networks_getall")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s/networks" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_pvminstances_networks_post(cloud_instance_id:, pvm_instance_id:, network_id:, ip_address: nil)
    # Perform network addition, deletion, and listing.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @param network_id [String] ID of the network.
    # @param ip_address [String] The requested ip address of this network interface.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_pvminstances_networks_post(cloud_instance_id:, pvm_instance_id:, network_id:, ip_address: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      raise ArgumentError.new("network_id must be provided") if network_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_networks_post")
      headers.merge!(sdk_headers)

      data = {
        "networkID" => network_id,
        "ipAddress" => ip_address
      }

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s/networks" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id)]

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
    # @!method pcloud_pvminstances_networks_get(cloud_instance_id:, pvm_instance_id:, network_id:)
    # Get a PVM instance's network information.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @param network_id [String] Network ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_pvminstances_networks_get(cloud_instance_id:, pvm_instance_id:, network_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      raise ArgumentError.new("network_id must be provided") if network_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_networks_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s/networks/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id), ERB::Util.url_encode(network_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_pvminstances_networks_delete(cloud_instance_id:, pvm_instance_id:, network_id:)
    # Remove all addresses of network from a PVM instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @param network_id [String] Network ID.
    # @return [nil]
    def pcloud_pvminstances_networks_delete(cloud_instance_id:, pvm_instance_id:, network_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      raise ArgumentError.new("network_id must be provided") if network_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_networks_delete")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s/networks/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id), ERB::Util.url_encode(network_id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      nil
    end

    ##
    # @!method pcloud_pvminstances_operations_post(cloud_instance_id:, pvm_instance_id:, operation_type:, operation:)
    # Perform an operation on a PVMInstance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @param operation_type [String] Name of the operation to execute; can be job or boot.
    # @param operation [Operations]
    # @return [nil]
    def pcloud_pvminstances_operations_post(cloud_instance_id:, pvm_instance_id:, operation_type:, operation:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      raise ArgumentError.new("operation_type must be provided") if operation_type.nil?

      raise ArgumentError.new("operation must be provided") if operation.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_operations_post")
      headers.merge!(sdk_headers)

      data = {
        "operationType" => operation_type,
        "operation" => operation
      }

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s/operations" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id)]

      request(
        method: "POST",
        url: method_url,
        headers: headers,
        json: data,
        accept_json: true
      )
      nil
    end

    ##
    # @!method pcloud_pvminstances_action_post(cloud_instance_id:, pvm_instance_id:, action:)
    # Perform an action (start stop reboot immediate-shutdown reset) on a PVMInstance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @param action [String] Name of the action to take; can be start, stop, hard-reboot, soft-reboot,
    #   immediate-shutdown, reset-state.
    # @return [nil]
    def pcloud_pvminstances_action_post(cloud_instance_id:, pvm_instance_id:, action:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      raise ArgumentError.new("action must be provided") if action.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_action_post")
      headers.merge!(sdk_headers)

      data = {
        "action" => action
      }

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s/action" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id)]

      request(
        method: "POST",
        url: method_url,
        headers: headers,
        json: data,
        accept_json: true
      )
      nil
    end

    ##
    # @!method pcloud_pvminstances_capture_post(cloud_instance_id:, pvm_instance_id:, capture_name:, capture_destination:, capture_volume_i_ds: nil, cloud_storage_image_path: nil, cloud_storage_region: nil, cloud_storage_access_key: nil, cloud_storage_secret_key: nil)
    # Capture a PVM instance and create a deployable image.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @param capture_name [String] Name of the deployable image created for the captured PVMInstance.
    # @param capture_destination [String] Destination for the deployable image.
    # @param capture_volume_i_ds [Array[String]] List of Data volume IDs to include in the captured PVMInstance.
    # @param cloud_storage_image_path [String] Cloud Storage Image Path (bucket-name [/folder/../..]).
    # @param cloud_storage_region [String] Cloud Storage Region.
    # @param cloud_storage_access_key [String] Cloud Storage Access key.
    # @param cloud_storage_secret_key [String] Cloud Storage Secret key.
    # @return [nil]
    def pcloud_pvminstances_capture_post(cloud_instance_id:, pvm_instance_id:, capture_name:, capture_destination:, capture_volume_i_ds: nil, cloud_storage_image_path: nil, cloud_storage_region: nil, cloud_storage_access_key: nil, cloud_storage_secret_key: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      raise ArgumentError.new("capture_name must be provided") if capture_name.nil?

      raise ArgumentError.new("capture_destination must be provided") if capture_destination.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_capture_post")
      headers.merge!(sdk_headers)

      data = {
        "captureName" => capture_name,
        "captureDestination" => capture_destination,
        "captureVolumeIDs" => capture_volume_i_ds,
        "cloudStorageImagePath" => cloud_storage_image_path,
        "cloudStorageRegion" => cloud_storage_region,
        "cloudStorageAccessKey" => cloud_storage_access_key,
        "cloudStorageSecretKey" => cloud_storage_secret_key
      }

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s/capture" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id)]

      request(
        method: "POST",
        url: method_url,
        headers: headers,
        json: data,
        accept_json: true
      )
      nil
    end

    ##
    # @!method pcloud_pvminstances_clone_post(cloud_instance_id:, pvm_instance_id:, name:, networks:, processors: nil, proc_type: nil, memory: nil, volume_i_ds: nil, key_pair_name: nil, software_licenses: nil)
    # Clone a PVMInstance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @param name [String] Name of the server to create.
    # @param networks [Array[PVMInstanceAddNetwork]] The pvm instance networks information.
    # @param processors [Float] Number of processors allocated.
    # @param proc_type [String] Processor type (dedicated, shared, capped).
    # @param memory [Float] Amount of memory allocated (in GB).
    # @param volume_i_ds [Array[String]] List of volume IDs.
    # @param key_pair_name [String] The name of the SSH key pair provided to the server for authenticating users
    #   (looked up in the tenant's list of keys).
    # @param software_licenses [SoftwareLicenses]
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_pvminstances_clone_post(cloud_instance_id:, pvm_instance_id:, name:, networks:, processors: nil, proc_type: nil, memory: nil, volume_i_ds: nil, key_pair_name: nil, software_licenses: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      raise ArgumentError.new("name must be provided") if name.nil?

      raise ArgumentError.new("networks must be provided") if networks.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_clone_post")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "networks" => networks,
        "processors" => processors,
        "procType" => proc_type,
        "memory" => memory,
        "volumeIDs" => volume_i_ds,
        "keyPairName" => key_pair_name,
        "softwareLicenses" => software_licenses
      }

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s/clone" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id)]

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
    # @!method pcloud_pvminstances_console_post(cloud_instance_id:, pvm_instance_id:)
    # Generate the noVNC console URL.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_pvminstances_console_post(cloud_instance_id:, pvm_instance_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_console_post")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s/console" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id)]

      response = request(
        method: "POST",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_pvminstances_snapshots_getall(cloud_instance_id:, pvm_instance_id:)
    # Get all snapshots for this PVM instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_pvminstances_snapshots_getall(cloud_instance_id:, pvm_instance_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_snapshots_getall")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s/snapshots" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_pvminstances_snapshots_post(cloud_instance_id:, pvm_instance_id:, name:, description: nil, volume_i_ds: nil)
    # Create a PVM instance snapshot.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @param name [String] Name of the PVM instance snapshot to create.
    # @param description [String] Description of the PVM instance snapshot.
    # @param volume_i_ds [Array[String]] List of volumes to include in the PVM instance snapshot. This parameter is
    #   optional. If you do not specify this parameter or if the volumeIDs list is empty,
    #   all the volumes that are attached to the PVM instance are included in the
    #   snapshot.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_pvminstances_snapshots_post(cloud_instance_id:, pvm_instance_id:, name:, description: nil, volume_i_ds: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      raise ArgumentError.new("name must be provided") if name.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_snapshots_post")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "description" => description,
        "volumeIDs" => volume_i_ds
      }

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s/snapshots" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id)]

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
    # @!method pcloud_pvminstances_snapshots_restore_post(cloud_instance_id:, pvm_instance_id:, snapshot_id:, force: nil, restore_fail_action: nil)
    # Restore a PVM Instance snapshot.
    # To roll back the clone operation, append '?restore_fail_action=rollback' to the
    #   cURL URL. If you'd like to try the clone operation again, append
    #   '?restore_fail_action=retry' to the cURL URL.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @param snapshot_id [String] PVM Instance snapshot id.
    # @param force [Boolean] By default the VM must be shutoff during a snapshot restore, force set to true
    #   will relax the VM shutoff pre-condition.
    # @param restore_fail_action [String] Action to take on a failed snapshot restore.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_pvminstances_snapshots_restore_post(cloud_instance_id:, pvm_instance_id:, snapshot_id:, force: nil, restore_fail_action: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      raise ArgumentError.new("snapshot_id must be provided") if snapshot_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_snapshots_restore_post")
      headers.merge!(sdk_headers)

      params = {
        "restore_fail_action" => restore_fail_action
      }

      data = {
        "force" => force
      }

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s/snapshots/%s/restore" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id), ERB::Util.url_encode(snapshot_id)]

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
    #########################
    # pCloudPlacementGroups
    #########################

    ##
    # @!method pcloud_placementgroups_getall(cloud_instance_id:)
    # Get all server placement groups.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_placementgroups_getall(cloud_instance_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_placementgroups_getall")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/placement-groups" % [ERB::Util.url_encode(cloud_instance_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_placementgroups_post(cloud_instance_id:, name:, policy:)
    # Create a server placement group.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param name [String] The name of the Placement Group.
    # @param policy [String] The Placement Group Policy.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_placementgroups_post(cloud_instance_id:, name:, policy:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("name must be provided") if name.nil?

      raise ArgumentError.new("policy must be provided") if policy.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_placementgroups_post")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "policy" => policy
      }

      method_url = "/pcloud/v1/cloud-instances/%s/placement-groups" % [ERB::Util.url_encode(cloud_instance_id)]

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
    # @!method pcloud_placementgroups_get(cloud_instance_id:, placement_group_id:)
    # Get server placement group details.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param placement_group_id [String] Placement Group ID or Placement Group Name.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_placementgroups_get(cloud_instance_id:, placement_group_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("placement_group_id must be provided") if placement_group_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_placementgroups_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/placement-groups/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(placement_group_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_placementgroups_delete(cloud_instance_id:, placement_group_id:)
    # Delete server placement group.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param placement_group_id [String] Placement Group ID or Placement Group Name.
    # @return [nil]
    def pcloud_placementgroups_delete(cloud_instance_id:, placement_group_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("placement_group_id must be provided") if placement_group_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_placementgroups_delete")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/placement-groups/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(placement_group_id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: false
      )
      nil
    end

    ##
    # @!method pcloud_placementgroups_members_post(cloud_instance_id:, placement_group_id:, id:)
    # Add server to placement group.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param placement_group_id [String] Placement Group ID or Placement Group Name.
    # @param id [String] The ID of the Server.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_placementgroups_members_post(cloud_instance_id:, placement_group_id:, id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("placement_group_id must be provided") if placement_group_id.nil?

      raise ArgumentError.new("id must be provided") if id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_placementgroups_members_post")
      headers.merge!(sdk_headers)

      data = {
        "id" => id
      }

      method_url = "/pcloud/v1/cloud-instances/%s/placement-groups/%s/members" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(placement_group_id)]

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
    # @!method pcloud_placementgroups_members_delete(cloud_instance_id:, placement_group_id:)
    # Remove server from placement group.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param placement_group_id [String] Placement Group ID or Placement Group Name.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_placementgroups_members_delete(cloud_instance_id:, placement_group_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("placement_group_id must be provided") if placement_group_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_placementgroups_members_delete")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/placement-groups/%s/members" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(placement_group_id)]

      response = request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end
    #########################
    # pCloudSAP
    #########################

    ##
    # @!method pcloud_sap_getall(cloud_instance_id:)
    # Get list of SAP profiles.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_sap_getall(cloud_instance_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_sap_getall")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/sap" % [ERB::Util.url_encode(cloud_instance_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_sap_get(cloud_instance_id:, sap_profile_id:)
    # Get the information on an SAP profile.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param sap_profile_id [String] SAP Profile ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_sap_get(cloud_instance_id:, sap_profile_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("sap_profile_id must be provided") if sap_profile_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_sap_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/sap/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(sap_profile_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end
    #########################
    # pCloudSnapshots
    #########################

    ##
    # @!method pcloud_cloudinstances_snapshots_getall(cloud_instance_id:)
    # List all PVM instance snapshots for this cloud instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_cloudinstances_snapshots_getall(cloud_instance_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudinstances_snapshots_getall")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/snapshots" % [ERB::Util.url_encode(cloud_instance_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_cloudinstances_snapshots_get(cloud_instance_id:, snapshot_id:)
    # Get the detail of a snapshot.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param snapshot_id [String] PVM Instance snapshot id.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_cloudinstances_snapshots_get(cloud_instance_id:, snapshot_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("snapshot_id must be provided") if snapshot_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudinstances_snapshots_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/snapshots/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(snapshot_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_cloudinstances_snapshots_put(cloud_instance_id:, snapshot_id:, name: nil, description: nil)
    # Update a PVM instance snapshot.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param snapshot_id [String] PVM Instance snapshot id.
    # @param name [String] Name of the PVM instance snapshot.
    # @param description [String] Description of the PVM instance snapshot.
    # @return [nil]
    def pcloud_cloudinstances_snapshots_put(cloud_instance_id:, snapshot_id:, name: nil, description: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("snapshot_id must be provided") if snapshot_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudinstances_snapshots_put")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "description" => description
      }

      method_url = "/pcloud/v1/cloud-instances/%s/snapshots/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(snapshot_id)]

      request(
        method: "PUT",
        url: method_url,
        headers: headers,
        json: data,
        accept_json: true
      )
      nil
    end

    ##
    # @!method pcloud_cloudinstances_snapshots_delete(cloud_instance_id:, snapshot_id:)
    # Delete a PVM instance snapshot of a cloud instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param snapshot_id [String] PVM Instance snapshot id.
    # @return [nil]
    def pcloud_cloudinstances_snapshots_delete(cloud_instance_id:, snapshot_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("snapshot_id must be provided") if snapshot_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudinstances_snapshots_delete")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/snapshots/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(snapshot_id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: false
      )
      nil
    end
    #########################
    # pCloudStorageCapacity
    #########################

    ##
    # @!method pcloud_storagecapacity_types_getall(cloud_instance_id:)
    # Storage capacity for all available storage types in a region.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_storagecapacity_types_getall(cloud_instance_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_storagecapacity_types_getall")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/storage-capacity/storage-types" % [ERB::Util.url_encode(cloud_instance_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_storagecapacity_types_get(cloud_instance_id:, storage_type_name:)
    # Storage capacity for a storage type in a region.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param storage_type_name [String] Storage type name.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_storagecapacity_types_get(cloud_instance_id:, storage_type_name:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("storage_type_name must be provided") if storage_type_name.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_storagecapacity_types_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/storage-capacity/storage-types/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(storage_type_name)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_storagecapacity_pools_getall(cloud_instance_id:)
    # Storage capacity for all available storage pools in a region.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_storagecapacity_pools_getall(cloud_instance_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_storagecapacity_pools_getall")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/storage-capacity/storage-pools" % [ERB::Util.url_encode(cloud_instance_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_storagecapacity_pools_get(cloud_instance_id:, storage_pool_name:)
    # Storage capacity for a storage pool in a region.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param storage_pool_name [String] Storage pool name.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_storagecapacity_pools_get(cloud_instance_id:, storage_pool_name:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("storage_pool_name must be provided") if storage_pool_name.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_storagecapacity_pools_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/storage-capacity/storage-pools/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(storage_pool_name)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end
    #########################
    # pCloudSystemPools
    #########################

    ##
    # @!method pcloud_systempools_get(cloud_instance_id:)
    # List of available system pools within a particular data center.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_systempools_get(cloud_instance_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_systempools_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/system-pools" % [ERB::Util.url_encode(cloud_instance_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end
    #########################
    # pCloudTasks
    #########################

    ##
    # @!method pcloud_tasks_get(task_id:)
    # Get a task.
    # @param task_id [String] PCloud Task ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_tasks_get(task_id:)
      raise ArgumentError.new("task_id must be provided") if task_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_tasks_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/tasks/%s" % [ERB::Util.url_encode(task_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_tasks_delete(task_id:)
    # Delete a task.
    # @param task_id [String] PCloud Task ID.
    # @return [nil]
    def pcloud_tasks_delete(task_id:)
      raise ArgumentError.new("task_id must be provided") if task_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_tasks_delete")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/tasks/%s" % [ERB::Util.url_encode(task_id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      nil
    end
    #########################
    # pCloudTenants
    #########################

    ##
    # @!method pcloud_tenants_get(tenant_id:)
    # Get a tenant's current state or information.
    # @param tenant_id [String] Tenant ID of a pcloud tenant.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_tenants_get(tenant_id:)
      raise ArgumentError.new("tenant_id must be provided") if tenant_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_tenants_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/tenants/%s" % [ERB::Util.url_encode(tenant_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_tenants_put(tenant_id:, icn: nil, peering_networks: nil)
    # Update a tenant.
    # @param tenant_id [String] Tenant ID of a pcloud tenant.
    # @param icn [String] IBM Customer Number.
    # @param peering_networks [Array[PeeringNetwork]] Peering Network Information (optional).
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_tenants_put(tenant_id:, icn: nil, peering_networks: nil)
      raise ArgumentError.new("tenant_id must be provided") if tenant_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_tenants_put")
      headers.merge!(sdk_headers)

      data = {
        "icn" => icn,
        "peeringNetworks" => peering_networks
      }

      method_url = "/pcloud/v1/tenants/%s" % [ERB::Util.url_encode(tenant_id)]

      response = request(
        method: "PUT",
        url: method_url,
        headers: headers,
        json: data,
        accept_json: true
      )
      response
    end
    #########################
    # pCloudTenantsSSHKeys
    #########################

    ##
    # @!method pcloud_tenants_sshkeys_getall(tenant_id:)
    # List a tenant's SSH Keys.
    # @param tenant_id [String] Tenant ID of a pcloud tenant.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_tenants_sshkeys_getall(tenant_id:)
      raise ArgumentError.new("tenant_id must be provided") if tenant_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_tenants_sshkeys_getall")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/tenants/%s/sshkeys" % [ERB::Util.url_encode(tenant_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_tenants_sshkeys_post(tenant_id:, name:, ssh_key:, creation_date: nil)
    # Add a new SSH key to the tenant.
    # @param tenant_id [String] Tenant ID of a pcloud tenant.
    # @param name [String] User defined name for the SSH key.
    # @param ssh_key [String] SSH RSA key.
    # @param creation_date [Time] Date of sshkey creation.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_tenants_sshkeys_post(tenant_id:, name:, ssh_key:, creation_date: nil)
      raise ArgumentError.new("tenant_id must be provided") if tenant_id.nil?

      raise ArgumentError.new("name must be provided") if name.nil?

      raise ArgumentError.new("ssh_key must be provided") if ssh_key.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_tenants_sshkeys_post")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "sshKey" => ssh_key,
        "creationDate" => creation_date
      }

      method_url = "/pcloud/v1/tenants/%s/sshkeys" % [ERB::Util.url_encode(tenant_id)]

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
    # @!method pcloud_tenants_sshkeys_get(tenant_id:, sshkey_name:)
    # Get a tenant's SSH Key by name.
    # @param tenant_id [String] Tenant ID of a pcloud tenant.
    # @param sshkey_name [String] SSH key name for a pcloud tenant.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_tenants_sshkeys_get(tenant_id:, sshkey_name:)
      raise ArgumentError.new("tenant_id must be provided") if tenant_id.nil?

      raise ArgumentError.new("sshkey_name must be provided") if sshkey_name.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_tenants_sshkeys_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/tenants/%s/sshkeys/%s" % [ERB::Util.url_encode(tenant_id), ERB::Util.url_encode(sshkey_name)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_tenants_sshkeys_put(tenant_id:, sshkey_name:, name:, ssh_key:, creation_date: nil)
    # Update an SSH Key.
    # @param tenant_id [String] Tenant ID of a pcloud tenant.
    # @param sshkey_name [String] SSH key name for a pcloud tenant.
    # @param name [String] User defined name for the SSH key.
    # @param ssh_key [String] SSH RSA key.
    # @param creation_date [Time] Date of sshkey creation.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_tenants_sshkeys_put(tenant_id:, sshkey_name:, name:, ssh_key:, creation_date: nil)
      raise ArgumentError.new("tenant_id must be provided") if tenant_id.nil?

      raise ArgumentError.new("sshkey_name must be provided") if sshkey_name.nil?

      raise ArgumentError.new("name must be provided") if name.nil?

      raise ArgumentError.new("ssh_key must be provided") if ssh_key.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_tenants_sshkeys_put")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "sshKey" => ssh_key,
        "creationDate" => creation_date
      }

      method_url = "/pcloud/v1/tenants/%s/sshkeys/%s" % [ERB::Util.url_encode(tenant_id), ERB::Util.url_encode(sshkey_name)]

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
    # @!method pcloud_tenants_sshkeys_delete(tenant_id:, sshkey_name:)
    # Delete a tenant's SSH key.
    # @param tenant_id [String] Tenant ID of a pcloud tenant.
    # @param sshkey_name [String] SSH key name for a pcloud tenant.
    # @return [nil]
    def pcloud_tenants_sshkeys_delete(tenant_id:, sshkey_name:)
      raise ArgumentError.new("tenant_id must be provided") if tenant_id.nil?

      raise ArgumentError.new("sshkey_name must be provided") if sshkey_name.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_tenants_sshkeys_delete")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/tenants/%s/sshkeys/%s" % [ERB::Util.url_encode(tenant_id), ERB::Util.url_encode(sshkey_name)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: false
      )
      nil
    end
    #########################
    # pCloudVolumes
    #########################

    ##
    # @!method pcloud_cloudinstances_volumes_getall(cloud_instance_id:, affinity: nil)
    # List all volumes for this cloud instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param affinity [String] A pvmInstance (id or name), limits a volumes list response to only volumes that
    #   have affinity to the pvmInstance.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_cloudinstances_volumes_getall(cloud_instance_id:, affinity: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudinstances_volumes_getall")
      headers.merge!(sdk_headers)

      params = {
        "affinity" => affinity
      }

      method_url = "/pcloud/v1/cloud-instances/%s/volumes" % [ERB::Util.url_encode(cloud_instance_id)]

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
    # @!method pcloud_cloudinstances_volumes_post(cloud_instance_id:, name:, size:, disk_type: nil, shareable: nil, affinity_policy: nil, affinity_volume: nil, affinity_pvm_instance: nil)
    # Create a new data volume.
    # All regions use Tier 1 (NVMe-based flash storage) or Tier 3 (SSD flash storage)
    #   storage types.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param name [String] Volume Name.
    # @param size [Float] Volume Size (GB).
    # @param disk_type [String] Type of disk, required if affinityPolicy is not provided, otherwise ignored.
    # @param shareable [Boolean] Indicates if the volume is shareable between VMs.
    # @param affinity_policy [String] Affinity policy for data volume being created; requires affinityPVMInstance or
    #   affinityVolume to be specified;.
    # @param affinity_volume [String] Volume (ID or Name) to base volume affinity policy against; required if
    #   affinityPolicy is provided and affinityPVMInstance is not provided.
    # @param affinity_pvm_instance [String] PVM Instance (ID or Name) to base volume affinity policy against; required if
    #   affinityPolicy is provided and affinityVolume is not provided.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_cloudinstances_volumes_post(cloud_instance_id:, name:, size:, disk_type: nil, shareable: nil, affinity_policy: nil, affinity_volume: nil, affinity_pvm_instance: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("name must be provided") if name.nil?

      raise ArgumentError.new("size must be provided") if size.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudinstances_volumes_post")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "size" => size,
        "diskType" => disk_type,
        "shareable" => shareable,
        "affinityPolicy" => affinity_policy,
        "affinityVolume" => affinity_volume,
        "affinityPVMInstance" => affinity_pvm_instance
      }

      method_url = "/pcloud/v1/cloud-instances/%s/volumes" % [ERB::Util.url_encode(cloud_instance_id)]

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
    # @!method pcloud_volumes_clone_post(cloud_instance_id:, display_name:, volume_i_ds:)
    # Create a volume clone for specified volumes (version 1 - depricated).
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param display_name [String] Display name for the new cloned volumes. Cloned Volume names will be prefixed with
    #   'clone-'. If multiple volumes cloned they will be suffix with a '-' and an
    #   incremental number starting with 1.
    #     Example volume names using displayName="volume-abcdef"
    #       single volume clone will be named "clone-volume-abcdef"
    #       multi volume clone will be named "clone-volume-abcdef-1",
    #   "clone-volume-abcdef-2", ...
    # @param volume_i_ds [Array[String]] List of volumes to be cloned.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_volumes_clone_post(cloud_instance_id:, display_name:, volume_i_ds:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("display_name must be provided") if display_name.nil?

      raise ArgumentError.new("volume_i_ds must be provided") if volume_i_ds.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_volumes_clone_post")
      headers.merge!(sdk_headers)

      data = {
        "displayName" => display_name,
        "volumeIDs" => volume_i_ds
      }

      method_url = "/pcloud/v1/cloud-instances/%s/volumes/clone" % [ERB::Util.url_encode(cloud_instance_id)]

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
    # @!method pcloud_v2_volumes_clone_post(cloud_instance_id:, name:, volume_i_ds:)
    # Create a volume clone for specified volumes (version 2).
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param name [String] Base name of the new cloned volume(s). Cloned Volume names will be prefixed with
    #   'clone-'
    #       and suffixed with ‘-#####’ (where ##### is a 5 digit random number) If
    #   multiple volumes cloned they will be further suffixed with an incremental number
    #   starting with 1.
    #     Example volume names using name="volume-abcdef"
    #       single volume clone will be named "clone-volume-abcdef-83081"
    #       multi volume clone will be named "clone-volume-abcdef-73721-1",
    #   "clone-volume-abcdef-73721-2", ...
    # @param volume_i_ds [Array[String]] List of volumes to be cloned.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_v2_volumes_clone_post(cloud_instance_id:, name:, volume_i_ds:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("name must be provided") if name.nil?

      raise ArgumentError.new("volume_i_ds must be provided") if volume_i_ds.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_v2_volumes_clone_post")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "volumeIDs" => volume_i_ds
      }

      method_url = "/pcloud/v2/cloud-instances/%s/volumes/clone" % [ERB::Util.url_encode(cloud_instance_id)]

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
    # @!method pcloud_v2_volumes_clonetasks_get(cloud_instance_id:, clone_task_id:)
    # Get the status of a volume clone request for the specified clone task ID.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param clone_task_id [String] Volumes Clone Task ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_v2_volumes_clonetasks_get(cloud_instance_id:, clone_task_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("clone_task_id must be provided") if clone_task_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_v2_volumes_clonetasks_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v2/cloud-instances/%s/volumes/clone-tasks/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(clone_task_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_v2_volumesclone_getall(cloud_instance_id:, filter: nil)
    # Get the list of volumes-clone request for a cloud instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param filter [String] volumes-clone filter to limit list items:
    #     prepare - includes status values (preparing, prepared)
    #     start   - includes status values (starting, available)
    #     execute - includes status values (executing, available-rollback)
    #     cancel  - includes status values (cancelling)
    #     completed - includes status values (completed)
    #     failed - includes status values (failed)
    #     cancelled - includes status values (cancelled)
    #     finalized - included status values (completed, failed, cancelled).
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_v2_volumesclone_getall(cloud_instance_id:, filter: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_v2_volumesclone_getall")
      headers.merge!(sdk_headers)

      params = {
        "filter" => filter
      }

      method_url = "/pcloud/v2/cloud-instances/%s/volumes-clone" % [ERB::Util.url_encode(cloud_instance_id)]

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
    # @!method pcloud_v2_volumesclone_post(cloud_instance_id:, name:, volume_i_ds:)
    # Create a new volumes clone request and initiate the Prepare action.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param name [String] Unique name within a cloud instance used to identify a volumes-clone request name
    #   can be used in replace of a volumesCloneID when used as a URL path parameter.
    # @param volume_i_ds [Array[String]] List of volumes to be cloned.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_v2_volumesclone_post(cloud_instance_id:, name:, volume_i_ds:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("name must be provided") if name.nil?

      raise ArgumentError.new("volume_i_ds must be provided") if volume_i_ds.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_v2_volumesclone_post")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "volumeIDs" => volume_i_ds
      }

      method_url = "/pcloud/v2/cloud-instances/%s/volumes-clone" % [ERB::Util.url_encode(cloud_instance_id)]

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
    # @!method pcloud_v2_volumesclone_get(cloud_instance_id:, volumes_clone_id:)
    # Get the details for a volumes-clone request.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param volumes_clone_id [String] Volumes Clone ID, can be identified by the volumes-clone id or the volumes-clone
    #   name.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_v2_volumesclone_get(cloud_instance_id:, volumes_clone_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("volumes_clone_id must be provided") if volumes_clone_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_v2_volumesclone_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v2/cloud-instances/%s/volumes-clone/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(volumes_clone_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_v2_volumesclone_delete(cloud_instance_id:, volumes_clone_id:)
    # Delete a volumes-clone request.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param volumes_clone_id [String] Volumes Clone ID, can be identified by the volumes-clone id or the volumes-clone
    #   name.
    # @return [nil]
    def pcloud_v2_volumesclone_delete(cloud_instance_id:, volumes_clone_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("volumes_clone_id must be provided") if volumes_clone_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_v2_volumesclone_delete")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v2/cloud-instances/%s/volumes-clone/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(volumes_clone_id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: false
      )
      nil
    end

    ##
    # @!method pcloud_v2_volumesclone_start_post(cloud_instance_id:, volumes_clone_id:, accept: nil)
    # Initiate the Start action for a volume-clone request. The Start action starts
    #   the consistency group to initiate the flash copy.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param volumes_clone_id [String] Volumes Clone ID, can be identified by the volumes-clone id or the volumes-clone
    #   name.
    # @param accept [String] The type of the response: *_/_* or application/json.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_v2_volumesclone_start_post(cloud_instance_id:, volumes_clone_id:, accept: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("volumes_clone_id must be provided") if volumes_clone_id.nil?

      headers = {
        "Accept" => accept
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_v2_volumesclone_start_post")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v2/cloud-instances/%s/volumes-clone/%s/start" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(volumes_clone_id)]

      response = request(
        method: "POST",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_v2_volumesclone_execute_post(cloud_instance_id:, volumes_clone_id:, name:, rollback_prepare: nil)
    # Initiate the Execute action for a volumes-clone request. The Execute action
    #   creates the cloned volumes using the volume snapshots.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param volumes_clone_id [String] Volumes Clone ID, can be identified by the volumes-clone id or the volumes-clone
    #   name.
    # @param name [String] Base name of the new cloned volume(s). Cloned Volume names will be prefixed with
    #   'clone-'
    #       and suffixed with ‘-#####’ (where ##### is a 5 digit random number) If
    #   multiple volumes cloned they will be further suffixed with an incremental number
    #   starting with 1.
    #     Example volume names using name "volume-abcdef"
    #     single volume clone will be named "clone-volume-abcdef-83081"
    #     multi volume clone will be named "clone-volume-abcdef-73721-1",
    #   "clone-volume-abcdef-73721-2", ...
    # @param rollback_prepare [Boolean] default False, Execute failure rolls back clone activity but leaves prepared
    #   snapshot True, Execute failure rolls back clone activity and removes the prepared
    #   snapshot.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_v2_volumesclone_execute_post(cloud_instance_id:, volumes_clone_id:, name:, rollback_prepare: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("volumes_clone_id must be provided") if volumes_clone_id.nil?

      raise ArgumentError.new("name must be provided") if name.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_v2_volumesclone_execute_post")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "rollbackPrepare" => rollback_prepare
      }

      method_url = "/pcloud/v2/cloud-instances/%s/volumes-clone/%s/execute" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(volumes_clone_id)]

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
    # @!method pcloud_v2_volumesclone_cancel_post(cloud_instance_id:, volumes_clone_id:, force: nil)
    # Cancel a volume-clone request, initiates the Cleanup action. The Cleanup action
    #   performs the cleanup of the preparatory clones and snapshot volumes.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param volumes_clone_id [String] Volumes Clone ID, can be identified by the volumes-clone id or the volumes-clone
    #   name.
    # @param force [Boolean] default False, Cancel will only be allowed if the status is 'prepared', or
    #   'available' True, Cancel will be allowed when the status is NOT completed,
    #   cancelling, cancelled, or failed.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_v2_volumesclone_cancel_post(cloud_instance_id:, volumes_clone_id:, force: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("volumes_clone_id must be provided") if volumes_clone_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_v2_volumesclone_cancel_post")
      headers.merge!(sdk_headers)

      data = {
        "force" => force
      }

      method_url = "/pcloud/v2/cloud-instances/%s/volumes-clone/%s/cancel" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(volumes_clone_id)]

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
    # @!method pcloud_cloudinstances_volumes_get(cloud_instance_id:, volume_id:)
    # Detailed information of a volume.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param volume_id [String] Volume ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_cloudinstances_volumes_get(cloud_instance_id:, volume_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("volume_id must be provided") if volume_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudinstances_volumes_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/volumes/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(volume_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_cloudinstances_volumes_put(cloud_instance_id:, volume_id:, name: nil, size: nil, shareable: nil, bootable: nil)
    # Update a cloud instance volume.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param volume_id [String] Volume ID.
    # @param name [String] Name.
    # @param size [Float] New Volume size.
    # @param shareable [Boolean] Indicates if the volume is shareable between VMs.
    # @param bootable [Boolean] Indicates if the volume is boot capable.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_cloudinstances_volumes_put(cloud_instance_id:, volume_id:, name: nil, size: nil, shareable: nil, bootable: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("volume_id must be provided") if volume_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudinstances_volumes_put")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "size" => size,
        "shareable" => shareable,
        "bootable" => bootable
      }

      method_url = "/pcloud/v1/cloud-instances/%s/volumes/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(volume_id)]

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
    # @!method pcloud_cloudinstances_volumes_delete(cloud_instance_id:, volume_id:)
    # Delete a cloud instance volume.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param volume_id [String] Volume ID.
    # @return [nil]
    def pcloud_cloudinstances_volumes_delete(cloud_instance_id:, volume_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("volume_id must be provided") if volume_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_cloudinstances_volumes_delete")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/volumes/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(volume_id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: false
      )
      nil
    end

    ##
    # @!method pcloud_v2_volumes_post(cloud_instance_id:, name:, size:, count: nil, shareable: nil, disk_type: nil, affinity_policy: nil, affinity_volume: nil, affinity_pvm_instance: nil)
    # Create multiple data volumes from a single definition.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param name [String] Base name of the volume(s).
    # @param size [Fixnum] Volume Size (GB).
    # @param count [Fixnum] Number of volumes to create.
    # @param shareable [Boolean] Indicates if the volume is shareable between VMs.
    # @param disk_type [String] Type of Disk; required if affinityPolicy is not provided, otherwise ignored.
    # @param affinity_policy [String] Affinity policy for data volume being created; requires affinityPVMInstance or
    #   affinityVolume to be specified;.
    # @param affinity_volume [String] Volume (ID or Name) to base volume affinity policy against; required if
    #   affinityPolicy is provided and affinityPVMInstance is not provided.
    # @param affinity_pvm_instance [String] PVM Instance (ID or Name)to base volume affinity policy against; required if
    #   affinityPolicy is provided and affinityVolume is not provided.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_v2_volumes_post(cloud_instance_id:, name:, size:, count: nil, shareable: nil, disk_type: nil, affinity_policy: nil, affinity_volume: nil, affinity_pvm_instance: nil)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("name must be provided") if name.nil?

      raise ArgumentError.new("size must be provided") if size.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_v2_volumes_post")
      headers.merge!(sdk_headers)

      data = {
        "name" => name,
        "size" => size,
        "count" => count,
        "shareable" => shareable,
        "diskType" => disk_type,
        "affinityPolicy" => affinity_policy,
        "affinityVolume" => affinity_volume,
        "affinityPVMInstance" => affinity_pvm_instance
      }

      method_url = "/pcloud/v2/cloud-instances/%s/volumes" % [ERB::Util.url_encode(cloud_instance_id)]

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
    # @!method pcloud_pvminstances_volumes_getall(cloud_instance_id:, pvm_instance_id:)
    # List all volumes attached to a PVM Instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_pvminstances_volumes_getall(cloud_instance_id:, pvm_instance_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_volumes_getall")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s/volumes" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_pvminstances_volumes_get(cloud_instance_id:, pvm_instance_id:, volume_id:)
    # Detailed information of a volume attached to a PVM Instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @param volume_id [String] Volume ID.
    # @return [IBMCloudSdkCore::DetailedResponse] A `IBMCloudSdkCore::DetailedResponse` object representing the response.
    def pcloud_pvminstances_volumes_get(cloud_instance_id:, pvm_instance_id:, volume_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      raise ArgumentError.new("volume_id must be provided") if volume_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_volumes_get")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s/volumes/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id), ERB::Util.url_encode(volume_id)]

      response = request(
        method: "GET",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      response
    end

    ##
    # @!method pcloud_pvminstances_volumes_put(cloud_instance_id:, pvm_instance_id:, volume_id:, delete_on_termination:)
    # Update a volume attached to a PVMInstance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @param volume_id [String] Volume ID.
    # @param delete_on_termination [Boolean] Indicates if the volume should be deleted when the PVMInstance is terminated.
    # @return [nil]
    def pcloud_pvminstances_volumes_put(cloud_instance_id:, pvm_instance_id:, volume_id:, delete_on_termination:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      raise ArgumentError.new("volume_id must be provided") if volume_id.nil?

      raise ArgumentError.new("delete_on_termination must be provided") if delete_on_termination.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_volumes_put")
      headers.merge!(sdk_headers)

      data = {
        "deleteOnTermination" => delete_on_termination
      }

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s/volumes/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id), ERB::Util.url_encode(volume_id)]

      request(
        method: "PUT",
        url: method_url,
        headers: headers,
        json: data,
        accept_json: true
      )
      nil
    end

    ##
    # @!method pcloud_pvminstances_volumes_post(cloud_instance_id:, pvm_instance_id:, volume_id:)
    # Attach a volume to a PVM Instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @param volume_id [String] Volume ID.
    # @return [nil]
    def pcloud_pvminstances_volumes_post(cloud_instance_id:, pvm_instance_id:, volume_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      raise ArgumentError.new("volume_id must be provided") if volume_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_volumes_post")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s/volumes/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id), ERB::Util.url_encode(volume_id)]

      request(
        method: "POST",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      nil
    end

    ##
    # @!method pcloud_pvminstances_volumes_delete(cloud_instance_id:, pvm_instance_id:, volume_id:)
    # Detach a volume from a PVM Instance.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @param volume_id [String] Volume ID.
    # @return [nil]
    def pcloud_pvminstances_volumes_delete(cloud_instance_id:, pvm_instance_id:, volume_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      raise ArgumentError.new("volume_id must be provided") if volume_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_volumes_delete")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s/volumes/%s" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id), ERB::Util.url_encode(volume_id)]

      request(
        method: "DELETE",
        url: method_url,
        headers: headers,
        accept_json: true
      )
      nil
    end

    ##
    # @!method pcloud_pvminstances_volumes_setboot_put(cloud_instance_id:, pvm_instance_id:, volume_id:)
    # Set the PVMInstance volume as the boot volume.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance.
    # @param pvm_instance_id [String] PCloud PVM Instance ID.
    # @param volume_id [String] Volume ID.
    # @return [nil]
    def pcloud_pvminstances_volumes_setboot_put(cloud_instance_id:, pvm_instance_id:, volume_id:)
      raise ArgumentError.new("cloud_instance_id must be provided") if cloud_instance_id.nil?

      raise ArgumentError.new("pvm_instance_id must be provided") if pvm_instance_id.nil?

      raise ArgumentError.new("volume_id must be provided") if volume_id.nil?

      headers = {
      }
      sdk_headers = Common.new.get_sdk_headers("power_cloud_api", "V1", "pcloud_pvminstances_volumes_setboot_put")
      headers.merge!(sdk_headers)

      method_url = "/pcloud/v1/cloud-instances/%s/pvm-instances/%s/volumes/%s/setboot" % [ERB::Util.url_encode(cloud_instance_id), ERB::Util.url_encode(pvm_instance_id), ERB::Util.url_encode(volume_id)]

      request(
        method: "PUT",
        url: method_url,
        headers: headers,
        accept_json: false
      )
      nil
    end
  end
end
