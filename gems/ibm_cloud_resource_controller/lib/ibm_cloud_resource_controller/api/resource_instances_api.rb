=begin
#Resource Controller

### Introduction  The resource controller is the next-generation IBM Cloud® platform provisioning layer that manages the lifecycle of IBM Cloud resources in a customer account. A resource is an instance of a service like Cloudant, a Cloud Foundry application, a virtual machine, a container, a software image, or a data set.  The resource controller provides APIs to help you manage the following elements of your resource lifecycle: * Catalog management * Provisioning (creating an instance) * Updating a resource instance * Resource keys * De-provisioning (deleting an instance) * Dashboard SSO  Resources are provisioned globally in an account scope. The resource controller supports both synchronous and asynchronous provisioning of resources.  Resources are created by the resource controller within [resource groups](https://console.cloud.ibm.com/docs/overview/resource-groups.html#whatis). A resource group belongs to an account. All IBM Cloud resources must be provisioned within a resource group. If an account is suspended, the corresponding resource group is suspended as well, and all resources within the resource group are suspended.  Installing the Java SDK  Maven  ```xml <dependency>  <groupId>com.ibm.cloud</groupId>  <artifactId>resource-controller</artifactId>  <version>{version}</version> </dependency> ```  Gradle  ```bash 'com.ibm.cloud:resource-controller:{version}' ```  Replace `{version}` in these examples with the release version.  View on GitHub  [https://github.com/IBM/platform-services-java-sdk](https://github.com/IBM/platform-services-java-sdk)  Installing the Go SDK  Go modules (recommended): Add the following import in your code, and then run `go build` or `go mod tidy`  ```go import (  \"github.com/IBM/platform-services-go-sdk/resourcecontrollerv2\" ) ```  Go get  ```bash go get -u github.com/IBM/platform-services-go-sdk/resourcecontrollerv2 ```  View on GitHub  [https://github.com/IBM/platform-services-go-sdk](https://github.com/IBM/platform-services-go-sdk)  Installation  ```bash npm install @ibm-cloud/platform-services ```  For more installation options, view this project in GitHub. https://github.com/IBM/platform-services-node-sdk  Installation  ```bash pip install --upgrade \"ibm-platform-services\" ```  For more installation options, view this project in GitHub. https://github.com/IBM/platform-services-python-sdk  ### Resource instances  The resource controller can provision or create an instance. Provisioning reserves a resource on a service, and the reserved resource is a service instance. A resource instance can vary by service. Examples include a single database on a multi-tenant server, a dedicated cluster, or an account on a web application.  API endpoint  ```bash https://resource-controller.cloud.ibm.com ```  API endpoint  ```bash https://resource-controller.cloud.ibm.com ```  API endpoint  ```bash https://resource-controller.cloud.ibm.com ```  API endpoint  ```bash https://resource-controller.cloud.ibm.com ```  API endpoint  ```bash https://resource-controller.cloud.ibm.com ```  ### Using the SDK  With the Java SDK, you can build a service client for the Resource Controller by implementing the `ResourceController` class within the `com.ibm.cloud.platform_services.resource_controller.v2` package. To construct the client, you can set your options programmatically, or you can define external configuration properties to be used by your application.  The examples that are provided on this page demonstrate how to build a service client by using these two options. For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  With the Go SDK, you can build a service client for the Resource Controller by implementing the `ResourceControllerV2` class within the `resourcecontrollerv2` package. To construct the client, you can set your options programmatically, or you can define external configuration properties to be used by your application.  The examples that are provided on this page demonstrate how to build a service client by using these two options. For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  With the Node.js SDK, you can build a service client for the Resource Controller by implementing the `ResourceControllerV2` class within the `resource-controller/v2` module. To construct the client, you can set your options programmatically, or you can define external configuration properties to be used by your application.  The examples that are provided on this page demonstrate how to build a service client by using these two options. For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  With the Python SDK, you can build a service client for the Resource Controller by implementing the `ResourceControllerV2` class within the `ibm-platform-services` module. To construct the client, you can set your options programmatically, or you can define external configuration properties to be used by your application.  The examples that are provided on this page demonstrate how to build a service client by using these two options. For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  ## Endpoint URLs  The Resource Controller API uses the following global endpoint URL for all regions. When you call the API, add the path for each method to form the complete API endpoint for your requests.  ``` https://resource-controller.cloud.ibm.com ```  If you enabled service endpoints in your account, you can send API requests over the IBM Cloud private network at the following base endpoint URLs. For more information, see [Enabling VRF and service endpoints](https://cloud.ibm.com/docs/account?topic=account-vrf-service-endpoint).  * Private endpoint URL for VPC infrastructure (only available in US regions): `https://private.resource-controller.cloud.ibm.com` * Private endpoint URLs for classic and non-US region VPC infrastructure:    * Dallas: `https://private.us-south.resource-controller.cloud.ibm.com`    * Washington DC: `https://private.us-east.resource-controller.cloud.ibm.com`  Example API request ``` curl -X {request_method} \"https://resource-controller.cloud.ibm.com/{method_endpoint}\" ``` Replace `{request_method}` and `{method_endpoint}` in this example with the values for your particular API call.  ## Authentication  To work with the API, you must use an IBM Cloud Identity and Access Management (IAM) access token. The token is used to determine the actions that a user or service ID has access to when they use the API.  Obtaining an IAM token for an authenticated user or service ID is described in the [IAM Identity Services API](https://cloud.ibm.com/apidocs/iam-identity-token-api) documentation.  To use the API, add a valid IAM token to the HTTP Authorization request header, for example, `-H 'Authorization: Bearer <TOKEN>'`.  When you use the SDK, configure an IAM authenticator with the IAM API key. The authenticator automatically obtains the IAM access token for the API key and includes it with each request. You can construct an authenticator in either of two ways: - Programmatically by constructing an IAM authenticator instance and supplying your IAM API key - By defining the API key in external configuration properties and then using the SDK authenticator factory to construct an IAM authenticator that uses the configured IAM API key  In this example of using external configuration properties, an IAM authenticator instance is created with the configured API key, and then the service client is constructed with this authenticator instance and the configured service URL.  For more information, see the Authentication section of the [IBM Cloud SDK Common](https://github.com/IBM/ibm-cloud-sdk-common/blob/main/README.md) documentation.  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  To retrieve your access token:  ```bash curl -X POST https://iam.cloud.ibm.com/identity/token   -H \"Content-Type: application/x-www-form-urlencoded\"   -H \"Accept: application/json\"   -d \"grant_type=urn%3Aibm%3Aparams%3Aoauth%3Agrant-type%3Aapikey&apikey=<API_KEY>\" ```  Replace `<API_KEY>` with your service credentials. Then, use the full `IAM token` value that is prefixed by the _Bearer_ token type to authenticate your API requests.  To retrieve your instance ID:  ```bash ibmcloud resource service-instance <instance_name> --id ```  Replace `<instance_name>` with the `name` that you assigned to your service instance.  Setting client options through external configuration  Example environment variables, where `<API_KEY>` is your IAM API key ```sh export RESOURCE_CONTROLLER_APIKEY=<API_KEY> ```  Example of constructing the service client ```java import com.ibm.cloud.platform_services.resource_controller.v2.ResourceController; ... ResourceController resourceControllerService = ResourceController.newInstance(); ```  Setting client options through external configuration  Example environment variables, where `<API_KEY>` is your IAM API key ```sh export RESOURCE_CONTROLLER_APIKEY=<API_KEY> ```  Example of constructing the service client ```go import {     \"github.com/IBM/platform-services-go-sdk/resourcecontrollerv2\" } ... resourceControllerServiceOptions := &resourcecontrollerv2.ResourceControllerV2Options{} resourceControllerService, err := resourcecontrollerv2.NewResourceControllerV2UsingExternalConfig(resourceControllerServiceOptions) ```  Setting client options through external configuration  Example environment variables, where `<API_KEY>` is your IAM API key ```sh export RESOURCE_CONTROLLER_APIKEY=<API_KEY> ```  Example of constructing the service client ```python from ibm_platform_services import ResourceControllerV2 ... resource_controller_service = ResourceControllerV2.new_instance() ```  Setting client options through external configuration  Example environment variables, where `<API_KEY>` is your IAM API key ```sh export RESOURCE_CONTROLLER_APIKEY=<API_KEY> ```  Example of constructing the service client ```javascript const ResourceControllerV2 = require('ibm-platform-services/resource-controller/v2'); ... const resourceControllerService = ResourceControllerV2.newInstance({}); ```  ## Error handling  This API uses standard HTTP response codes to indicate whether a method completed successfully. A `200` response indicates success. A `400` type response indicates a failure, and a `500` type response indicates an internal system error.  Additionally, each response includes a `Transaction-Id` header that can be referenced when you contact [IBM Cloud support](https://www.ibm.com/cloud/support).  | HTTP Error Code | Description           | Recovery | |-----------------|-----------------------|----------| | `200`           | Success               | The request was successful. | | `400`           | Bad Request           | The input parameters in the request body are either incomplete or in the wrong format. Be sure to include all required parameters in your request. | | `401`           | Unauthorized          | You are not authorized to make this request. Log in to IBM Cloud and try again. If this error persists, contact the account owner to check your permissions. | | `403`           | Forbidden             | The supplied authentication is not authorized to access '{namespace}'. | | `404`           | Not Found             | The requested resource could not be found. | | `409`           | Conflict              | The entity is already in the requested state. | | `410`           | Gone                  | The resource is valid but was removed in a previous call. | | `500`           | Internal Server Error | *Offering_name* is unavailable. Your request could not be processed. Wait a few minutes and try again. |  ## Auditing  You can monitor API activity within your account by using the IBM Cloud Logs service. Whenever an API method is called, an event is generated that you can then track and audit from within IBM Cloud Logs. The specific event type is listed for each individual method.  For more information about how to track Account and Billing activity, see [Activity tracking events for account management](https://cloud.ibm.com/docs/account?topic=account-at_events_am).  ## Pagination  Some API requests might return a large number of results. To avoid performance issues, these results are returned one page at a time, with a limited number of results on each page. GET requests for the following resources use pagination:     * /v2/resource_instances    * /v2/resource_keys  The default page and max size is 100 objects. To use a different page size, use the `limit` query parameter.  For any request that uses pagination, the response includes a `next_url` object that specifies pagination information. `next_url` is the URL for requesting the next page of results. The `next_url` property is null if there are no more results, and retains the same `limit` parameter that is used for the initial request.  ## Rate limiting  Rate limits for API requests are enforced on a per-caller basis. If the number of requests for a particular method and endpoint reaches the request limit within the specified time window, no further requests are accepted until the timer expires. After the timer expires, a new time window begins with the next accepted request.  The response to each HTTP request includes headers you can use to determine whether you are close to the rate limit:     * X-RateLimit-Reset: the time the current timer expires (in UNIX epoch time)    * X-RateLimit-Remaining: the number of remaining requests in the current time window    * X-RateLimit-Limit: the total number of requests allowed within the time window  An HTTP status code of 429 indicates that the rate limit was exceeded.  The number of allowed requests, and the length of the time window, vary by method and endpoint. The reference information for each endpoint specifies the rate limit that applies.  ## Related APIs  When you work with the resource controller endpoints, it might be helpful to be aware of the IBM Cloud OSB APIs used to create your service broker.  * [IBM Cloud Open Service Broker](https://cloud.ibm.com/apidocs/resource-controller/ibm-cloud-osb-api) * [IBM Cloud Resource Manager](https://cloud.ibm.com/apidocs/resource-controller/resource-manager)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.23.0

