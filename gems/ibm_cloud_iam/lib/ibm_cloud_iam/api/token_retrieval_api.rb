=begin
#IAM Identity Services

#   ## Introduction  The IAM Identity Service API is used to manage service IDs, API key identities, trusted profiles, account security settings and to create IAM access tokens for a user or service ID.  With trusted profile templates and assignments you can centrally manage access for child accounts in your organization from the root enterprise account. Similarly with settings templates and assignments, you can centrally administer account security settings. For more information, see [Working with template versions](https://cloud.ibm.com/docs/secure-enterprise?topic=secure-enterprise-working-with-versions&interface=ui) and [Best practices for assigning access in an enterprise](https://cloud.ibm.com/docs/secure-enterprise?topic=secure-enterprise-access-enterprises).  SDKs for Java, Node, Python, and Go are available to make it easier to programmatically access the API from your code. The client libraries that are provided by the SDKs implement best practices for using the API and reduce the amount of code that you need to write. The tab for each language includes code examples that demonstrate how to use the client libraries. For more information about using the SDKs, see the [IBM Cloud SDK Common project](https://github.com/IBM/ibm-cloud-sdk-common) on GitHub.  Installing the Java SDK  Maven  ```xml <dependency>  <groupId>com.ibm.cloud</groupId>  <artifactId>iam-identity</artifactId>  <version>{version}</version> </dependency> ```  Gradle  ```bash compile 'com.ibm.cloud:iam-identity:{version}' ```  Replace `{version}` in these examples with the release version.  View on GitHub  [https://github.com/IBM/platform-services-java-sdk](https://github.com/IBM/platform-services-java-sdk)  Installing the Go SDK  Go modules (recommended): Add the following import in your code, and then run `go build` or `go mod tidy`  ```go import (  \"github.com/IBM/platform-services-go-sdk/iamidentityv1\" ) ```  ```bash go get -u github.com/IBM/platform-services-go-sdk/iamidentityv1 ```  View on GitHub  [https://github.com/IBM/platform-services-go-sdk](https://github.com/IBM/platform-services-go-sdk)  Installing the Node SDK  ```bash npm install @ibm-cloud/platform-services ```  View on GitHub  [https://github.com/IBM/platform-services-node-sdk](https://github.com/IBM/platform-services-node-sdk)  Installing the Python SDK  ```bash pip install --upgrade \"ibm-platform-services\" ```  View on GitHub  [https://github.com/IBM/platform-services-python-sdk](https://github.com/IBM/platform-services-python-sdk)  The examples that are provided on this page demonstrate how to use IAM Identity Service For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  The examples that are provided on this page demonstrate how to use IAM Identity Service For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  The examples that are provided on this page demonstrate how to use IAM Identity Service For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  The examples that are provided on this page demonstrate how to use IAM Identity Service For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  ## Endpoint URLs  The IAM Identity Services API uses the following public global endpoint URL. When you call the API, add the path for each method to form the complete API endpoint for your requests.  ```bash https://iam.cloud.ibm.com ```  Virtual private cloud (VPC) based access requires a virtual private endpoint gateway (VPE gateway). For more information , see [Creating an endpoint gateway](https://cloud.ibm.com/docs/vpc?topic=vpc-ordering-endpoint-gateway).  * Private endpoint URL for VPC infrastructure: `https://private.iam.cloud.ibm.com`.   VPE gateway creation is supported in all datacenters (see https://cloud.ibm.com/docs/overview?topic=overview-locations#regions).  If you enabled service endpoints in your account, you can send API requests over the IBM Cloud® private network at the following base endpoint URLs. For more information, see [Enabling VRF and service endpoints](https://cloud.ibm.com/docs/account?topic=account-vrf-service-endpoint).  * Private endpoint URLs for classic infrastructure. Supported URLs:      * Sydney: `https://private.au-syd.iam.cloud.ibm.com`    * Sao Paulo: `https://private.br-sao.iam.cloud.ibm.com`    * Montreal: `https://private.ca-mon.iam.cloud.ibm.com`    * Toronto: `https://private.ca-tor.iam.cloud.ibm.com`    * Frankfurt DC: `https://private.eu-de.iam.cloud.ibm.com`    * London: `https://private.eu-gb.iam.cloud.ibm.com`    * Madrid: `https://private.eu-es.iam.cloud.ibm.com`    * Tokyo: `https://private.jp-tok.iam.cloud.ibm.com`    * Osaka: `https://private.jp-osa.iam.cloud.ibm.com`    * Washington DC: `https://private.us-east.iam.cloud.ibm.com`    * Dallas: `https://private.us-south.iam.cloud.ibm.com`  IAM is a global service and deployed to multiple MZRs world wide. IAM can be reached from all locations using the public global endpoint or using one of the private endpoints. Each request is sent to the closest region related to the client that invokes the call to IAM.  Example API request  ```bash curl -u \"apikey:{apikey}\" -X {request_method} \"https://iam.cloud.ibm.com/{method_endpoint}\" ```  Replace `{apikey}`, `{request_method}`, and `{method_endpoint}` in this example with the values for your particular API call.  ## Authentication  Authorization to the Identity Services REST API is enforced by using an IBM Cloud Identity and Access Management (IAM) access token. The token is used to determine the actions that a user or service ID has access to when they use the API.   You can generate an access token by first [creating an API key](https://cloud.ibm.com/docs/account?topic=account-iamtoken_from_apikey) and then exchanging your API key for an IBM Cloud IAM token.   Don't have an API key? Try running `ibmcloud iam oauth-tokens` in the [IBM Cloud Shell](https://cloud.ibm.com/shell) to quickly generate a personal access token.  When you use the SDK, configure an IAM authenticator with the IAM API key. The authenticator automatically obtains the IAM access token for the API key and includes it with each request. You can construct an authenticator in either of two ways: - Programmatically by constructing an IAM authenticator instance and supplying your IAM API key  - By defining the API key in external configuration properties and then using the SDK authenticator factory to construct an IAM authenticator that uses the configured IAM API key  In this example of using external configuration properties, an IAM authenticator instance is created with the configured API key, and then the service client is constructed with this authenticator instance and the configured service URL.  For more information, see the Authentication section of the [IBM Cloud SDK Common](https://github.com/IBM/ibm-cloud-sdk-common/blob/main/README.md) documentation.  To call each method, you'll need to be assigned a role that includes the required IAM actions. Each method lists the associated action. For more information about IAM actions and how they map to roles, see [IAM Identity service](https://cloud.ibm.com/docs/account?topic=account-account-services#identity-service-account-management).  To retrieve your access token:  ```bash curl -X POST \\   \"https://iam.cloud.ibm.com/identity/token\" \\   --header 'Content-Type: application/x-www-form-urlencoded' \\   --header 'Accept: application/json' \\   --data-urlencode 'grant_type=urn:ibm:params:oauth:grant-type:apikey' \\   --data-urlencode 'apikey=<API_KEY>' ```  Replace `<API_KEY>` with your IAM API key.  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export IAM_IDENTITY_URL=<SERVICE_URL> export IAM_IDENTITY_AUTHTYPE=iam export IAM_IDENTITY_APIKEY=<API_KEY> ```  Example of constructing the service client ```go import {     \"github.com/IBM/platform-services-go-sdk/iamidentityv1\" } ... serviceClientOptions := &iamidentityv1.IamIdentityV1Options{} serviceClient, err := iamidentityv1.NewIamIdentityV1UsingExternalConfig(serviceClientOptions) ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export IAM_IDENTITY_URL=<SERVICE_URL> export IAM_IDENTITY_AUTHTYPE=iam export IAM_IDENTITY_APIKEY=<API_KEY> ```  Example of constructing the service client ```java import com.ibm.cloud.platform_services.iam_identity.v1.IamIdentity; ... IamIdentity serviceClient = IamIdentity.newInstance(); ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export IAM_IDENTITY_URL=<SERVICE_URL> export IAM_IDENTITY_AUTHTYPE=iam export IAM_IDENTITY_APIKEY=<API_KEY> ```  Example of constructing the service client ```javascript const IamIdentityV1 = require('@ibm-cloud/platform-services/iam-identity/v1'); ... const serviceClient = IamIdentityV1.newInstance({}); ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export IAM_IDENTITY_URL=<SERVICE_URL> export IAM_IDENTITY_AUTHTYPE=iam export IAM_IDENTITY_APIKEY=<API_KEY> ```  Example of constructing the service client ```python from ibm_platform_services import IamIdentityV1 ... service_client = IamIdentityV1.new_instance() ```  You authenticate to the API by using Cloud Identity and Access Management (IAM). You can pass either a bearer token in an authorization header or an [API key](https://cloud.ibm.com/docs/account?topic=account-manapikey).  The SDK provides initialization methods for each form of authentication.  - Use the API key to have the SDK manage the lifecycle of the access token. The SDK requests an access token, ensures that the access token is valid, includes the access token in each outgoing request, and refreshes it when it expires. - Use the access token to manage the lifecycle yourself. Keep in mind that access tokens are valid for 1 hour, so you must refresh them regularly to maintain access.  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  ## Auditing  You can monitor API activity within your account by using the IBM Cloud Logs service. Whenever an API method is called, an event is generated that you can then track and audit from within IBM Cloud Logs. The specific event type is listed for each individual method.  If an event is tracked for a method, you can find it listed with the method. For more information about how to track IAM activity, see [Activity tracking events for IAM](https://cloud.ibm.com/docs/account?topic=account-at_events_iam).  ## Error handling  The IAM Token Service uses standard HTTP response codes to indicate whether a method completed successfully. A `200` response always indicates success. A `400` type response indicates that a parameter validation failed and can occur if required parameters are missing or if any parameter values are invalid. A `401` or `403` response indicates that the incoming request did not contain valid authentication information. A `500` type response indicates an internal server error that is seen in an unexpected error situation.  The Identity Services REST APIs return standard HTTP status codes to indicate the success or failure of a request. The format of the response is represented in JSON as follows: ```json {     \"trace\": \"9daee671-916a-4678-850b-10b911f0236d\",     \"errors\": [         {             \"code\": \"invalid_access_token\",             \"message\": \"The provided access token provided is invalid.\"         }     ]     \"status_code\": 401 } ``` If an operation cannot be fulfilled, an appropriate 400 or 500 series HTTP response is returned from the server. The operations that are defined in the `Reference` section describe example errors that might be returned from a failed request. All responses from the Identity Services REST API are in JSON format.  The following table show the potential error codes the API might return.  | HTTP Error Code | Description | Recovery | |-----------------|-------------|----------| | `200` | Success | The request was successful. | | `201` | Created | The resource was successfully created. | | `204` | No Content | The request was successful. No response body is provided. | | `400` | Bad Request | The input parameters in the request body are either incomplete or in the wrong format. Be sure to include all required parameters in your request. | | `401` | Unauthorized | You are not authorized to make this request. The token is either missing or expired. Get a new valid token and try again.     | | `403` | Forbidden | The supplied authentication is not authorized to perform the operation. If this error persists, contact the account owner to check your permissions. | | `404` | Not Found | The requested resource can't be found. | | `409` | Conflict | The entity is already in the requested state. | | `429` | Too Many Requests | Too many requests have been made within a time window. Wait before calling the API again. | | `500` | Internal error | Error that is seen in an unexpected error situation. |  ## Additional headers  Some additional headers might be required to make successful requests to the API. Those additional headers are:  An optional transaction ID can be passed to your request, which can be useful for tracking calls through multiple services using one identifier. The header key must be set to `Transaction-Id` and the value is anything that you choose.  If there is not a transaction ID that is passed in, then one is generated randomly.  ## API Parameters Some API parameter have additional details that need to be considered while using it in a request. Those API parameters are as follow:  ### Filtering list results  When listing service IDs, trusted profiles or API keys you can filter the result set by providing an optional `filter` parameter. The exact syntax of this parameter is described below. Query syntax will follow the SCIM query syntax with reduced operator support. The value must be URL encoded. Only the following operators are supported.  * Supported attribute operators-  - `sw` - starts with  - `sw_ci` - starts with ingnore case - non SCIM standard  - `ew` - ends with  - `ew_ci` - ends with ingnore case - non SCIM standard  - `co` - contains  - `co_ci` - contains ingnore case - non SCIM standard * Supported operators-   - `and`   - `or` * Grouping operators-   - `()` * Data Values   -`Text` * Sample   - `name co \"Foo\" and description sw \"Bar\"`

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.23.0

