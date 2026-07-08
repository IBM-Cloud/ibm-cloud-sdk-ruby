=begin
#IAM Identity Services

#   ## Introduction  The IAM Identity Service API is used to manage service IDs, API key identities, trusted profiles, account security settings and to create IAM access tokens for a user or service ID.  With trusted profile templates and assignments you can centrally manage access for child accounts in your organization from the root enterprise account. Similarly with settings templates and assignments, you can centrally administer account security settings. For more information, see [Working with template versions](https://cloud.ibm.com/docs/secure-enterprise?topic=secure-enterprise-working-with-versions&interface=ui) and [Best practices for assigning access in an enterprise](https://cloud.ibm.com/docs/secure-enterprise?topic=secure-enterprise-access-enterprises).  SDKs for Java, Node, Python, and Go are available to make it easier to programmatically access the API from your code. The client libraries that are provided by the SDKs implement best practices for using the API and reduce the amount of code that you need to write. The tab for each language includes code examples that demonstrate how to use the client libraries. For more information about using the SDKs, see the [IBM Cloud SDK Common project](https://github.com/IBM/ibm-cloud-sdk-common) on GitHub.  Installing the Java SDK  Maven  ```xml <dependency>  <groupId>com.ibm.cloud</groupId>  <artifactId>iam-identity</artifactId>  <version>{version}</version> </dependency> ```  Gradle  ```bash compile 'com.ibm.cloud:iam-identity:{version}' ```  Replace `{version}` in these examples with the release version.  View on GitHub  [https://github.com/IBM/platform-services-java-sdk](https://github.com/IBM/platform-services-java-sdk)  Installing the Go SDK  Go modules (recommended): Add the following import in your code, and then run `go build` or `go mod tidy`  ```go import (  \"github.com/IBM/platform-services-go-sdk/iamidentityv1\" ) ```  ```bash go get -u github.com/IBM/platform-services-go-sdk/iamidentityv1 ```  View on GitHub  [https://github.com/IBM/platform-services-go-sdk](https://github.com/IBM/platform-services-go-sdk)  Installing the Node SDK  ```bash npm install @ibm-cloud/platform-services ```  View on GitHub  [https://github.com/IBM/platform-services-node-sdk](https://github.com/IBM/platform-services-node-sdk)  Installing the Python SDK  ```bash pip install --upgrade \"ibm-platform-services\" ```  View on GitHub  [https://github.com/IBM/platform-services-python-sdk](https://github.com/IBM/platform-services-python-sdk)  The examples that are provided on this page demonstrate how to use IAM Identity Service For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  The examples that are provided on this page demonstrate how to use IAM Identity Service For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  The examples that are provided on this page demonstrate how to use IAM Identity Service For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  The examples that are provided on this page demonstrate how to use IAM Identity Service For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  ## Endpoint URLs  The IAM Identity Services API uses the following public global endpoint URL. When you call the API, add the path for each method to form the complete API endpoint for your requests.  ```bash https://iam.cloud.ibm.com ```  Virtual private cloud (VPC) based access requires a virtual private endpoint gateway (VPE gateway). For more information , see [Creating an endpoint gateway](https://cloud.ibm.com/docs/vpc?topic=vpc-ordering-endpoint-gateway).  * Private endpoint URL for VPC infrastructure: `https://private.iam.cloud.ibm.com`.   VPE gateway creation is supported in all datacenters (see https://cloud.ibm.com/docs/overview?topic=overview-locations#regions).  If you enabled service endpoints in your account, you can send API requests over the IBM Cloud® private network at the following base endpoint URLs. For more information, see [Enabling VRF and service endpoints](https://cloud.ibm.com/docs/account?topic=account-vrf-service-endpoint).  * Private endpoint URLs for classic infrastructure. Supported URLs:      * Sydney: `https://private.au-syd.iam.cloud.ibm.com`    * Sao Paulo: `https://private.br-sao.iam.cloud.ibm.com`    * Montreal: `https://private.ca-mon.iam.cloud.ibm.com`    * Toronto: `https://private.ca-tor.iam.cloud.ibm.com`    * Frankfurt DC: `https://private.eu-de.iam.cloud.ibm.com`    * London: `https://private.eu-gb.iam.cloud.ibm.com`    * Madrid: `https://private.eu-es.iam.cloud.ibm.com`    * Tokyo: `https://private.jp-tok.iam.cloud.ibm.com`    * Osaka: `https://private.jp-osa.iam.cloud.ibm.com`    * Washington DC: `https://private.us-east.iam.cloud.ibm.com`    * Dallas: `https://private.us-south.iam.cloud.ibm.com`  IAM is a global service and deployed to multiple MZRs world wide. IAM can be reached from all locations using the public global endpoint or using one of the private endpoints. Each request is sent to the closest region related to the client that invokes the call to IAM.  Example API request  ```bash curl -u \"apikey:{apikey}\" -X {request_method} \"https://iam.cloud.ibm.com/{method_endpoint}\" ```  Replace `{apikey}`, `{request_method}`, and `{method_endpoint}` in this example with the values for your particular API call.  ## Authentication  Authorization to the Identity Services REST API is enforced by using an IBM Cloud Identity and Access Management (IAM) access token. The token is used to determine the actions that a user or service ID has access to when they use the API.   You can generate an access token by first [creating an API key](https://cloud.ibm.com/docs/account?topic=account-iamtoken_from_apikey) and then exchanging your API key for an IBM Cloud IAM token.   Don't have an API key? Try running `ibmcloud iam oauth-tokens` in the [IBM Cloud Shell](https://cloud.ibm.com/shell) to quickly generate a personal access token.  When you use the SDK, configure an IAM authenticator with the IAM API key. The authenticator automatically obtains the IAM access token for the API key and includes it with each request. You can construct an authenticator in either of two ways: - Programmatically by constructing an IAM authenticator instance and supplying your IAM API key  - By defining the API key in external configuration properties and then using the SDK authenticator factory to construct an IAM authenticator that uses the configured IAM API key  In this example of using external configuration properties, an IAM authenticator instance is created with the configured API key, and then the service client is constructed with this authenticator instance and the configured service URL.  For more information, see the Authentication section of the [IBM Cloud SDK Common](https://github.com/IBM/ibm-cloud-sdk-common/blob/main/README.md) documentation.  To call each method, you'll need to be assigned a role that includes the required IAM actions. Each method lists the associated action. For more information about IAM actions and how they map to roles, see [IAM Identity service](https://cloud.ibm.com/docs/account?topic=account-account-services#identity-service-account-management).  To retrieve your access token:  ```bash curl -X POST \\   \"https://iam.cloud.ibm.com/identity/token\" \\   --header 'Content-Type: application/x-www-form-urlencoded' \\   --header 'Accept: application/json' \\   --data-urlencode 'grant_type=urn:ibm:params:oauth:grant-type:apikey' \\   --data-urlencode 'apikey=<API_KEY>' ```  Replace `<API_KEY>` with your IAM API key.  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export IAM_IDENTITY_URL=<SERVICE_URL> export IAM_IDENTITY_AUTHTYPE=iam export IAM_IDENTITY_APIKEY=<API_KEY> ```  Example of constructing the service client ```go import {     \"github.com/IBM/platform-services-go-sdk/iamidentityv1\" } ... serviceClientOptions := &iamidentityv1.IamIdentityV1Options{} serviceClient, err := iamidentityv1.NewIamIdentityV1UsingExternalConfig(serviceClientOptions) ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export IAM_IDENTITY_URL=<SERVICE_URL> export IAM_IDENTITY_AUTHTYPE=iam export IAM_IDENTITY_APIKEY=<API_KEY> ```  Example of constructing the service client ```java import com.ibm.cloud.platform_services.iam_identity.v1.IamIdentity; ... IamIdentity serviceClient = IamIdentity.newInstance(); ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export IAM_IDENTITY_URL=<SERVICE_URL> export IAM_IDENTITY_AUTHTYPE=iam export IAM_IDENTITY_APIKEY=<API_KEY> ```  Example of constructing the service client ```javascript const IamIdentityV1 = require('@ibm-cloud/platform-services/iam-identity/v1'); ... const serviceClient = IamIdentityV1.newInstance({}); ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export IAM_IDENTITY_URL=<SERVICE_URL> export IAM_IDENTITY_AUTHTYPE=iam export IAM_IDENTITY_APIKEY=<API_KEY> ```  Example of constructing the service client ```python from ibm_platform_services import IamIdentityV1 ... service_client = IamIdentityV1.new_instance() ```  You authenticate to the API by using Cloud Identity and Access Management (IAM). You can pass either a bearer token in an authorization header or an [API key](https://cloud.ibm.com/docs/account?topic=account-manapikey).  The SDK provides initialization methods for each form of authentication.  - Use the API key to have the SDK manage the lifecycle of the access token. The SDK requests an access token, ensures that the access token is valid, includes the access token in each outgoing request, and refreshes it when it expires. - Use the access token to manage the lifecycle yourself. Keep in mind that access tokens are valid for 1 hour, so you must refresh them regularly to maintain access.  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  ## Auditing  You can monitor API activity within your account by using the IBM Cloud Logs service. Whenever an API method is called, an event is generated that you can then track and audit from within IBM Cloud Logs. The specific event type is listed for each individual method.  If an event is tracked for a method, you can find it listed with the method. For more information about how to track IAM activity, see [Activity tracking events for IAM](https://cloud.ibm.com/docs/account?topic=account-at_events_iam).  ## Error handling  The IAM Token Service uses standard HTTP response codes to indicate whether a method completed successfully. A `200` response always indicates success. A `400` type response indicates that a parameter validation failed and can occur if required parameters are missing or if any parameter values are invalid. A `401` or `403` response indicates that the incoming request did not contain valid authentication information. A `500` type response indicates an internal server error that is seen in an unexpected error situation.  The Identity Services REST APIs return standard HTTP status codes to indicate the success or failure of a request. The format of the response is represented in JSON as follows: ```json {     \"trace\": \"9daee671-916a-4678-850b-10b911f0236d\",     \"errors\": [         {             \"code\": \"invalid_access_token\",             \"message\": \"The provided access token provided is invalid.\"         }     ]     \"status_code\": 401 } ``` If an operation cannot be fulfilled, an appropriate 400 or 500 series HTTP response is returned from the server. The operations that are defined in the `Reference` section describe example errors that might be returned from a failed request. All responses from the Identity Services REST API are in JSON format.  The following table show the potential error codes the API might return.  | HTTP Error Code | Description | Recovery | |-----------------|-------------|----------| | `200` | Success | The request was successful. | | `201` | Created | The resource was successfully created. | | `204` | No Content | The request was successful. No response body is provided. | | `400` | Bad Request | The input parameters in the request body are either incomplete or in the wrong format. Be sure to include all required parameters in your request. | | `401` | Unauthorized | You are not authorized to make this request. The token is either missing or expired. Get a new valid token and try again.     | | `403` | Forbidden | The supplied authentication is not authorized to perform the operation. If this error persists, contact the account owner to check your permissions. | | `404` | Not Found | The requested resource can't be found. | | `409` | Conflict | The entity is already in the requested state. | | `429` | Too Many Requests | Too many requests have been made within a time window. Wait before calling the API again. | | `500` | Internal error | Error that is seen in an unexpected error situation. |  ## Additional headers  Some additional headers might be required to make successful requests to the API. Those additional headers are:  An optional transaction ID can be passed to your request, which can be useful for tracking calls through multiple services using one identifier. The header key must be set to `Transaction-Id` and the value is anything that you choose.  If there is not a transaction ID that is passed in, then one is generated randomly.  ## API Parameters Some API parameter have additional details that need to be considered while using it in a request. Those API parameters are as follow:  ### Filtering list results  When listing service IDs, trusted profiles or API keys you can filter the result set by providing an optional `filter` parameter. The exact syntax of this parameter is described below. Query syntax will follow the SCIM query syntax with reduced operator support. The value must be URL encoded. Only the following operators are supported.  * Supported attribute operators-  - `sw` - starts with  - `sw_ci` - starts with ingnore case - non SCIM standard  - `ew` - ends with  - `ew_ci` - ends with ingnore case - non SCIM standard  - `co` - contains  - `co_ci` - contains ingnore case - non SCIM standard * Supported operators-   - `and`   - `or` * Grouping operators-   - `()` * Data Values   -`Text` * Sample   - `name co \"Foo\" and description sw \"Bar\"`

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.23.0

