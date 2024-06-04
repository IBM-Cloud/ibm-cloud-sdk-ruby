=begin
#Power Cloud API

#IBM Power Cloud API for Power Hardware / Infrastructure

The version of the OpenAPI document: 1.0.0
Contact: kylej@us.ibm.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module IbmCloudPower
  class PCloudVolumeGroupsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Perform an action (start stop reset ) on a volume group
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_group_id [String] The ID of the volume group
    # @param body [Hash<String, Object>] Parameters for the desire action.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def pcloud_volumegroups_action_post(cloud_instance_id, volume_group_id, body, opts = {})
      data, _status_code, _headers = pcloud_volumegroups_action_post_with_http_info(cloud_instance_id, volume_group_id, body, opts)
      data
    end

    # Perform an action (start stop reset ) on a volume group
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_group_id [String] The ID of the volume group
    # @param body [Hash<String, Object>] Parameters for the desire action.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def pcloud_volumegroups_action_post_with_http_info(cloud_instance_id, volume_group_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumeGroupsApi.pcloud_volumegroups_action_post ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumeGroupsApi.pcloud_volumegroups_action_post"
      end
      # verify the required parameter 'volume_group_id' is set
      if @api_client.config.client_side_validation && volume_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_group_id' when calling PCloudVolumeGroupsApi.pcloud_volumegroups_action_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudVolumeGroupsApi.pcloud_volumegroups_action_post"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id}/action'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s)).sub('{' + 'volume_group_id' + '}', CGI.escape(volume_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumeGroupsApi.pcloud_volumegroups_action_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumeGroupsApi#pcloud_volumegroups_action_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a cloud instance volume group
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_group_id [String] The ID of the volume group
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def pcloud_volumegroups_delete(cloud_instance_id, volume_group_id, opts = {})
      data, _status_code, _headers = pcloud_volumegroups_delete_with_http_info(cloud_instance_id, volume_group_id, opts)
      data
    end

    # Delete a cloud instance volume group
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_group_id [String] The ID of the volume group
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def pcloud_volumegroups_delete_with_http_info(cloud_instance_id, volume_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumeGroupsApi.pcloud_volumegroups_delete ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumeGroupsApi.pcloud_volumegroups_delete"
      end
      # verify the required parameter 'volume_group_id' is set
      if @api_client.config.client_side_validation && volume_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_group_id' when calling PCloudVolumeGroupsApi.pcloud_volumegroups_delete"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id}'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s)).sub('{' + 'volume_group_id' + '}', CGI.escape(volume_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumeGroupsApi.pcloud_volumegroups_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumeGroupsApi#pcloud_volumegroups_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get volume Group
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_group_id [String] The ID of the volume group
    # @param [Hash] opts the optional parameters
    # @return [VolumeGroup]
    def pcloud_volumegroups_get(cloud_instance_id, volume_group_id, opts = {})
      data, _status_code, _headers = pcloud_volumegroups_get_with_http_info(cloud_instance_id, volume_group_id, opts)
      data
    end

    # Get volume Group
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_group_id [String] The ID of the volume group
    # @param [Hash] opts the optional parameters
    # @return [Array<(VolumeGroup, Integer, Hash)>] VolumeGroup data, response status code and response headers
    def pcloud_volumegroups_get_with_http_info(cloud_instance_id, volume_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumeGroupsApi.pcloud_volumegroups_get ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumeGroupsApi.pcloud_volumegroups_get"
      end
      # verify the required parameter 'volume_group_id' is set
      if @api_client.config.client_side_validation && volume_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_group_id' when calling PCloudVolumeGroupsApi.pcloud_volumegroups_get"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id}'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s)).sub('{' + 'volume_group_id' + '}', CGI.escape(volume_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VolumeGroup'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumeGroupsApi.pcloud_volumegroups_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumeGroupsApi#pcloud_volumegroups_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get volume Group details
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_group_id [String] The ID of the volume group
    # @param [Hash] opts the optional parameters
    # @return [VolumeGroupDetails]
    def pcloud_volumegroups_get_details(cloud_instance_id, volume_group_id, opts = {})
      data, _status_code, _headers = pcloud_volumegroups_get_details_with_http_info(cloud_instance_id, volume_group_id, opts)
      data
    end

    # Get volume Group details
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_group_id [String] The ID of the volume group
    # @param [Hash] opts the optional parameters
    # @return [Array<(VolumeGroupDetails, Integer, Hash)>] VolumeGroupDetails data, response status code and response headers
    def pcloud_volumegroups_get_details_with_http_info(cloud_instance_id, volume_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumeGroupsApi.pcloud_volumegroups_get_details ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumeGroupsApi.pcloud_volumegroups_get_details"
      end
      # verify the required parameter 'volume_group_id' is set
      if @api_client.config.client_side_validation && volume_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_group_id' when calling PCloudVolumeGroupsApi.pcloud_volumegroups_get_details"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id}/details'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s)).sub('{' + 'volume_group_id' + '}', CGI.escape(volume_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VolumeGroupDetails'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumeGroupsApi.pcloud_volumegroups_get_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumeGroupsApi#pcloud_volumegroups_get_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all volume groups
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param [Hash] opts the optional parameters
    # @return [VolumeGroups]
    def pcloud_volumegroups_getall(cloud_instance_id, opts = {})
      data, _status_code, _headers = pcloud_volumegroups_getall_with_http_info(cloud_instance_id, opts)
      data
    end

    # Get all volume groups
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param [Hash] opts the optional parameters
    # @return [Array<(VolumeGroups, Integer, Hash)>] VolumeGroups data, response status code and response headers
    def pcloud_volumegroups_getall_with_http_info(cloud_instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumeGroupsApi.pcloud_volumegroups_getall ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumeGroupsApi.pcloud_volumegroups_getall"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VolumeGroups'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumeGroupsApi.pcloud_volumegroups_getall",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumeGroupsApi#pcloud_volumegroups_getall\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all volume groups with details
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param [Hash] opts the optional parameters
    # @return [VolumeGroupsDetails]
    def pcloud_volumegroups_getall_details(cloud_instance_id, opts = {})
      data, _status_code, _headers = pcloud_volumegroups_getall_details_with_http_info(cloud_instance_id, opts)
      data
    end

    # Get all volume groups with details
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param [Hash] opts the optional parameters
    # @return [Array<(VolumeGroupsDetails, Integer, Hash)>] VolumeGroupsDetails data, response status code and response headers
    def pcloud_volumegroups_getall_details_with_http_info(cloud_instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumeGroupsApi.pcloud_volumegroups_getall_details ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumeGroupsApi.pcloud_volumegroups_getall_details"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/details'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VolumeGroupsDetails'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumeGroupsApi.pcloud_volumegroups_getall_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumeGroupsApi#pcloud_volumegroups_getall_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new volume group
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param body [VolumeGroupCreate] Parameters for the creation of a new volume group
    # @param [Hash] opts the optional parameters
    # @return [VolumeGroupCreateResponse]
    def pcloud_volumegroups_post(cloud_instance_id, body, opts = {})
      data, _status_code, _headers = pcloud_volumegroups_post_with_http_info(cloud_instance_id, body, opts)
      data
    end

    # Create a new volume group
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param body [VolumeGroupCreate] Parameters for the creation of a new volume group
    # @param [Hash] opts the optional parameters
    # @return [Array<(VolumeGroupCreateResponse, Integer, Hash)>] VolumeGroupCreateResponse data, response status code and response headers
    def pcloud_volumegroups_post_with_http_info(cloud_instance_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumeGroupsApi.pcloud_volumegroups_post ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumeGroupsApi.pcloud_volumegroups_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudVolumeGroupsApi.pcloud_volumegroups_post"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'VolumeGroupCreateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumeGroupsApi.pcloud_volumegroups_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumeGroupsApi#pcloud_volumegroups_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updates the volume group
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_group_id [String] The ID of the volume group
    # @param body [VolumeGroupUpdate] Parameters for updating a volume-group
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def pcloud_volumegroups_put(cloud_instance_id, volume_group_id, body, opts = {})
      data, _status_code, _headers = pcloud_volumegroups_put_with_http_info(cloud_instance_id, volume_group_id, body, opts)
      data
    end

    # updates the volume group
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_group_id [String] The ID of the volume group
    # @param body [VolumeGroupUpdate] Parameters for updating a volume-group
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def pcloud_volumegroups_put_with_http_info(cloud_instance_id, volume_group_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumeGroupsApi.pcloud_volumegroups_put ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumeGroupsApi.pcloud_volumegroups_put"
      end
      # verify the required parameter 'volume_group_id' is set
      if @api_client.config.client_side_validation && volume_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_group_id' when calling PCloudVolumeGroupsApi.pcloud_volumegroups_put"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudVolumeGroupsApi.pcloud_volumegroups_put"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id}'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s)).sub('{' + 'volume_group_id' + '}', CGI.escape(volume_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumeGroupsApi.pcloud_volumegroups_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumeGroupsApi#pcloud_volumegroups_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get remote copy relationships of the volume belonging to volume group
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_group_id [String] The ID of the volume group
    # @param [Hash] opts the optional parameters
    # @return [VolumeGroupRemoteCopyRelationships]
    def pcloud_volumegroups_remote_copy_relationships_get(cloud_instance_id, volume_group_id, opts = {})
      data, _status_code, _headers = pcloud_volumegroups_remote_copy_relationships_get_with_http_info(cloud_instance_id, volume_group_id, opts)
      data
    end

    # Get remote copy relationships of the volume belonging to volume group
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_group_id [String] The ID of the volume group
    # @param [Hash] opts the optional parameters
    # @return [Array<(VolumeGroupRemoteCopyRelationships, Integer, Hash)>] VolumeGroupRemoteCopyRelationships data, response status code and response headers
    def pcloud_volumegroups_remote_copy_relationships_get_with_http_info(cloud_instance_id, volume_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumeGroupsApi.pcloud_volumegroups_remote_copy_relationships_get ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumeGroupsApi.pcloud_volumegroups_remote_copy_relationships_get"
      end
      # verify the required parameter 'volume_group_id' is set
      if @api_client.config.client_side_validation && volume_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_group_id' when calling PCloudVolumeGroupsApi.pcloud_volumegroups_remote_copy_relationships_get"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id}/remote-copy-relationships'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s)).sub('{' + 'volume_group_id' + '}', CGI.escape(volume_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VolumeGroupRemoteCopyRelationships'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumeGroupsApi.pcloud_volumegroups_remote_copy_relationships_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumeGroupsApi#pcloud_volumegroups_remote_copy_relationships_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get storage details of volume group
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_group_id [String] The ID of the volume group
    # @param [Hash] opts the optional parameters
    # @return [VolumeGroupStorageDetails]
    def pcloud_volumegroups_storage_details_get(cloud_instance_id, volume_group_id, opts = {})
      data, _status_code, _headers = pcloud_volumegroups_storage_details_get_with_http_info(cloud_instance_id, volume_group_id, opts)
      data
    end

    # Get storage details of volume group
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_group_id [String] The ID of the volume group
    # @param [Hash] opts the optional parameters
    # @return [Array<(VolumeGroupStorageDetails, Integer, Hash)>] VolumeGroupStorageDetails data, response status code and response headers
    def pcloud_volumegroups_storage_details_get_with_http_info(cloud_instance_id, volume_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumeGroupsApi.pcloud_volumegroups_storage_details_get ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumeGroupsApi.pcloud_volumegroups_storage_details_get"
      end
      # verify the required parameter 'volume_group_id' is set
      if @api_client.config.client_side_validation && volume_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_group_id' when calling PCloudVolumeGroupsApi.pcloud_volumegroups_storage_details_get"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id}/storage-details'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s)).sub('{' + 'volume_group_id' + '}', CGI.escape(volume_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VolumeGroupStorageDetails'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumeGroupsApi.pcloud_volumegroups_storage_details_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumeGroupsApi#pcloud_volumegroups_storage_details_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end