=end

require 'cgi'

module IbmCloudIam
  class TokenRetrievalApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an IAM access token for a user or service ID using an API key
    # Creates a non-opaque access token for an API key.
    # @param grant_type [String] Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:apikey&#x60;.
    # @param apikey [String] The value of the api key.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ibm_cloud_tenant A comma separated list of enterprise ids and/or account ids. If present, an IAM token for the API key can only be created if the account id or enterprise id of the API key is contained in this header.
    # @return [TokenResponse]
    def get_token_api_key(grant_type, apikey, opts = {})
      data, _status_code, _headers = get_token_api_key_with_http_info(grant_type, apikey, opts)
      data
    end

    # Create an IAM access token for a user or service ID using an API key
    # Creates a non-opaque access token for an API key.
    # @param grant_type [String] Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:apikey&#x60;.
    # @param apikey [String] The value of the api key.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ibm_cloud_tenant A comma separated list of enterprise ids and/or account ids. If present, an IAM token for the API key can only be created if the account id or enterprise id of the API key is contained in this header.
    # @return [Array<(TokenResponse, Integer, Hash)>] TokenResponse data, response status code and response headers
    def get_token_api_key_with_http_info(grant_type, apikey, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokenRetrievalApi.get_token_api_key ...'
      end
      # verify the required parameter 'grant_type' is set
      if @api_client.config.client_side_validation && grant_type.nil?
        fail ArgumentError, "Missing the required parameter 'grant_type' when calling TokenRetrievalApi.get_token_api_key"
      end
      # verify the required parameter 'apikey' is set
      if @api_client.config.client_side_validation && apikey.nil?
        fail ArgumentError, "Missing the required parameter 'apikey' when calling TokenRetrievalApi.get_token_api_key"
      end
      # resource path
      local_var_path = '/identity/token#apikey'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'ibm-cloud-tenant'] = opts[:'ibm_cloud_tenant'] if !opts[:'ibm_cloud_tenant'].nil?

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['grant_type'] = grant_type
      form_params['apikey'] = apikey

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TokenResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TokenRetrievalApi.get_token_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokenRetrievalApi#get_token_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an IAM access token and delegated refresh token for a user or service ID
    # Creates a non-opaque access token and a delegated refresh token for an API key.
    # @param grant_type [String] Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:apikey&#x60;.
    # @param apikey [String] The value of the API key.
    # @param response_type [String] Either &#39;delegated_refresh_token&#39; to receive a delegated refresh token only, or &#39;cloud_iam delegated_refresh_token&#39; to receive both an IAM access token and a delegated refresh token in one API call.
    # @param receiver_client_ids [String] A comma separated list of one or more client IDs that will be able to consume the delegated refresh token. The service that accepts a delegated refresh token as API parameter must expose its client ID to allow this API call. The receiver of the delegated refresh token will be able to use the refresh token until it expires.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ibm_cloud_tenant A comma separated list of enterprise ids and/or account ids. If present, an IAM token for the API key can only be created if the account id or enterprise id of the API key is contained in this header.
    # @option opts [Integer] :delegated_refresh_token_expiry Expiration in seconds until the delegated refresh token must be consumed by the receiver client IDs. After the expiration, no client ID can consume the delegated refresh token, even if the life time of the refresh token inside is still not expired. The default, if not specified, is 518,400 seconds which corresponds to 6 days.
    # @return [TokenResponse]
    def get_token_api_key_delegated_refresh_token(grant_type, apikey, response_type, receiver_client_ids, opts = {})
      data, _status_code, _headers = get_token_api_key_delegated_refresh_token_with_http_info(grant_type, apikey, response_type, receiver_client_ids, opts)
      data
    end

    # Create an IAM access token and delegated refresh token for a user or service ID
    # Creates a non-opaque access token and a delegated refresh token for an API key.
    # @param grant_type [String] Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:apikey&#x60;.
    # @param apikey [String] The value of the API key.
    # @param response_type [String] Either &#39;delegated_refresh_token&#39; to receive a delegated refresh token only, or &#39;cloud_iam delegated_refresh_token&#39; to receive both an IAM access token and a delegated refresh token in one API call.
    # @param receiver_client_ids [String] A comma separated list of one or more client IDs that will be able to consume the delegated refresh token. The service that accepts a delegated refresh token as API parameter must expose its client ID to allow this API call. The receiver of the delegated refresh token will be able to use the refresh token until it expires.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ibm_cloud_tenant A comma separated list of enterprise ids and/or account ids. If present, an IAM token for the API key can only be created if the account id or enterprise id of the API key is contained in this header.
    # @option opts [Integer] :delegated_refresh_token_expiry Expiration in seconds until the delegated refresh token must be consumed by the receiver client IDs. After the expiration, no client ID can consume the delegated refresh token, even if the life time of the refresh token inside is still not expired. The default, if not specified, is 518,400 seconds which corresponds to 6 days.
    # @return [Array<(TokenResponse, Integer, Hash)>] TokenResponse data, response status code and response headers
    def get_token_api_key_delegated_refresh_token_with_http_info(grant_type, apikey, response_type, receiver_client_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokenRetrievalApi.get_token_api_key_delegated_refresh_token ...'
      end
      # verify the required parameter 'grant_type' is set
      if @api_client.config.client_side_validation && grant_type.nil?
        fail ArgumentError, "Missing the required parameter 'grant_type' when calling TokenRetrievalApi.get_token_api_key_delegated_refresh_token"
      end
      # verify the required parameter 'apikey' is set
      if @api_client.config.client_side_validation && apikey.nil?
        fail ArgumentError, "Missing the required parameter 'apikey' when calling TokenRetrievalApi.get_token_api_key_delegated_refresh_token"
      end
      # verify the required parameter 'response_type' is set
      if @api_client.config.client_side_validation && response_type.nil?
        fail ArgumentError, "Missing the required parameter 'response_type' when calling TokenRetrievalApi.get_token_api_key_delegated_refresh_token"
      end
      # verify the required parameter 'receiver_client_ids' is set
      if @api_client.config.client_side_validation && receiver_client_ids.nil?
        fail ArgumentError, "Missing the required parameter 'receiver_client_ids' when calling TokenRetrievalApi.get_token_api_key_delegated_refresh_token"
      end
      # resource path
      local_var_path = '/identity/token#apikey-delegated-refresh-token'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'ibm-cloud-tenant'] = opts[:'ibm_cloud_tenant'] if !opts[:'ibm_cloud_tenant'].nil?

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['grant_type'] = grant_type
      form_params['apikey'] = apikey
      form_params['response_type'] = response_type
      form_params['receiver_client_ids'] = receiver_client_ids
      form_params['delegated_refresh_token_expiry'] = opts[:'delegated_refresh_token_expiry'] if !opts[:'delegated_refresh_token_expiry'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TokenResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TokenRetrievalApi.get_token_api_key_delegated_refresh_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokenRetrievalApi#get_token_api_key_delegated_refresh_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an IAM access token for a Trusted Profile based on the provided entity. Provided entity can be a identity based token which can be a user token, service id token or a cookie.
    # Creates a non-opaque access token for a profile.
    # @param grant_type [String] Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:assume&#x60;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token Pass one of &#39;access_token&#39;, &#39;refresh_token&#39; or &#39;cookie&#39; to get a token for the profile. Provided access_token/refresh_token/iam_cookie need to be generated for the user or service id that has trust relationship with the profile. If the profile being assumed must satisfy an MFA requirement for the account, the access_token/refresh_token (...etc) used to assume the profile must meet the same requirement, using the same level MFA or higher.
    # @option opts [String] :refresh_token see &#39;access_token&#39;
    # @option opts [String] :cookie see &#39;access_token&#39;
    # @option opts [String] :profile_id Pass one of &#39;profile_id&#39;, &#39;profile_crn&#39; or &#39;profile_name&#39; and &#39;account&#39; to select which profile should be used for this IAM token. If you pass a &#39;profile_id&#39; or &#39;profile_crn&#39;, then the profile must exist in the same account. If you pass a &#39;profile_name&#39; then &#39;account&#39; need to be passed in the request where the profile is looked up based on the account.
    # @option opts [String] :profile_name see &#39;profile_id&#39;
    # @option opts [String] :profile_crn see &#39;profile_id&#39;
    # @option opts [String] :account ID of the account the profile belongs to
    # @return [TokenResponse]
    def get_token_assume(grant_type, opts = {})
      data, _status_code, _headers = get_token_assume_with_http_info(grant_type, opts)
      data
    end

    # Create an IAM access token for a Trusted Profile based on the provided entity. Provided entity can be a identity based token which can be a user token, service id token or a cookie.
    # Creates a non-opaque access token for a profile.
    # @param grant_type [String] Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:assume&#x60;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token Pass one of &#39;access_token&#39;, &#39;refresh_token&#39; or &#39;cookie&#39; to get a token for the profile. Provided access_token/refresh_token/iam_cookie need to be generated for the user or service id that has trust relationship with the profile. If the profile being assumed must satisfy an MFA requirement for the account, the access_token/refresh_token (...etc) used to assume the profile must meet the same requirement, using the same level MFA or higher.
    # @option opts [String] :refresh_token see &#39;access_token&#39;
    # @option opts [String] :cookie see &#39;access_token&#39;
    # @option opts [String] :profile_id Pass one of &#39;profile_id&#39;, &#39;profile_crn&#39; or &#39;profile_name&#39; and &#39;account&#39; to select which profile should be used for this IAM token. If you pass a &#39;profile_id&#39; or &#39;profile_crn&#39;, then the profile must exist in the same account. If you pass a &#39;profile_name&#39; then &#39;account&#39; need to be passed in the request where the profile is looked up based on the account.
    # @option opts [String] :profile_name see &#39;profile_id&#39;
    # @option opts [String] :profile_crn see &#39;profile_id&#39;
    # @option opts [String] :account ID of the account the profile belongs to
    # @return [Array<(TokenResponse, Integer, Hash)>] TokenResponse data, response status code and response headers
    def get_token_assume_with_http_info(grant_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokenRetrievalApi.get_token_assume ...'
      end
      # verify the required parameter 'grant_type' is set
      if @api_client.config.client_side_validation && grant_type.nil?
        fail ArgumentError, "Missing the required parameter 'grant_type' when calling TokenRetrievalApi.get_token_assume"
      end
      # resource path
      local_var_path = '/identity/token#assume'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['grant_type'] = grant_type
      form_params['access_token'] = opts[:'access_token'] if !opts[:'access_token'].nil?
      form_params['refresh_token'] = opts[:'refresh_token'] if !opts[:'refresh_token'].nil?
      form_params['cookie'] = opts[:'cookie'] if !opts[:'cookie'].nil?
      form_params['profile_id'] = opts[:'profile_id'] if !opts[:'profile_id'].nil?
      form_params['profile_name'] = opts[:'profile_name'] if !opts[:'profile_name'].nil?
      form_params['profile_crn'] = opts[:'profile_crn'] if !opts[:'profile_crn'].nil?
      form_params['account'] = opts[:'account'] if !opts[:'account'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TokenResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TokenRetrievalApi.get_token_assume",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokenRetrievalApi#get_token_assume\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an IAM access token for a Trusted Profile based on the provided Compute Resource token
    # Creates a non-opaque access token without a refresh token for a Trusted Profile
    # @param grant_type [String] Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:cr-token&#x60;.
    # @param cr_token [String] The value of the Compute Resource token. As this is a JWT token, the string can get very long.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization IBM Services can pass in a Basic Authorization Header representing a client id with a secret. For customers, omit this header parameter. To build a valid Basic Authorization Header, concatenate the client id with a colon and the secret, i.e. &#x60;client_id:client_secret&#x60;. This sequence must be Base64 encoded, and prefixed with &#x60;Basic&#x60;, so that a valid Basic Authorization Header would be: &#x60;Authorization: Basic Y2xpZW50X2lkOmNsaWVudF9zZWNyZXQ&#x3D;&#x60;
    # @option opts [String] :ibm_cloud_tenant A comma separated list of enterprise ids and/or account ids. If present, an IAM token for the Trusted Profile can only be created if the Trusted Profile is part of one of the account ids or enterprise ids provided in this header.
    # @option opts [String] :profile_id Pass one of &#39;profile_id&#39;, &#39;profile_name&#39; or &#39;profile_crn to select which profile should be used for this IAM token. This call can only succeed if you have also linked the Trusted Profile to the Compute Resource, or you have created a Trust Rule from the Trusted Profile to the Compute Resource. If you pass a &#39;profile_name&#39;, then the profile is looked up based on the account_id of the Compute resource. If you pass a &#39;profile_id&#39; or &#39;profile_crn&#39;, then the profile must exist in the same account like the Compute Resource.
    # @option opts [String] :profile_name see &#39;profile_id&#39;
    # @option opts [String] :profile_crn see &#39;profile_id&#39;
    # @return [TokenResponse]
    def get_token_cr_token(grant_type, cr_token, opts = {})
      data, _status_code, _headers = get_token_cr_token_with_http_info(grant_type, cr_token, opts)
      data
    end

    # Create an IAM access token for a Trusted Profile based on the provided Compute Resource token
    # Creates a non-opaque access token without a refresh token for a Trusted Profile
    # @param grant_type [String] Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:cr-token&#x60;.
    # @param cr_token [String] The value of the Compute Resource token. As this is a JWT token, the string can get very long.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization IBM Services can pass in a Basic Authorization Header representing a client id with a secret. For customers, omit this header parameter. To build a valid Basic Authorization Header, concatenate the client id with a colon and the secret, i.e. &#x60;client_id:client_secret&#x60;. This sequence must be Base64 encoded, and prefixed with &#x60;Basic&#x60;, so that a valid Basic Authorization Header would be: &#x60;Authorization: Basic Y2xpZW50X2lkOmNsaWVudF9zZWNyZXQ&#x3D;&#x60;
    # @option opts [String] :ibm_cloud_tenant A comma separated list of enterprise ids and/or account ids. If present, an IAM token for the Trusted Profile can only be created if the Trusted Profile is part of one of the account ids or enterprise ids provided in this header.
    # @option opts [String] :profile_id Pass one of &#39;profile_id&#39;, &#39;profile_name&#39; or &#39;profile_crn to select which profile should be used for this IAM token. This call can only succeed if you have also linked the Trusted Profile to the Compute Resource, or you have created a Trust Rule from the Trusted Profile to the Compute Resource. If you pass a &#39;profile_name&#39;, then the profile is looked up based on the account_id of the Compute resource. If you pass a &#39;profile_id&#39; or &#39;profile_crn&#39;, then the profile must exist in the same account like the Compute Resource.
    # @option opts [String] :profile_name see &#39;profile_id&#39;
    # @option opts [String] :profile_crn see &#39;profile_id&#39;
    # @return [Array<(TokenResponse, Integer, Hash)>] TokenResponse data, response status code and response headers
    def get_token_cr_token_with_http_info(grant_type, cr_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokenRetrievalApi.get_token_cr_token ...'
      end
      # verify the required parameter 'grant_type' is set
      if @api_client.config.client_side_validation && grant_type.nil?
        fail ArgumentError, "Missing the required parameter 'grant_type' when calling TokenRetrievalApi.get_token_cr_token"
      end
      # verify the required parameter 'cr_token' is set
      if @api_client.config.client_side_validation && cr_token.nil?
        fail ArgumentError, "Missing the required parameter 'cr_token' when calling TokenRetrievalApi.get_token_cr_token"
      end
      # resource path
      local_var_path = '/identity/token#cr-token'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?
      header_params[:'ibm-cloud-tenant'] = opts[:'ibm_cloud_tenant'] if !opts[:'ibm_cloud_tenant'].nil?

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['grant_type'] = grant_type
      form_params['cr_token'] = cr_token
      form_params['profile_id'] = opts[:'profile_id'] if !opts[:'profile_id'].nil?
      form_params['profile_name'] = opts[:'profile_name'] if !opts[:'profile_name'].nil?
      form_params['profile_crn'] = opts[:'profile_crn'] if !opts[:'profile_crn'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TokenResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TokenRetrievalApi.get_token_cr_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokenRetrievalApi#get_token_cr_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an IAM access token based on an authorization policy
    # Creates a non-opaque access token, if an appropriate authorization policy is in place. This kind of IAM access token is typically used for access between services.
    # @param grant_type [String] Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:iam-authz&#x60;.
    # @param access_token [String] The IAM access token of the identity that has the appropriate authorization to create an IAM access token for a given resource.
    # @param desired_iam_id [String] The IAM ID of the IAM access token identity that should be created. The desired_iam_id identifies a resource identity. The IAM ID consists of the prefix crn- and the CRN of the target identity, e.g. crn-crn:v1:bluemix:public:cloud-object-storage:global:a/59bcbfa6ea2f006b4ed7094c1a08dcdd:1a0ec336-f391-4091-a6fb-5e084a4c56f4::.
    # @param [Hash] opts the optional parameters
    # @return [TokenResponse]
    def get_token_iam_authz(grant_type, access_token, desired_iam_id, opts = {})
      data, _status_code, _headers = get_token_iam_authz_with_http_info(grant_type, access_token, desired_iam_id, opts)
      data
    end

    # Create an IAM access token based on an authorization policy
    # Creates a non-opaque access token, if an appropriate authorization policy is in place. This kind of IAM access token is typically used for access between services.
    # @param grant_type [String] Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:iam-authz&#x60;.
    # @param access_token [String] The IAM access token of the identity that has the appropriate authorization to create an IAM access token for a given resource.
    # @param desired_iam_id [String] The IAM ID of the IAM access token identity that should be created. The desired_iam_id identifies a resource identity. The IAM ID consists of the prefix crn- and the CRN of the target identity, e.g. crn-crn:v1:bluemix:public:cloud-object-storage:global:a/59bcbfa6ea2f006b4ed7094c1a08dcdd:1a0ec336-f391-4091-a6fb-5e084a4c56f4::.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TokenResponse, Integer, Hash)>] TokenResponse data, response status code and response headers
    def get_token_iam_authz_with_http_info(grant_type, access_token, desired_iam_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokenRetrievalApi.get_token_iam_authz ...'
      end
      # verify the required parameter 'grant_type' is set
      if @api_client.config.client_side_validation && grant_type.nil?
        fail ArgumentError, "Missing the required parameter 'grant_type' when calling TokenRetrievalApi.get_token_iam_authz"
      end
      # verify the required parameter 'access_token' is set
      if @api_client.config.client_side_validation && access_token.nil?
        fail ArgumentError, "Missing the required parameter 'access_token' when calling TokenRetrievalApi.get_token_iam_authz"
      end
      # verify the required parameter 'desired_iam_id' is set
      if @api_client.config.client_side_validation && desired_iam_id.nil?
        fail ArgumentError, "Missing the required parameter 'desired_iam_id' when calling TokenRetrievalApi.get_token_iam_authz"
      end
      # resource path
      local_var_path = '/identity/token#iam-authz'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['grant_type'] = grant_type
      form_params['access_token'] = access_token
      form_params['desired_iam_id'] = desired_iam_id

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TokenResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TokenRetrievalApi.get_token_iam_authz",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokenRetrievalApi#get_token_iam_authz\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an IAM access token for a user using username / password credentials and an optional account identifier
    # Creates a non-opaque access token for a username and password. To be able to call IBM Cloud APIs, the token must be made account-specific. For this purpose, also pass the 32 character long identifier for your account in the API call. This API call is possible only for non-federated IBMid users.
    # @param authorization [String] Basic Authorization Header containing a valid client ID and secret. If this header is omitted the request fails with BXNIM0308E: &#39;No authorization header found&#39;. You can use the client ID and secret that is used by the IBM Cloud CLI: &#x60;bx / bx&#x60;
    # @param grant_type [String] Grant type for this API call. You must set the grant type to &#x60;password&#x60;.
    # @param username [String] The value of the username.
    # @param password [String] The value of the password.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ibm_cloud_tenant A comma separated list of enterprise ids and/or account ids. If present, an IAM token for the username / password / account combination can only be created if the account id matches the passed account or the account is member of the enterprise id in this header.
    # @option opts [String] :account The 32 character identifier of the account. Specify this parameter to get an account-specific IAM token. IBM Cloud APIs require that IAM tokens are account-specific.
    # @return [TokenResponse]
    def get_token_password(authorization, grant_type, username, password, opts = {})
      data, _status_code, _headers = get_token_password_with_http_info(authorization, grant_type, username, password, opts)
      data
    end

    # Create an IAM access token for a user using username / password credentials and an optional account identifier
    # Creates a non-opaque access token for a username and password. To be able to call IBM Cloud APIs, the token must be made account-specific. For this purpose, also pass the 32 character long identifier for your account in the API call. This API call is possible only for non-federated IBMid users.
    # @param authorization [String] Basic Authorization Header containing a valid client ID and secret. If this header is omitted the request fails with BXNIM0308E: &#39;No authorization header found&#39;. You can use the client ID and secret that is used by the IBM Cloud CLI: &#x60;bx / bx&#x60;
    # @param grant_type [String] Grant type for this API call. You must set the grant type to &#x60;password&#x60;.
    # @param username [String] The value of the username.
    # @param password [String] The value of the password.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ibm_cloud_tenant A comma separated list of enterprise ids and/or account ids. If present, an IAM token for the username / password / account combination can only be created if the account id matches the passed account or the account is member of the enterprise id in this header.
    # @option opts [String] :account The 32 character identifier of the account. Specify this parameter to get an account-specific IAM token. IBM Cloud APIs require that IAM tokens are account-specific.
    # @return [Array<(TokenResponse, Integer, Hash)>] TokenResponse data, response status code and response headers
    def get_token_password_with_http_info(authorization, grant_type, username, password, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokenRetrievalApi.get_token_password ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TokenRetrievalApi.get_token_password"
      end
      # verify the required parameter 'grant_type' is set
      if @api_client.config.client_side_validation && grant_type.nil?
        fail ArgumentError, "Missing the required parameter 'grant_type' when calling TokenRetrievalApi.get_token_password"
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling TokenRetrievalApi.get_token_password"
      end
      # verify the required parameter 'password' is set
      if @api_client.config.client_side_validation && password.nil?
        fail ArgumentError, "Missing the required parameter 'password' when calling TokenRetrievalApi.get_token_password"
      end
      # resource path
      local_var_path = '/identity/token#password'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Authorization'] = authorization
      header_params[:'ibm-cloud-tenant'] = opts[:'ibm_cloud_tenant'] if !opts[:'ibm_cloud_tenant'].nil?

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['grant_type'] = grant_type
      form_params['username'] = username
      form_params['password'] = password
      form_params['account'] = opts[:'account'] if !opts[:'account'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TokenResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TokenRetrievalApi.get_token_password",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokenRetrievalApi#get_token_password\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