=end

require 'cgi'

module IbmCloudIam
  class IDPManagementApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create IdP
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
    # @param create_idp_request [CreateIdpRequest] Request to create idp
    # @param [Hash] opts the optional parameters
    # @option opts [String] :automation boolean to flag if IdP is created via automation
    # @return [Idp]
    def create_idp(authorization, create_idp_request, opts = {})
      data, _status_code, _headers = create_idp_with_http_info(authorization, create_idp_request, opts)
      data
    end

    # Create IdP
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
    # @param create_idp_request [CreateIdpRequest] Request to create idp
    # @param [Hash] opts the optional parameters
    # @option opts [String] :automation boolean to flag if IdP is created via automation
    # @return [Array<(Idp, Integer, Hash)>] Idp data, response status code and response headers
    def create_idp_with_http_info(authorization, create_idp_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IDPManagementApi.create_idp ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling IDPManagementApi.create_idp"
      end
      # verify the required parameter 'create_idp_request' is set
      if @api_client.config.client_side_validation && create_idp_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_idp_request' when calling IDPManagementApi.create_idp"
      end
      # resource path
      local_var_path = '/v1/idps/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'automation'] = opts[:'automation'] if !opts[:'automation'].nil?

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_idp_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Idp'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"IDPManagementApi.create_idp",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IDPManagementApi#create_idp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete IdP
    # @param idp_id [String] ID of the IDP
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_idp(idp_id, authorization, opts = {})
      delete_idp_with_http_info(idp_id, authorization, opts)
      nil
    end

    # Delete IdP
    # @param idp_id [String] ID of the IDP
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_idp_with_http_info(idp_id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IDPManagementApi.delete_idp ...'
      end
      # verify the required parameter 'idp_id' is set
      if @api_client.config.client_side_validation && idp_id.nil?
        fail ArgumentError, "Missing the required parameter 'idp_id' when calling IDPManagementApi.delete_idp"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling IDPManagementApi.delete_idp"
      end
      # resource path
      local_var_path = '/v1/idps/{idp_id}'.sub('{idp_id}', CGI.escape(idp_id.to_s))

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
        :operation => :"IDPManagementApi.delete_idp",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IDPManagementApi#delete_idp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export SAML IdP metadata
    # Returns the Service Provider (SP) SAML metadata document for the specified Identity Provider.  The generated metadata contains the SP entity ID, signing certificate, supported NameID formats, and Assertion Consumer Service endpoints derived from the Identity Provider configuration. 
    # @param idp_id [String] ID of the IDP
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
    # @return [String]
    def export_saml_metadata(idp_id, opts = {})
      data, _status_code, _headers = export_saml_metadata_with_http_info(idp_id, opts)
      data
    end

    # Export SAML IdP metadata
    # Returns the Service Provider (SP) SAML metadata document for the specified Identity Provider.  The generated metadata contains the SP entity ID, signing certificate, supported NameID formats, and Assertion Consumer Service endpoints derived from the Identity Provider configuration. 
    # @param idp_id [String] ID of the IDP
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def export_saml_metadata_with_http_info(idp_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IDPManagementApi.export_saml_metadata ...'
      end
      # verify the required parameter 'idp_id' is set
      if @api_client.config.client_side_validation && idp_id.nil?
        fail ArgumentError, "Missing the required parameter 'idp_id' when calling IDPManagementApi.export_saml_metadata"
      end
      # resource path
      local_var_path = '/v1/idps/{idp_id}/saml/metadata'.sub('{idp_id}', CGI.escape(idp_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/xml']) unless header_params['Accept']
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"IDPManagementApi.export_saml_metadata",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IDPManagementApi#export_saml_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get IdP
    # @param idp_id [String] ID of the IDP
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include_history include history of the idp
    # @return [Idp]
    def get_idp(idp_id, authorization, opts = {})
      data, _status_code, _headers = get_idp_with_http_info(idp_id, authorization, opts)
      data
    end

    # Get IdP
    # @param idp_id [String] ID of the IDP
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include_history include history of the idp
    # @return [Array<(Idp, Integer, Hash)>] Idp data, response status code and response headers
    def get_idp_with_http_info(idp_id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IDPManagementApi.get_idp ...'
      end
      # verify the required parameter 'idp_id' is set
      if @api_client.config.client_side_validation && idp_id.nil?
        fail ArgumentError, "Missing the required parameter 'idp_id' when calling IDPManagementApi.get_idp"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling IDPManagementApi.get_idp"
      end
      # resource path
      local_var_path = '/v1/idps/{idp_id}'.sub('{idp_id}', CGI.escape(idp_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include_history'] = opts[:'include_history'] if !opts[:'include_history'].nil?

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
      return_type = opts[:debug_return_type] || 'Idp'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"IDPManagementApi.get_idp",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IDPManagementApi#get_idp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get IdP test results
    # Get IDP test record.
    # @param idp_id [String] ID of the IDP
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
    # @return [TestResult]
    def get_idp_test_result(idp_id, opts = {})
      data, _status_code, _headers = get_idp_test_result_with_http_info(idp_id, opts)
      data
    end

    # Get IdP test results
    # Get IDP test record.
    # @param idp_id [String] ID of the IDP
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
    # @return [Array<(TestResult, Integer, Hash)>] TestResult data, response status code and response headers
    def get_idp_test_result_with_http_info(idp_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IDPManagementApi.get_idp_test_result ...'
      end
      # verify the required parameter 'idp_id' is set
      if @api_client.config.client_side_validation && idp_id.nil?
        fail ArgumentError, "Missing the required parameter 'idp_id' when calling IDPManagementApi.get_idp_test_result"
      end
      # resource path
      local_var_path = '/v1/idps/{idp_id}/test'.sub('{idp_id}', CGI.escape(idp_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TestResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"IDPManagementApi.get_idp_test_result",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IDPManagementApi#get_idp_test_result\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Import SAML IdP metadata
    # Import a metadata.xml originating from the federated SAML Identity Provider
    # @param idp_id [String] ID of the IDP
    # @param body [File] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
    # @option opts [Boolean] :parse_only If true, validates and parses the metadata without updating the Identity Provider.  (default to false)
    # @return [SamlMetadataImportResponse]
    def import_saml_idp_metadata(idp_id, body, opts = {})
      data, _status_code, _headers = import_saml_idp_metadata_with_http_info(idp_id, body, opts)
      data
    end

    # Import SAML IdP metadata
    # Import a metadata.xml originating from the federated SAML Identity Provider
    # @param idp_id [String] ID of the IDP
    # @param body [File] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
    # @option opts [Boolean] :parse_only If true, validates and parses the metadata without updating the Identity Provider.  (default to false)
    # @return [Array<(SamlMetadataImportResponse, Integer, Hash)>] SamlMetadataImportResponse data, response status code and response headers
    def import_saml_idp_metadata_with_http_info(idp_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IDPManagementApi.import_saml_idp_metadata ...'
      end
      # verify the required parameter 'idp_id' is set
      if @api_client.config.client_side_validation && idp_id.nil?
        fail ArgumentError, "Missing the required parameter 'idp_id' when calling IDPManagementApi.import_saml_idp_metadata"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling IDPManagementApi.import_saml_idp_metadata"
      end
      # resource path
      local_var_path = '/v1/idps/{idp_id}/saml/metadata'.sub('{idp_id}', CGI.escape(idp_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'parse_only'] = opts[:'parse_only'] if !opts[:'parse_only'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['text/xml'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'SamlMetadataImportResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"IDPManagementApi.import_saml_idp_metadata",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IDPManagementApi#import_saml_idp_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get consumers of IdP
    # @param idp_id [String] ID of the IDP
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [ConsumersResponse]
    def list_consumer_accounts(idp_id, authorization, opts = {})
      data, _status_code, _headers = list_consumer_accounts_with_http_info(idp_id, authorization, opts)
      data
    end

    # Get consumers of IdP
    # @param idp_id [String] ID of the IDP
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConsumersResponse, Integer, Hash)>] ConsumersResponse data, response status code and response headers
    def list_consumer_accounts_with_http_info(idp_id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IDPManagementApi.list_consumer_accounts ...'
      end
      # verify the required parameter 'idp_id' is set
      if @api_client.config.client_side_validation && idp_id.nil?
        fail ArgumentError, "Missing the required parameter 'idp_id' when calling IDPManagementApi.list_consumer_accounts"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling IDPManagementApi.list_consumer_accounts"
      end
      # resource path
      local_var_path = '/v1/idps/{idp_id}/consumers'.sub('{idp_id}', CGI.escape(idp_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

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
      return_type = opts[:debug_return_type] || 'ConsumersResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"IDPManagementApi.list_consumer_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IDPManagementApi#list_consumer_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List IdPs
    # @param account_id [String] Account id to query
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include_history include history of the idp
    # @return [ListIdps200Response]
    def list_idps(account_id, authorization, opts = {})
      data, _status_code, _headers = list_idps_with_http_info(account_id, authorization, opts)
      data
    end

    # List IdPs
    # @param account_id [String] Account id to query
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include_history include history of the idp
    # @return [Array<(ListIdps200Response, Integer, Hash)>] ListIdps200Response data, response status code and response headers
    def list_idps_with_http_info(account_id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IDPManagementApi.list_idps ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling IDPManagementApi.list_idps"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling IDPManagementApi.list_idps"
      end
      # resource path
      local_var_path = '/v1/idps/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = account_id
      query_params[:'include_history'] = opts[:'include_history'] if !opts[:'include_history'].nil?

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
      return_type = opts[:debug_return_type] || 'ListIdps200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"IDPManagementApi.list_idps",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IDPManagementApi#list_idps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Trigger IdP configuration test
    # @param idp_id [String] ID of the IDP
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [TestTriggerResponse]
    def test_idp(idp_id, authorization, opts = {})
      data, _status_code, _headers = test_idp_with_http_info(idp_id, authorization, opts)
      data
    end

    # Trigger IdP configuration test
    # @param idp_id [String] ID of the IDP
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TestTriggerResponse, Integer, Hash)>] TestTriggerResponse data, response status code and response headers
    def test_idp_with_http_info(idp_id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IDPManagementApi.test_idp ...'
      end
      # verify the required parameter 'idp_id' is set
      if @api_client.config.client_side_validation && idp_id.nil?
        fail ArgumentError, "Missing the required parameter 'idp_id' when calling IDPManagementApi.test_idp"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling IDPManagementApi.test_idp"
      end
      # resource path
      local_var_path = '/v1/idps/{idp_id}/test'.sub('{idp_id}', CGI.escape(idp_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

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
      return_type = opts[:debug_return_type] || 'TestTriggerResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"IDPManagementApi.test_idp",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IDPManagementApi#test_idp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update IdP
    # @param idp_id [String] ID of the IDP
    # @param if_match [String] Version of the account IdP settings to be updated. Specify the version that you retrieved as entity_tag (ETag header) when reading the account. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
    # @param update_id_p_request [UpdateIdPRequest] Request to update idp
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :force_share_scope_update Enforces sharescope update even if active consumers are removed from the share scope
    # @return [Idp]
    def update_idp(idp_id, if_match, authorization, update_id_p_request, opts = {})
      data, _status_code, _headers = update_idp_with_http_info(idp_id, if_match, authorization, update_id_p_request, opts)
      data
    end

    # Update IdP
    # @param idp_id [String] ID of the IDP
    # @param if_match [String] Version of the account IdP settings to be updated. Specify the version that you retrieved as entity_tag (ETag header) when reading the account. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
    # @param update_id_p_request [UpdateIdPRequest] Request to update idp
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :force_share_scope_update Enforces sharescope update even if active consumers are removed from the share scope
    # @return [Array<(Idp, Integer, Hash)>] Idp data, response status code and response headers
    def update_idp_with_http_info(idp_id, if_match, authorization, update_id_p_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IDPManagementApi.update_idp ...'
      end
      # verify the required parameter 'idp_id' is set
      if @api_client.config.client_side_validation && idp_id.nil?
        fail ArgumentError, "Missing the required parameter 'idp_id' when calling IDPManagementApi.update_idp"
      end
      # verify the required parameter 'if_match' is set
      if @api_client.config.client_side_validation && if_match.nil?
        fail ArgumentError, "Missing the required parameter 'if_match' when calling IDPManagementApi.update_idp"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling IDPManagementApi.update_idp"
      end
      # verify the required parameter 'update_id_p_request' is set
      if @api_client.config.client_side_validation && update_id_p_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_id_p_request' when calling IDPManagementApi.update_idp"
      end
      # resource path
      local_var_path = '/v1/idps/{idp_id}'.sub('{idp_id}', CGI.escape(idp_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'force_share_scope_update'] = opts[:'force_share_scope_update'] if !opts[:'force_share_scope_update'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_id_p_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Idp'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"IDPManagementApi.update_idp",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IDPManagementApi#update_idp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
