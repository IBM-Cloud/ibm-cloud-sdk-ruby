=begin
#IAM Identity Services

#   ## Introduction  The IAM Identity Service API is used to manage service IDs, API key identities, trusted profiles, account security settings and to create IAM access tokens for a user or service ID.  With trusted profile templates and assignments you can centrally manage access for child accounts in your organization from the root enterprise account. Similarly with settings templates and assignments, you can centrally administer account security settings. For more information, see [Working with template versions](https://cloud.ibm.com/docs/secure-enterprise?topic=secure-enterprise-working-with-versions&interface=ui) and [Best practices for assigning access in an enterprise](https://cloud.ibm.com/docs/secure-enterprise?topic=secure-enterprise-access-enterprises).  SDKs for Java, Node, Python, and Go are available to make it easier to programmatically access the API from your code. The client libraries that are provided by the SDKs implement best practices for using the API and reduce the amount of code that you need to write. The tab for each language includes code examples that demonstrate how to use the client libraries. For more information about using the SDKs, see the [IBM Cloud SDK Common project](https://github.com/IBM/ibm-cloud-sdk-common) on GitHub.  Installing the Java SDK  Maven  ```xml <dependency>  <groupId>com.ibm.cloud</groupId>  <artifactId>iam-identity</artifactId>  <version>{version}</version> </dependency> ```  Gradle  ```bash compile 'com.ibm.cloud:iam-identity:{version}' ```  Replace `{version}` in these examples with the release version.  View on GitHub  [https://github.com/IBM/platform-services-java-sdk](https://github.com/IBM/platform-services-java-sdk)  Installing the Go SDK  Go modules (recommended): Add the following import in your code, and then run `go build` or `go mod tidy`  ```go import (  \"github.com/IBM/platform-services-go-sdk/iamidentityv1\" ) ```  ```bash go get -u github.com/IBM/platform-services-go-sdk/iamidentityv1 ```  View on GitHub  [https://github.com/IBM/platform-services-go-sdk](https://github.com/IBM/platform-services-go-sdk)  Installing the Node SDK  ```bash npm install @ibm-cloud/platform-services ```  View on GitHub  [https://github.com/IBM/platform-services-node-sdk](https://github.com/IBM/platform-services-node-sdk)  Installing the Python SDK  ```bash pip install --upgrade \"ibm-platform-services\" ```  View on GitHub  [https://github.com/IBM/platform-services-python-sdk](https://github.com/IBM/platform-services-python-sdk)  The examples that are provided on this page demonstrate how to use IAM Identity Service For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  The examples that are provided on this page demonstrate how to use IAM Identity Service For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  The examples that are provided on this page demonstrate how to use IAM Identity Service For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  The examples that are provided on this page demonstrate how to use IAM Identity Service For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  ## Endpoint URLs  The IAM Identity Services API uses the following public global endpoint URL. When you call the API, add the path for each method to form the complete API endpoint for your requests.  ```bash https://iam.cloud.ibm.com ```  Virtual private cloud (VPC) based access requires a virtual private endpoint gateway (VPE gateway). For more information , see [Creating an endpoint gateway](https://cloud.ibm.com/docs/vpc?topic=vpc-ordering-endpoint-gateway).  * Private endpoint URL for VPC infrastructure: `https://private.iam.cloud.ibm.com`.   VPE gateway creation is supported in all datacenters (see https://cloud.ibm.com/docs/overview?topic=overview-locations#regions).  If you enabled service endpoints in your account, you can send API requests over the IBM Cloud® private network at the following base endpoint URLs. For more information, see [Enabling VRF and service endpoints](https://cloud.ibm.com/docs/account?topic=account-vrf-service-endpoint).  * Private endpoint URLs for classic infrastructure. Supported URLs:      * Sydney: `https://private.au-syd.iam.cloud.ibm.com`    * Sao Paulo: `https://private.br-sao.iam.cloud.ibm.com`    * Montreal: `https://private.ca-mon.iam.cloud.ibm.com`    * Toronto: `https://private.ca-tor.iam.cloud.ibm.com`    * Frankfurt DC: `https://private.eu-de.iam.cloud.ibm.com`    * London: `https://private.eu-gb.iam.cloud.ibm.com`    * Madrid: `https://private.eu-es.iam.cloud.ibm.com`    * Tokyo: `https://private.jp-tok.iam.cloud.ibm.com`    * Osaka: `https://private.jp-osa.iam.cloud.ibm.com`    * Washington DC: `https://private.us-east.iam.cloud.ibm.com`    * Dallas: `https://private.us-south.iam.cloud.ibm.com`  IAM is a global service and deployed to multiple MZRs world wide. IAM can be reached from all locations using the public global endpoint or using one of the private endpoints. Each request is sent to the closest region related to the client that invokes the call to IAM.  Example API request  ```bash curl -u \"apikey:{apikey}\" -X {request_method} \"https://iam.cloud.ibm.com/{method_endpoint}\" ```  Replace `{apikey}`, `{request_method}`, and `{method_endpoint}` in this example with the values for your particular API call.  ## Authentication  Authorization to the Identity Services REST API is enforced by using an IBM Cloud Identity and Access Management (IAM) access token. The token is used to determine the actions that a user or service ID has access to when they use the API.   You can generate an access token by first [creating an API key](https://cloud.ibm.com/docs/account?topic=account-iamtoken_from_apikey) and then exchanging your API key for an IBM Cloud IAM token.   Don't have an API key? Try running `ibmcloud iam oauth-tokens` in the [IBM Cloud Shell](https://cloud.ibm.com/shell) to quickly generate a personal access token.  When you use the SDK, configure an IAM authenticator with the IAM API key. The authenticator automatically obtains the IAM access token for the API key and includes it with each request. You can construct an authenticator in either of two ways: - Programmatically by constructing an IAM authenticator instance and supplying your IAM API key  - By defining the API key in external configuration properties and then using the SDK authenticator factory to construct an IAM authenticator that uses the configured IAM API key  In this example of using external configuration properties, an IAM authenticator instance is created with the configured API key, and then the service client is constructed with this authenticator instance and the configured service URL.  For more information, see the Authentication section of the [IBM Cloud SDK Common](https://github.com/IBM/ibm-cloud-sdk-common/blob/main/README.md) documentation.  To call each method, you'll need to be assigned a role that includes the required IAM actions. Each method lists the associated action. For more information about IAM actions and how they map to roles, see [IAM Identity service](https://cloud.ibm.com/docs/account?topic=account-account-services#identity-service-account-management).  To retrieve your access token:  ```bash curl -X POST \\   \"https://iam.cloud.ibm.com/identity/token\" \\   --header 'Content-Type: application/x-www-form-urlencoded' \\   --header 'Accept: application/json' \\   --data-urlencode 'grant_type=urn:ibm:params:oauth:grant-type:apikey' \\   --data-urlencode 'apikey=<API_KEY>' ```  Replace `<API_KEY>` with your IAM API key.  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export IAM_IDENTITY_URL=<SERVICE_URL> export IAM_IDENTITY_AUTHTYPE=iam export IAM_IDENTITY_APIKEY=<API_KEY> ```  Example of constructing the service client ```go import {     \"github.com/IBM/platform-services-go-sdk/iamidentityv1\" } ... serviceClientOptions := &iamidentityv1.IamIdentityV1Options{} serviceClient, err := iamidentityv1.NewIamIdentityV1UsingExternalConfig(serviceClientOptions) ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export IAM_IDENTITY_URL=<SERVICE_URL> export IAM_IDENTITY_AUTHTYPE=iam export IAM_IDENTITY_APIKEY=<API_KEY> ```  Example of constructing the service client ```java import com.ibm.cloud.platform_services.iam_identity.v1.IamIdentity; ... IamIdentity serviceClient = IamIdentity.newInstance(); ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export IAM_IDENTITY_URL=<SERVICE_URL> export IAM_IDENTITY_AUTHTYPE=iam export IAM_IDENTITY_APIKEY=<API_KEY> ```  Example of constructing the service client ```javascript const IamIdentityV1 = require('@ibm-cloud/platform-services/iam-identity/v1'); ... const serviceClient = IamIdentityV1.newInstance({}); ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export IAM_IDENTITY_URL=<SERVICE_URL> export IAM_IDENTITY_AUTHTYPE=iam export IAM_IDENTITY_APIKEY=<API_KEY> ```  Example of constructing the service client ```python from ibm_platform_services import IamIdentityV1 ... service_client = IamIdentityV1.new_instance() ```  You authenticate to the API by using Cloud Identity and Access Management (IAM). You can pass either a bearer token in an authorization header or an [API key](https://cloud.ibm.com/docs/account?topic=account-manapikey).  The SDK provides initialization methods for each form of authentication.  - Use the API key to have the SDK manage the lifecycle of the access token. The SDK requests an access token, ensures that the access token is valid, includes the access token in each outgoing request, and refreshes it when it expires. - Use the access token to manage the lifecycle yourself. Keep in mind that access tokens are valid for 1 hour, so you must refresh them regularly to maintain access.  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  ## Auditing  You can monitor API activity within your account by using the IBM Cloud Logs service. Whenever an API method is called, an event is generated that you can then track and audit from within IBM Cloud Logs. The specific event type is listed for each individual method.  If an event is tracked for a method, you can find it listed with the method. For more information about how to track IAM activity, see [Activity tracking events for IAM](https://cloud.ibm.com/docs/account?topic=account-at_events_iam).  ## Error handling  The IAM Token Service uses standard HTTP response codes to indicate whether a method completed successfully. A `200` response always indicates success. A `400` type response indicates that a parameter validation failed and can occur if required parameters are missing or if any parameter values are invalid. A `401` or `403` response indicates that the incoming request did not contain valid authentication information. A `500` type response indicates an internal server error that is seen in an unexpected error situation.  The Identity Services REST APIs return standard HTTP status codes to indicate the success or failure of a request. The format of the response is represented in JSON as follows: ```json {     \"trace\": \"9daee671-916a-4678-850b-10b911f0236d\",     \"errors\": [         {             \"code\": \"invalid_access_token\",             \"message\": \"The provided access token provided is invalid.\"         }     ]     \"status_code\": 401 } ``` If an operation cannot be fulfilled, an appropriate 400 or 500 series HTTP response is returned from the server. The operations that are defined in the `Reference` section describe example errors that might be returned from a failed request. All responses from the Identity Services REST API are in JSON format.  The following table show the potential error codes the API might return.  | HTTP Error Code | Description | Recovery | |-----------------|-------------|----------| | `200` | Success | The request was successful. | | `201` | Created | The resource was successfully created. | | `204` | No Content | The request was successful. No response body is provided. | | `400` | Bad Request | The input parameters in the request body are either incomplete or in the wrong format. Be sure to include all required parameters in your request. | | `401` | Unauthorized | You are not authorized to make this request. The token is either missing or expired. Get a new valid token and try again.     | | `403` | Forbidden | The supplied authentication is not authorized to perform the operation. If this error persists, contact the account owner to check your permissions. | | `404` | Not Found | The requested resource can't be found. | | `409` | Conflict | The entity is already in the requested state. | | `429` | Too Many Requests | Too many requests have been made within a time window. Wait before calling the API again. | | `500` | Internal error | Error that is seen in an unexpected error situation. |  ## Additional headers  Some additional headers might be required to make successful requests to the API. Those additional headers are:  An optional transaction ID can be passed to your request, which can be useful for tracking calls through multiple services using one identifier. The header key must be set to `Transaction-Id` and the value is anything that you choose.  If there is not a transaction ID that is passed in, then one is generated randomly.  ## API Parameters Some API parameter have additional details that need to be considered while using it in a request. Those API parameters are as follow:  ### Filtering list results  When listing service IDs, trusted profiles or API keys you can filter the result set by providing an optional `filter` parameter. The exact syntax of this parameter is described below. Query syntax will follow the SCIM query syntax with reduced operator support. The value must be URL encoded. Only the following operators are supported.  * Supported attribute operators-  - `sw` - starts with  - `sw_ci` - starts with ingnore case - non SCIM standard  - `ew` - ends with  - `ew_ci` - ends with ingnore case - non SCIM standard  - `co` - contains  - `co_ci` - contains ingnore case - non SCIM standard * Supported operators-   - `and`   - `or` * Grouping operators-   - `()` * Data Values   -`Text` * Sample   - `name co \"Foo\" and description sw \"Bar\"`

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.23.0