=end

require 'cgi'

module IbmCloudResourceController
  class ResourceInstancesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel the in progress last operation of the resource instance
    # Cancel the in progress last operation of the resource instance. This is applicable for instances where the in progress last operation is `cancelable`.
    # @param id [String] The resource instance URL-encoded CRN or GUID.
    # @param [Hash] opts the optional parameters
    # @return [ResourceInstance]
    def cancel_lastop_resource_instance(id, opts = {})
      data, _status_code, _headers = cancel_lastop_resource_instance_with_http_info(id, opts)
      data
    end

    # Cancel the in progress last operation of the resource instance
    # Cancel the in progress last operation of the resource instance. This is applicable for instances where the in progress last operation is &#x60;cancelable&#x60;.
    # @param id [String] The resource instance URL-encoded CRN or GUID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResourceInstance, Integer, Hash)>] ResourceInstance data, response status code and response headers
    def cancel_lastop_resource_instance_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.cancel_lastop_resource_instance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ResourceInstancesApi.cancel_lastop_resource_instance"
      end
      # resource path
      local_var_path = '/v2/resource_instances/{id}/last_operation'.sub('{id}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ResourceInstance'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['IAM']

      new_options = opts.merge(
        :operation => :"ResourceInstancesApi.cancel_lastop_resource_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceInstancesApi#cancel_lastop_resource_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create (provision) a new resource instance
    # When you provision a service you get an instance of that service. An instance represents the resource with which you create, and additionally, represents a chargeable record of which billing can occur.
    # @param resource_instance_post [ResourceInstancePost] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :entity_lock Indicates if the resource instance is locked for further update or delete operations. It does not affect actions performed on child resources like keys. False by default. (default to false)
    # @return [ResourceInstance]
    def create_resource_instance(resource_instance_post, opts = {})
      data, _status_code, _headers = create_resource_instance_with_http_info(resource_instance_post, opts)
      data
    end

    # Create (provision) a new resource instance
    # When you provision a service you get an instance of that service. An instance represents the resource with which you create, and additionally, represents a chargeable record of which billing can occur.
    # @param resource_instance_post [ResourceInstancePost] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :entity_lock Indicates if the resource instance is locked for further update or delete operations. It does not affect actions performed on child resources like keys. False by default. (default to false)
    # @return [Array<(ResourceInstance, Integer, Hash)>] ResourceInstance data, response status code and response headers
    def create_resource_instance_with_http_info(resource_instance_post, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.create_resource_instance ...'
      end
      # verify the required parameter 'resource_instance_post' is set
      if @api_client.config.client_side_validation && resource_instance_post.nil?
        fail ArgumentError, "Missing the required parameter 'resource_instance_post' when calling ResourceInstancesApi.create_resource_instance"
      end
      # resource path
      local_var_path = '/v2/resource_instances'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Entity-Lock'] = opts[:'entity_lock'] if !opts[:'entity_lock'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(resource_instance_post)

      # return_type
      return_type = opts[:debug_return_type] || 'ResourceInstance'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['IAM']

      new_options = opts.merge(
        :operation => :"ResourceInstancesApi.create_resource_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceInstancesApi#create_resource_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a resource instance
    # Delete a resource instance by URL-encoded CRN or GUID. If the resource instance has any resource keys associated with it, use the `recursive=true` parameter to delete it.
    # @param id [String] The resource instance URL-encoded CRN or GUID.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :recursive Will delete keys associated with the instance. (default to false)
    # @return [nil]
    def delete_resource_instance(id, opts = {})
      delete_resource_instance_with_http_info(id, opts)
      nil
    end

    # Delete a resource instance
    # Delete a resource instance by URL-encoded CRN or GUID. If the resource instance has any resource keys associated with it, use the &#x60;recursive&#x3D;true&#x60; parameter to delete it.
    # @param id [String] The resource instance URL-encoded CRN or GUID.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :recursive Will delete keys associated with the instance. (default to false)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_resource_instance_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.delete_resource_instance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ResourceInstancesApi.delete_resource_instance"
      end
      # resource path
      local_var_path = '/v2/resource_instances/{id}'.sub('{id}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'recursive'] = opts[:'recursive'] if !opts[:'recursive'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['IAM']

      new_options = opts.merge(
        :operation => :"ResourceInstancesApi.delete_resource_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceInstancesApi#delete_resource_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a resource instance
    # Retrieve a resource instance by URL-encoded CRN or GUID. Find more details on a particular instance, like when it was provisioned and who provisioned it.
    # @param id [String] The resource instance URL-encoded CRN or GUID.
    # @param [Hash] opts the optional parameters
    # @return [ResourceInstance]
    def get_resource_instance(id, opts = {})
      data, _status_code, _headers = get_resource_instance_with_http_info(id, opts)
      data
    end

    # Get a resource instance
    # Retrieve a resource instance by URL-encoded CRN or GUID. Find more details on a particular instance, like when it was provisioned and who provisioned it.
    # @param id [String] The resource instance URL-encoded CRN or GUID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResourceInstance, Integer, Hash)>] ResourceInstance data, response status code and response headers
    def get_resource_instance_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.get_resource_instance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ResourceInstancesApi.get_resource_instance"
      end
      # resource path
      local_var_path = '/v2/resource_instances/{id}'.sub('{id}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ResourceInstance'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['IAM']

      new_options = opts.merge(
        :operation => :"ResourceInstancesApi.get_resource_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceInstancesApi#get_resource_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of all resource instances
    # View a list of all available resource instances. Resources is a broad term that could mean anything from a service instance to a virtual machine associated with the customer account.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :guid The GUID of the instance.
    # @option opts [String] :name The human-readable name of the instance.
    # @option opts [String] :resource_group_id The ID of the resource group.
    # @option opts [String] :resource_id The unique ID of the offering. This value is provided by and stored in the global catalog.
    # @option opts [String] :resource_plan_id The unique ID of the plan associated with the offering. This value is provided by and stored in the global catalog.
    # @option opts [String] :type The type of the instance, for example, &#x60;service_instance&#x60;.
    # @option opts [String] :sub_type The sub-type of instance, for example, &#x60;kms&#x60;.
    # @option opts [String] :subscription_id The ID of the subscription.
    # @option opts [Integer] :limit Limit on how many items should be returned. The number of items returned may be less than the specified limit if the caller lacks sufficient access to retrieve certain resource instances. (default to 100)
    # @option opts [String] :start An optional token that indicates the beginning of the page of results to be returned. Any additional query parameters are ignored if a page token is present. If omitted, the first page of results is returned. This value is obtained from the &#39;start&#39; query parameter in the &#39;next_url&#39; field of the operation response.
    # @option opts [String] :state The state of the instance. If not specified, instances in state &#x60;active&#x60;, &#x60;inactive&#x60;, &#x60;failed&#x60;, &#x60;provisioning&#x60; and &#x60;pre_provisioning&#x60; are returned.
    # @option opts [String] :updated_from Start date inclusive filter.
    # @option opts [String] :updated_to End date inclusive filter.
    # @option opts [String] :sort Optional sort property, valid values are &#x60;name&#x60;, &#x60;created_at&#x60; and &#x60;updated_at&#x60;. If specified, the items are sorted by the value of this property. (default to 'name')
    # @option opts [String] :order Optional sort order, valid values are &#x60;asc&#x60; and &#x60;desc&#x60;. (default to 'asc')
    # @return [ResourceInstancesList]
    def list_resource_instances(opts = {})
      data, _status_code, _headers = list_resource_instances_with_http_info(opts)
      data
    end

    # Get a list of all resource instances
    # View a list of all available resource instances. Resources is a broad term that could mean anything from a service instance to a virtual machine associated with the customer account.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :guid The GUID of the instance.
    # @option opts [String] :name The human-readable name of the instance.
    # @option opts [String] :resource_group_id The ID of the resource group.
    # @option opts [String] :resource_id The unique ID of the offering. This value is provided by and stored in the global catalog.
    # @option opts [String] :resource_plan_id The unique ID of the plan associated with the offering. This value is provided by and stored in the global catalog.
    # @option opts [String] :type The type of the instance, for example, &#x60;service_instance&#x60;.
    # @option opts [String] :sub_type The sub-type of instance, for example, &#x60;kms&#x60;.
    # @option opts [String] :subscription_id The ID of the subscription.
    # @option opts [Integer] :limit Limit on how many items should be returned. The number of items returned may be less than the specified limit if the caller lacks sufficient access to retrieve certain resource instances. (default to 100)
    # @option opts [String] :start An optional token that indicates the beginning of the page of results to be returned. Any additional query parameters are ignored if a page token is present. If omitted, the first page of results is returned. This value is obtained from the &#39;start&#39; query parameter in the &#39;next_url&#39; field of the operation response.
    # @option opts [String] :state The state of the instance. If not specified, instances in state &#x60;active&#x60;, &#x60;inactive&#x60;, &#x60;failed&#x60;, &#x60;provisioning&#x60; and &#x60;pre_provisioning&#x60; are returned.
    # @option opts [String] :updated_from Start date inclusive filter.
    # @option opts [String] :updated_to End date inclusive filter.
    # @option opts [String] :sort Optional sort property, valid values are &#x60;name&#x60;, &#x60;created_at&#x60; and &#x60;updated_at&#x60;. If specified, the items are sorted by the value of this property. (default to 'name')
    # @option opts [String] :order Optional sort order, valid values are &#x60;asc&#x60; and &#x60;desc&#x60;. (default to 'asc')
    # @return [Array<(ResourceInstancesList, Integer, Hash)>] ResourceInstancesList data, response status code and response headers
    def list_resource_instances_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.list_resource_instances ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ResourceInstancesApi.list_resource_instances, must be smaller than or equal to 100.'
      end

      allowable_values = ["active", "inactive", "failed", "pending_reclamation", "provisioning", "pre_provisioning", "removed"]
      if @api_client.config.client_side_validation && opts[:'state'] && !allowable_values.include?(opts[:'state'])
        fail ArgumentError, "invalid value for \"state\", must be one of #{allowable_values}"
      end
      allowable_values = ["name", "created_at", "updated_at"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      allowable_values = ["asc", "desc"]
      if @api_client.config.client_side_validation && opts[:'order'] && !allowable_values.include?(opts[:'order'])
        fail ArgumentError, "invalid value for \"order\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v2/resource_instances'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'guid'] = opts[:'guid'] if !opts[:'guid'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'resource_group_id'] = opts[:'resource_group_id'] if !opts[:'resource_group_id'].nil?
      query_params[:'resource_id'] = opts[:'resource_id'] if !opts[:'resource_id'].nil?
      query_params[:'resource_plan_id'] = opts[:'resource_plan_id'] if !opts[:'resource_plan_id'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'sub_type'] = opts[:'sub_type'] if !opts[:'sub_type'].nil?
      query_params[:'subscription_id'] = opts[:'subscription_id'] if !opts[:'subscription_id'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'start'] = opts[:'start'] if !opts[:'start'].nil?
      query_params[:'state'] = opts[:'state'] if !opts[:'state'].nil?
      query_params[:'updated_from'] = opts[:'updated_from'] if !opts[:'updated_from'].nil?
      query_params[:'updated_to'] = opts[:'updated_to'] if !opts[:'updated_to'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ResourceInstancesList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['IAM']

      new_options = opts.merge(
        :operation => :"ResourceInstancesApi.list_resource_instances",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceInstancesApi#list_resource_instances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of all the resource keys for the instance.
    # You may have many resource keys for one resource instance. For example, you may have a different resource key for each user or each role.
    # @param id [String] The resource instance URL-encoded CRN or GUID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Limit on how many items should be returned. The number of items returned may be less than the specified limit if the caller lacks sufficient access to retrieve certain resource keys. (default to 100)
    # @option opts [String] :start An optional token that indicates the beginning of the page of results to be returned. Any additional query parameters are ignored if a page token is present. If omitted, the first page of results is returned. This value is obtained from the &#39;start&#39; query parameter in the &#39;next_url&#39; field of the operation response.
    # @option opts [String] :sort Optional sort property, valid values are &#x60;name&#x60;, &#x60;created_at&#x60; and &#x60;updated_at&#x60;. If specified, the items are sorted by the value of this property. (default to 'name')
    # @option opts [String] :order Optional sort order, valid values are &#x60;asc&#x60; and &#x60;desc&#x60;. (default to 'asc')
    # @return [ResourceKeysList]
    def list_resource_keys_for_instance(id, opts = {})
      data, _status_code, _headers = list_resource_keys_for_instance_with_http_info(id, opts)
      data
    end

    # Get a list of all the resource keys for the instance.
    # You may have many resource keys for one resource instance. For example, you may have a different resource key for each user or each role.
    # @param id [String] The resource instance URL-encoded CRN or GUID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Limit on how many items should be returned. The number of items returned may be less than the specified limit if the caller lacks sufficient access to retrieve certain resource keys. (default to 100)
    # @option opts [String] :start An optional token that indicates the beginning of the page of results to be returned. Any additional query parameters are ignored if a page token is present. If omitted, the first page of results is returned. This value is obtained from the &#39;start&#39; query parameter in the &#39;next_url&#39; field of the operation response.
    # @option opts [String] :sort Optional sort property, valid values are &#x60;name&#x60;, &#x60;created_at&#x60; and &#x60;updated_at&#x60;. If specified, the items are sorted by the value of this property. (default to 'name')
    # @option opts [String] :order Optional sort order, valid values are &#x60;asc&#x60; and &#x60;desc&#x60;. (default to 'asc')
    # @return [Array<(ResourceKeysList, Integer, Hash)>] ResourceKeysList data, response status code and response headers
    def list_resource_keys_for_instance_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.list_resource_keys_for_instance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ResourceInstancesApi.list_resource_keys_for_instance"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ResourceInstancesApi.list_resource_keys_for_instance, must be smaller than or equal to 100.'
      end

      allowable_values = ["name", "created_at", "updated_at"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      allowable_values = ["asc", "desc"]
      if @api_client.config.client_side_validation && opts[:'order'] && !allowable_values.include?(opts[:'order'])
        fail ArgumentError, "invalid value for \"order\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v2/resource_instances/{id}/resource_keys'.sub('{id}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'start'] = opts[:'start'] if !opts[:'start'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ResourceKeysList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['IAM']

      new_options = opts.merge(
        :operation => :"ResourceInstancesApi.list_resource_keys_for_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceInstancesApi#list_resource_keys_for_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lock a resource instance
    # Locks a resource instance. A locked instance can not be updated or deleted. It does not affect actions performed on child resources like keys.
    # @param id [String] The resource instance URL-encoded CRN or GUID.
    # @param [Hash] opts the optional parameters
    # @return [ResourceInstance]
    def lock_resource_instance(id, opts = {})
      data, _status_code, _headers = lock_resource_instance_with_http_info(id, opts)
      data
    end

    # Lock a resource instance
    # Locks a resource instance. A locked instance can not be updated or deleted. It does not affect actions performed on child resources like keys.
    # @param id [String] The resource instance URL-encoded CRN or GUID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResourceInstance, Integer, Hash)>] ResourceInstance data, response status code and response headers
    def lock_resource_instance_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.lock_resource_instance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ResourceInstancesApi.lock_resource_instance"
      end
      # resource path
      local_var_path = '/v2/resource_instances/{id}/lock'.sub('{id}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ResourceInstance'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['IAM']

      new_options = opts.merge(
        :operation => :"ResourceInstancesApi.lock_resource_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceInstancesApi#lock_resource_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unlock a resource instance
    # Unlock a resource instance to update or delete it. Unlocking a resource instance does not affect child resources like keys.
    # @param id [String] The resource instance URL-encoded CRN or GUID.
    # @param [Hash] opts the optional parameters
    # @return [ResourceInstance]
    def unlock_resource_instance(id, opts = {})
      data, _status_code, _headers = unlock_resource_instance_with_http_info(id, opts)
      data
    end

    # Unlock a resource instance
    # Unlock a resource instance to update or delete it. Unlocking a resource instance does not affect child resources like keys.
    # @param id [String] The resource instance URL-encoded CRN or GUID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResourceInstance, Integer, Hash)>] ResourceInstance data, response status code and response headers
    def unlock_resource_instance_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.unlock_resource_instance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ResourceInstancesApi.unlock_resource_instance"
      end
      # resource path
      local_var_path = '/v2/resource_instances/{id}/lock'.sub('{id}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ResourceInstance'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['IAM']

      new_options = opts.merge(
        :operation => :"ResourceInstancesApi.unlock_resource_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceInstancesApi#unlock_resource_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a resource instance
    # Use the resource instance URL-encoded CRN or GUID to make updates to the resource instance, like changing the name or plan.
    # @param id [String] The resource instance URL-encoded CRN or GUID.
    # @param resource_instance_patch [ResourceInstancePatch] 
    # @param [Hash] opts the optional parameters
    # @return [ResourceInstance]
    def update_resource_instance(id, resource_instance_patch, opts = {})
      data, _status_code, _headers = update_resource_instance_with_http_info(id, resource_instance_patch, opts)
      data
    end

    # Update a resource instance
    # Use the resource instance URL-encoded CRN or GUID to make updates to the resource instance, like changing the name or plan.
    # @param id [String] The resource instance URL-encoded CRN or GUID.
    # @param resource_instance_patch [ResourceInstancePatch] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResourceInstance, Integer, Hash)>] ResourceInstance data, response status code and response headers
    def update_resource_instance_with_http_info(id, resource_instance_patch, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.update_resource_instance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ResourceInstancesApi.update_resource_instance"
      end
      # verify the required parameter 'resource_instance_patch' is set
      if @api_client.config.client_side_validation && resource_instance_patch.nil?
        fail ArgumentError, "Missing the required parameter 'resource_instance_patch' when calling ResourceInstancesApi.update_resource_instance"
      end
      # resource path
      local_var_path = '/v2/resource_instances/{id}'.sub('{id}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(resource_instance_patch)

      # return_type
      return_type = opts[:debug_return_type] || 'ResourceInstance'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['IAM']

      new_options = opts.merge(
        :operation => :"ResourceInstancesApi.update_resource_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceInstancesApi#update_resource_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
