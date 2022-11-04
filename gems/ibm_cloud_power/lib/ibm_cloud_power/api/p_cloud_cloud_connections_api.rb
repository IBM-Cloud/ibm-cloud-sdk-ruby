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
  class PCloudCloudConnectionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a Cloud Connection
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param cloud_connection_id [String] Cloud Connection ID
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def pcloud_cloudconnections_delete(cloud_instance_id, cloud_connection_id, opts = {})
      data, _status_code, _headers = pcloud_cloudconnections_delete_with_http_info(cloud_instance_id, cloud_connection_id, opts)
      data
    end

    # Delete a Cloud Connection
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param cloud_connection_id [String] Cloud Connection ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def pcloud_cloudconnections_delete_with_http_info(cloud_instance_id, cloud_connection_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudCloudConnectionsApi.pcloud_cloudconnections_delete ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudCloudConnectionsApi.pcloud_cloudconnections_delete"
      end
      # verify the required parameter 'cloud_connection_id' is set
      if @api_client.config.client_side_validation && cloud_connection_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_connection_id' when calling PCloudCloudConnectionsApi.pcloud_cloudconnections_delete"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections/{cloud_connection_id}'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s)).sub('{' + 'cloud_connection_id' + '}', CGI.escape(cloud_connection_id.to_s))

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
        :operation => :"PCloudCloudConnectionsApi.pcloud_cloudconnections_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudCloudConnectionsApi#pcloud_cloudconnections_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a cloud connection's state/information
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param cloud_connection_id [String] Cloud Connection ID
    # @param [Hash] opts the optional parameters
    # @return [CloudConnection]
    def pcloud_cloudconnections_get(cloud_instance_id, cloud_connection_id, opts = {})
      data, _status_code, _headers = pcloud_cloudconnections_get_with_http_info(cloud_instance_id, cloud_connection_id, opts)
      data
    end

    # Get a cloud connection&#39;s state/information
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param cloud_connection_id [String] Cloud Connection ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(CloudConnection, Integer, Hash)>] CloudConnection data, response status code and response headers
    def pcloud_cloudconnections_get_with_http_info(cloud_instance_id, cloud_connection_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudCloudConnectionsApi.pcloud_cloudconnections_get ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudCloudConnectionsApi.pcloud_cloudconnections_get"
      end
      # verify the required parameter 'cloud_connection_id' is set
      if @api_client.config.client_side_validation && cloud_connection_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_connection_id' when calling PCloudCloudConnectionsApi.pcloud_cloudconnections_get"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections/{cloud_connection_id}'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s)).sub('{' + 'cloud_connection_id' + '}', CGI.escape(cloud_connection_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CloudConnection'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudCloudConnectionsApi.pcloud_cloudconnections_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudCloudConnectionsApi#pcloud_cloudconnections_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all cloud connections in this cloud instance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param [Hash] opts the optional parameters
    # @return [CloudConnections]
    def pcloud_cloudconnections_getall(cloud_instance_id, opts = {})
      data, _status_code, _headers = pcloud_cloudconnections_getall_with_http_info(cloud_instance_id, opts)
      data
    end

    # Get all cloud connections in this cloud instance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param [Hash] opts the optional parameters
    # @return [Array<(CloudConnections, Integer, Hash)>] CloudConnections data, response status code and response headers
    def pcloud_cloudconnections_getall_with_http_info(cloud_instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudCloudConnectionsApi.pcloud_cloudconnections_getall ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudCloudConnectionsApi.pcloud_cloudconnections_getall"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CloudConnections'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudCloudConnectionsApi.pcloud_cloudconnections_getall",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudCloudConnectionsApi#pcloud_cloudconnections_getall\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a network from a Cloud Connection
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param cloud_connection_id [String] Cloud Connection ID
    # @param network_id [String] Network ID
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def pcloud_cloudconnections_networks_delete(cloud_instance_id, cloud_connection_id, network_id, opts = {})
      data, _status_code, _headers = pcloud_cloudconnections_networks_delete_with_http_info(cloud_instance_id, cloud_connection_id, network_id, opts)
      data
    end

    # Delete a network from a Cloud Connection
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param cloud_connection_id [String] Cloud Connection ID
    # @param network_id [String] Network ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def pcloud_cloudconnections_networks_delete_with_http_info(cloud_instance_id, cloud_connection_id, network_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudCloudConnectionsApi.pcloud_cloudconnections_networks_delete ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudCloudConnectionsApi.pcloud_cloudconnections_networks_delete"
      end
      # verify the required parameter 'cloud_connection_id' is set
      if @api_client.config.client_side_validation && cloud_connection_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_connection_id' when calling PCloudCloudConnectionsApi.pcloud_cloudconnections_networks_delete"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling PCloudCloudConnectionsApi.pcloud_cloudconnections_networks_delete"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections/{cloud_connection_id}/networks/{network_id}'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s)).sub('{' + 'cloud_connection_id' + '}', CGI.escape(cloud_connection_id.to_s)).sub('{' + 'network_id' + '}', CGI.escape(network_id.to_s))

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
        :operation => :"PCloudCloudConnectionsApi.pcloud_cloudconnections_networks_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudCloudConnectionsApi#pcloud_cloudconnections_networks_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a network to the cloud connection
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param cloud_connection_id [String] Cloud Connection ID
    # @param network_id [String] Network ID
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def pcloud_cloudconnections_networks_put(cloud_instance_id, cloud_connection_id, network_id, opts = {})
      data, _status_code, _headers = pcloud_cloudconnections_networks_put_with_http_info(cloud_instance_id, cloud_connection_id, network_id, opts)
      data
    end

    # Add a network to the cloud connection
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param cloud_connection_id [String] Cloud Connection ID
    # @param network_id [String] Network ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def pcloud_cloudconnections_networks_put_with_http_info(cloud_instance_id, cloud_connection_id, network_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudCloudConnectionsApi.pcloud_cloudconnections_networks_put ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudCloudConnectionsApi.pcloud_cloudconnections_networks_put"
      end
      # verify the required parameter 'cloud_connection_id' is set
      if @api_client.config.client_side_validation && cloud_connection_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_connection_id' when calling PCloudCloudConnectionsApi.pcloud_cloudconnections_networks_put"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling PCloudCloudConnectionsApi.pcloud_cloudconnections_networks_put"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections/{cloud_connection_id}/networks/{network_id}'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s)).sub('{' + 'cloud_connection_id' + '}', CGI.escape(cloud_connection_id.to_s)).sub('{' + 'network_id' + '}', CGI.escape(network_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudCloudConnectionsApi.pcloud_cloudconnections_networks_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudCloudConnectionsApi#pcloud_cloudconnections_networks_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new cloud connection
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param body [CloudConnectionCreate] Parameters for the creation of a new cloud connection
    # @param [Hash] opts the optional parameters
    # @return [CloudConnection]
    def pcloud_cloudconnections_post(cloud_instance_id, body, opts = {})
      data, _status_code, _headers = pcloud_cloudconnections_post_with_http_info(cloud_instance_id, body, opts)
      data
    end

    # Create a new cloud connection
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param body [CloudConnectionCreate] Parameters for the creation of a new cloud connection
    # @param [Hash] opts the optional parameters
    # @return [Array<(CloudConnection, Integer, Hash)>] CloudConnection data, response status code and response headers
    def pcloud_cloudconnections_post_with_http_info(cloud_instance_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudCloudConnectionsApi.pcloud_cloudconnections_post ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudCloudConnectionsApi.pcloud_cloudconnections_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudCloudConnectionsApi.pcloud_cloudconnections_post"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CloudConnection'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudCloudConnectionsApi.pcloud_cloudconnections_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudCloudConnectionsApi#pcloud_cloudconnections_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Cloud Connection
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param cloud_connection_id [String] Cloud Connection ID
    # @param body [CloudConnectionUpdate] Parameters to update a Cloud Connection
    # @param [Hash] opts the optional parameters
    # @return [CloudConnection]
    def pcloud_cloudconnections_put(cloud_instance_id, cloud_connection_id, body, opts = {})
      data, _status_code, _headers = pcloud_cloudconnections_put_with_http_info(cloud_instance_id, cloud_connection_id, body, opts)
      data
    end

    # Update a Cloud Connection
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param cloud_connection_id [String] Cloud Connection ID
    # @param body [CloudConnectionUpdate] Parameters to update a Cloud Connection
    # @param [Hash] opts the optional parameters
    # @return [Array<(CloudConnection, Integer, Hash)>] CloudConnection data, response status code and response headers
    def pcloud_cloudconnections_put_with_http_info(cloud_instance_id, cloud_connection_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudCloudConnectionsApi.pcloud_cloudconnections_put ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudCloudConnectionsApi.pcloud_cloudconnections_put"
      end
      # verify the required parameter 'cloud_connection_id' is set
      if @api_client.config.client_side_validation && cloud_connection_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_connection_id' when calling PCloudCloudConnectionsApi.pcloud_cloudconnections_put"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudCloudConnectionsApi.pcloud_cloudconnections_put"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections/{cloud_connection_id}'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s)).sub('{' + 'cloud_connection_id' + '}', CGI.escape(cloud_connection_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CloudConnection'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudCloudConnectionsApi.pcloud_cloudconnections_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudCloudConnectionsApi#pcloud_cloudconnections_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all virtual private cloud connections in this cloud instance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param [Hash] opts the optional parameters
    # @return [CloudConnectionVirtualPrivateClouds]
    def pcloud_cloudconnections_virtualprivateclouds_getall(cloud_instance_id, opts = {})
      data, _status_code, _headers = pcloud_cloudconnections_virtualprivateclouds_getall_with_http_info(cloud_instance_id, opts)
      data
    end

    # Get all virtual private cloud connections in this cloud instance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param [Hash] opts the optional parameters
    # @return [Array<(CloudConnectionVirtualPrivateClouds, Integer, Hash)>] CloudConnectionVirtualPrivateClouds data, response status code and response headers
    def pcloud_cloudconnections_virtualprivateclouds_getall_with_http_info(cloud_instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudCloudConnectionsApi.pcloud_cloudconnections_virtualprivateclouds_getall ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudCloudConnectionsApi.pcloud_cloudconnections_virtualprivateclouds_getall"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections-virtual-private-clouds'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CloudConnectionVirtualPrivateClouds'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudCloudConnectionsApi.pcloud_cloudconnections_virtualprivateclouds_getall",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudCloudConnectionsApi#pcloud_cloudconnections_virtualprivateclouds_getall\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