=end

require 'cgi'

module IbmCloudIam
  class ServiceIDsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a service ID
    # Creates a service ID for an IBM Cloud account. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.  
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param create_service_id_request [CreateServiceIdRequest] Request to create a service ID.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :show_group_id Defines if the service ID group ID is included in the response.
    # @option opts [String] :entity_lock Indicates if the service ID is locked for further write operations. False by default. (default to 'false')
    # @return [ServiceId]
    def create_service_id(authorization, create_service_id_request, opts = {})
      data, _status_code, _headers = create_service_id_with_http_info(authorization, create_service_id_request, opts)
      data
    end

    # Create a service ID
    # Creates a service ID for an IBM Cloud account. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.  
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param create_service_id_request [CreateServiceIdRequest] Request to create a service ID.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :show_group_id Defines if the service ID group ID is included in the response.
    # @option opts [String] :entity_lock Indicates if the service ID is locked for further write operations. False by default. (default to 'false')
    # @return [Array<(ServiceId, Integer, Hash)>] ServiceId data, response status code and response headers
    def create_service_id_with_http_info(authorization, create_service_id_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceIDsApi.create_service_id ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling ServiceIDsApi.create_service_id"
      end
      # verify the required parameter 'create_service_id_request' is set
      if @api_client.config.client_side_validation && create_service_id_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_service_id_request' when calling ServiceIDsApi.create_service_id"
      end
      # resource path
      local_var_path = '/v1/serviceids/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'show_group_id'] = opts[:'show_group_id'] if !opts[:'show_group_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Authorization'] = authorization
      header_params[:'Entity-Lock'] = opts[:'entity_lock'] if !opts[:'entity_lock'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_service_id_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ServiceId'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ServiceIDsApi.create_service_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceIDsApi#create_service_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a service ID and associated API keys
    # Deletes a service ID and all API keys associated to it. Before deleting the service ID, all associated API keys are deleted. In case a Delete Conflict (status code 409) a retry of the request may help as the service ID is only deleted if the associated API keys were successfully deleted before. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.  
    # @param id [String] Unique ID of the service ID.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_service_id(id, authorization, opts = {})
      delete_service_id_with_http_info(id, authorization, opts)
      nil
    end

    # Deletes a service ID and associated API keys
    # Deletes a service ID and all API keys associated to it. Before deleting the service ID, all associated API keys are deleted. In case a Delete Conflict (status code 409) a retry of the request may help as the service ID is only deleted if the associated API keys were successfully deleted before. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.  
    # @param id [String] Unique ID of the service ID.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_service_id_with_http_info(id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceIDsApi.delete_service_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServiceIDsApi.delete_service_id"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling ServiceIDsApi.delete_service_id"
      end
      # resource path
      local_var_path = '/v1/serviceids/{id}'.sub('{id}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ServiceIDsApi.delete_service_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceIDsApi#delete_service_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get details of a service ID
    # Returns the details of a service ID. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to. Note: apikey details are only included in the response when creating a Service ID with an api key.  
    # @param id [String] Unique ID of the service ID.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_history Defines if the entity history is included in the response. (default to false)
    # @option opts [Boolean] :include_activity Defines if the entity&#39;s activity is included in the response. Retrieving activity data is an expensive operation, so only request this when needed. (default to false)
    # @option opts [String] :show_group_id Defines if the service ID group ID is included in the response.
    # @return [ServiceId]
    def get_service_id(id, authorization, opts = {})
      data, _status_code, _headers = get_service_id_with_http_info(id, authorization, opts)
      data
    end

    # Get details of a service ID
    # Returns the details of a service ID. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to. Note: apikey details are only included in the response when creating a Service ID with an api key.  
    # @param id [String] Unique ID of the service ID.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_history Defines if the entity history is included in the response. (default to false)
    # @option opts [Boolean] :include_activity Defines if the entity&#39;s activity is included in the response. Retrieving activity data is an expensive operation, so only request this when needed. (default to false)
    # @option opts [String] :show_group_id Defines if the service ID group ID is included in the response.
    # @return [Array<(ServiceId, Integer, Hash)>] ServiceId data, response status code and response headers
    def get_service_id_with_http_info(id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceIDsApi.get_service_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServiceIDsApi.get_service_id"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling ServiceIDsApi.get_service_id"
      end
      # resource path
      local_var_path = '/v1/serviceids/{id}'.sub('{id}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include_history'] = opts[:'include_history'] if !opts[:'include_history'].nil?
      query_params[:'include_activity'] = opts[:'include_activity'] if !opts[:'include_activity'].nil?
      query_params[:'show_group_id'] = opts[:'show_group_id'] if !opts[:'show_group_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ServiceId'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ServiceIDsApi.get_service_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceIDsApi#get_service_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List service IDs
    # Returns a list of service IDs. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to. Note: apikey details are only included in the response when creating a Service ID with an api key.  
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_id Account ID of the service ID(s) to query. This parameter is required (unless using a pagetoken).
    # @option opts [String] :group_id Group ID of the service ID(s) to query. If this parameter is not provided the default group is applied.
    # @option opts [String] :name Name of the service ID(s) to query. Optional.20 items per page. Valid range is 1 to 100.
    # @option opts [Integer] :pagesize Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100.
    # @option opts [String] :pagetoken Optional Prev or Next page token returned from a previous query execution. Default is start with first page.
    # @option opts [String] :sort Optional sort property, valid values are name, description, created_at and modified_at. If specified, the items are sorted by the value of this property.
    # @option opts [String] :order Optional sort order, valid values are asc and desc. Default: asc. (default to 'asc')
    # @option opts [Boolean] :include_history Defines if the entity history is included in the response. (default to false)
    # @option opts [String] :filter An optional filter query parameter used to refine the results of the search operation. For more information see [Filtering list results](#filter-list-results) section.
    # @option opts [String] :show_group_id Defines if the service ID group ID is included in the response.
    # @return [ServiceIdList]
    def list_service_ids(authorization, opts = {})
      data, _status_code, _headers = list_service_ids_with_http_info(authorization, opts)
      data
    end

    # List service IDs
    # Returns a list of service IDs. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to. Note: apikey details are only included in the response when creating a Service ID with an api key.  
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_id Account ID of the service ID(s) to query. This parameter is required (unless using a pagetoken).
    # @option opts [String] :group_id Group ID of the service ID(s) to query. If this parameter is not provided the default group is applied.
    # @option opts [String] :name Name of the service ID(s) to query. Optional.20 items per page. Valid range is 1 to 100.
    # @option opts [Integer] :pagesize Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100.
    # @option opts [String] :pagetoken Optional Prev or Next page token returned from a previous query execution. Default is start with first page.
    # @option opts [String] :sort Optional sort property, valid values are name, description, created_at and modified_at. If specified, the items are sorted by the value of this property.
    # @option opts [String] :order Optional sort order, valid values are asc and desc. Default: asc. (default to 'asc')
    # @option opts [Boolean] :include_history Defines if the entity history is included in the response. (default to false)
    # @option opts [String] :filter An optional filter query parameter used to refine the results of the search operation. For more information see [Filtering list results](#filter-list-results) section.
    # @option opts [String] :show_group_id Defines if the service ID group ID is included in the response.
    # @return [Array<(ServiceIdList, Integer, Hash)>] ServiceIdList data, response status code and response headers
    def list_service_ids_with_http_info(authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceIDsApi.list_service_ids ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling ServiceIDsApi.list_service_ids"
      end
      allowable_values = ["asc", "desc"]
      if @api_client.config.client_side_validation && opts[:'order'] && !allowable_values.include?(opts[:'order'])
        fail ArgumentError, "invalid value for \"order\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/serviceids/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'group_id'] = opts[:'group_id'] if !opts[:'group_id'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'pagesize'] = opts[:'pagesize'] if !opts[:'pagesize'].nil?
      query_params[:'pagetoken'] = opts[:'pagetoken'] if !opts[:'pagetoken'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'include_history'] = opts[:'include_history'] if !opts[:'include_history'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'show_group_id'] = opts[:'show_group_id'] if !opts[:'show_group_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ServiceIdList'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ServiceIDsApi.list_service_ids",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceIDsApi#list_service_ids\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lock the service ID
    # Locks a service ID by ID. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.
    # @param id [String] Unique ID of the service ID.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def lock_service_id(id, authorization, opts = {})
      lock_service_id_with_http_info(id, authorization, opts)
      nil
    end

    # Lock the service ID
    # Locks a service ID by ID. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.
    # @param id [String] Unique ID of the service ID.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def lock_service_id_with_http_info(id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceIDsApi.lock_service_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServiceIDsApi.lock_service_id"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling ServiceIDsApi.lock_service_id"
      end
      # resource path
      local_var_path = '/v1/serviceids/{id}/lock'.sub('{id}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ServiceIDsApi.lock_service_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceIDsApi#lock_service_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unlock the service ID
    # Unlocks a service ID by ID. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.
    # @param id [String] Unique ID of the service ID.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def unlock_service_id(id, authorization, opts = {})
      unlock_service_id_with_http_info(id, authorization, opts)
      nil
    end

    # Unlock the service ID
    # Unlocks a service ID by ID. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.
    # @param id [String] Unique ID of the service ID.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def unlock_service_id_with_http_info(id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceIDsApi.unlock_service_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServiceIDsApi.unlock_service_id"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling ServiceIDsApi.unlock_service_id"
      end
      # resource path
      local_var_path = '/v1/serviceids/{id}/lock'.sub('{id}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ServiceIDsApi.unlock_service_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceIDsApi#unlock_service_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update service ID
    # Updates properties of a service ID. This does NOT affect existing access tokens. Their token content will stay unchanged until the access token is refreshed. To update a service ID, pass the property to be modified. To delete one property's value, pass the property with an empty value \"\".Users can manage user API keys for themself, or service ID API keys for service IDs they have access to. Note: apikey details are only included in the response when creating a Service ID with an apikey.  
    # @param id [String] Unique ID of the service ID to be updated.
    # @param if_match [String] Version of the service ID to be updated. Specify the version that you retrieved as entity_tag (ETag header) when reading the service ID. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param update_service_id_request [UpdateServiceIdRequest] Request to update a service ID.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :show_group_id Defines if the service ID group ID is included in the response.
    # @return [ServiceId]
    def update_service_id(id, if_match, authorization, update_service_id_request, opts = {})
      data, _status_code, _headers = update_service_id_with_http_info(id, if_match, authorization, update_service_id_request, opts)
      data
    end

    # Update service ID
    # Updates properties of a service ID. This does NOT affect existing access tokens. Their token content will stay unchanged until the access token is refreshed. To update a service ID, pass the property to be modified. To delete one property&#39;s value, pass the property with an empty value \&quot;\&quot;.Users can manage user API keys for themself, or service ID API keys for service IDs they have access to. Note: apikey details are only included in the response when creating a Service ID with an apikey.  
    # @param id [String] Unique ID of the service ID to be updated.
    # @param if_match [String] Version of the service ID to be updated. Specify the version that you retrieved as entity_tag (ETag header) when reading the service ID. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param update_service_id_request [UpdateServiceIdRequest] Request to update a service ID.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :show_group_id Defines if the service ID group ID is included in the response.
    # @return [Array<(ServiceId, Integer, Hash)>] ServiceId data, response status code and response headers
    def update_service_id_with_http_info(id, if_match, authorization, update_service_id_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceIDsApi.update_service_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServiceIDsApi.update_service_id"
      end
      # verify the required parameter 'if_match' is set
      if @api_client.config.client_side_validation && if_match.nil?
        fail ArgumentError, "Missing the required parameter 'if_match' when calling ServiceIDsApi.update_service_id"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling ServiceIDsApi.update_service_id"
      end
      # verify the required parameter 'update_service_id_request' is set
      if @api_client.config.client_side_validation && update_service_id_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_service_id_request' when calling ServiceIDsApi.update_service_id"
      end
      # resource path
      local_var_path = '/v1/serviceids/{id}'.sub('{id}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'show_group_id'] = opts[:'show_group_id'] if !opts[:'show_group_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'If-Match'] = if_match
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_service_id_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ServiceId'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ServiceIDsApi.update_service_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceIDsApi#update_service_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
