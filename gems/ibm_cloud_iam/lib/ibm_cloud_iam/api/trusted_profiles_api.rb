=begin
#IAM Identity Services

#   ## Introduction  The IAM Identity Service API is used to manage service IDs, API key identities, trusted profiles, account security settings and to create IAM access tokens for a user or service ID.  With trusted profile templates and assignments you can centrally manage access for child accounts in your organization from the root enterprise account. Similarly with settings templates and assignments, you can centrally administer account security settings. For more information, see [Working with template versions](https://cloud.ibm.com/docs/secure-enterprise?topic=secure-enterprise-working-with-versions&interface=ui) and [Best practices for assigning access in an enterprise](https://cloud.ibm.com/docs/secure-enterprise?topic=secure-enterprise-access-enterprises).  SDKs for Java, Node, Python, and Go are available to make it easier to programmatically access the API from your code. The client libraries that are provided by the SDKs implement best practices for using the API and reduce the amount of code that you need to write. The tab for each language includes code examples that demonstrate how to use the client libraries. For more information about using the SDKs, see the [IBM Cloud SDK Common project](https://github.com/IBM/ibm-cloud-sdk-common) on GitHub.  Installing the Java SDK  Maven  ```xml <dependency>  <groupId>com.ibm.cloud</groupId>  <artifactId>iam-identity</artifactId>  <version>{version}</version> </dependency> ```  Gradle  ```bash compile 'com.ibm.cloud:iam-identity:{version}' ```  Replace `{version}` in these examples with the release version.  View on GitHub  [https://github.com/IBM/platform-services-java-sdk](https://github.com/IBM/platform-services-java-sdk)  Installing the Go SDK  Go modules (recommended): Add the following import in your code, and then run `go build` or `go mod tidy`  ```go import (  \"github.com/IBM/platform-services-go-sdk/iamidentityv1\" ) ```  ```bash go get -u github.com/IBM/platform-services-go-sdk/iamidentityv1 ```  View on GitHub  [https://github.com/IBM/platform-services-go-sdk](https://github.com/IBM/platform-services-go-sdk)  Installing the Node SDK  ```bash npm install @ibm-cloud/platform-services ```  View on GitHub  [https://github.com/IBM/platform-services-node-sdk](https://github.com/IBM/platform-services-node-sdk)  Installing the Python SDK  ```bash pip install --upgrade \"ibm-platform-services\" ```  View on GitHub  [https://github.com/IBM/platform-services-python-sdk](https://github.com/IBM/platform-services-python-sdk)  The examples that are provided on this page demonstrate how to use IAM Identity Service For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  The examples that are provided on this page demonstrate how to use IAM Identity Service For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  The examples that are provided on this page demonstrate how to use IAM Identity Service For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  The examples that are provided on this page demonstrate how to use IAM Identity Service For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  ## Endpoint URLs  The IAM Identity Services API uses the following public global endpoint URL. When you call the API, add the path for each method to form the complete API endpoint for your requests.  ```bash https://iam.cloud.ibm.com ```  Virtual private cloud (VPC) based access requires a virtual private endpoint gateway (VPE gateway). For more information , see [Creating an endpoint gateway](https://cloud.ibm.com/docs/vpc?topic=vpc-ordering-endpoint-gateway).  * Private endpoint URL for VPC infrastructure: `https://private.iam.cloud.ibm.com`.   VPE gateway creation is supported in all datacenters (see https://cloud.ibm.com/docs/overview?topic=overview-locations#regions).  If you enabled service endpoints in your account, you can send API requests over the IBM Cloud® private network at the following base endpoint URLs. For more information, see [Enabling VRF and service endpoints](https://cloud.ibm.com/docs/account?topic=account-vrf-service-endpoint).  * Private endpoint URLs for classic infrastructure. Supported URLs:      * Sydney: `https://private.au-syd.iam.cloud.ibm.com`    * Sao Paulo: `https://private.br-sao.iam.cloud.ibm.com`    * Montreal: `https://private.ca-mon.iam.cloud.ibm.com`    * Toronto: `https://private.ca-tor.iam.cloud.ibm.com`    * Frankfurt DC: `https://private.eu-de.iam.cloud.ibm.com`    * London: `https://private.eu-gb.iam.cloud.ibm.com`    * Madrid: `https://private.eu-es.iam.cloud.ibm.com`    * Tokyo: `https://private.jp-tok.iam.cloud.ibm.com`    * Osaka: `https://private.jp-osa.iam.cloud.ibm.com`    * Washington DC: `https://private.us-east.iam.cloud.ibm.com`    * Dallas: `https://private.us-south.iam.cloud.ibm.com`  IAM is a global service and deployed to multiple MZRs world wide. IAM can be reached from all locations using the public global endpoint or using one of the private endpoints. Each request is sent to the closest region related to the client that invokes the call to IAM.  Example API request  ```bash curl -u \"apikey:{apikey}\" -X {request_method} \"https://iam.cloud.ibm.com/{method_endpoint}\" ```  Replace `{apikey}`, `{request_method}`, and `{method_endpoint}` in this example with the values for your particular API call.  ## Authentication  Authorization to the Identity Services REST API is enforced by using an IBM Cloud Identity and Access Management (IAM) access token. The token is used to determine the actions that a user or service ID has access to when they use the API.   You can generate an access token by first [creating an API key](https://cloud.ibm.com/docs/account?topic=account-iamtoken_from_apikey) and then exchanging your API key for an IBM Cloud IAM token.   Don't have an API key? Try running `ibmcloud iam oauth-tokens` in the [IBM Cloud Shell](https://cloud.ibm.com/shell) to quickly generate a personal access token.  When you use the SDK, configure an IAM authenticator with the IAM API key. The authenticator automatically obtains the IAM access token for the API key and includes it with each request. You can construct an authenticator in either of two ways: - Programmatically by constructing an IAM authenticator instance and supplying your IAM API key  - By defining the API key in external configuration properties and then using the SDK authenticator factory to construct an IAM authenticator that uses the configured IAM API key  In this example of using external configuration properties, an IAM authenticator instance is created with the configured API key, and then the service client is constructed with this authenticator instance and the configured service URL.  For more information, see the Authentication section of the [IBM Cloud SDK Common](https://github.com/IBM/ibm-cloud-sdk-common/blob/main/README.md) documentation.  To call each method, you'll need to be assigned a role that includes the required IAM actions. Each method lists the associated action. For more information about IAM actions and how they map to roles, see [IAM Identity service](https://cloud.ibm.com/docs/account?topic=account-account-services#identity-service-account-management).  To retrieve your access token:  ```bash curl -X POST \\   \"https://iam.cloud.ibm.com/identity/token\" \\   --header 'Content-Type: application/x-www-form-urlencoded' \\   --header 'Accept: application/json' \\   --data-urlencode 'grant_type=urn:ibm:params:oauth:grant-type:apikey' \\   --data-urlencode 'apikey=<API_KEY>' ```  Replace `<API_KEY>` with your IAM API key.  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export IAM_IDENTITY_URL=<SERVICE_URL> export IAM_IDENTITY_AUTHTYPE=iam export IAM_IDENTITY_APIKEY=<API_KEY> ```  Example of constructing the service client ```go import {     \"github.com/IBM/platform-services-go-sdk/iamidentityv1\" } ... serviceClientOptions := &iamidentityv1.IamIdentityV1Options{} serviceClient, err := iamidentityv1.NewIamIdentityV1UsingExternalConfig(serviceClientOptions) ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export IAM_IDENTITY_URL=<SERVICE_URL> export IAM_IDENTITY_AUTHTYPE=iam export IAM_IDENTITY_APIKEY=<API_KEY> ```  Example of constructing the service client ```java import com.ibm.cloud.platform_services.iam_identity.v1.IamIdentity; ... IamIdentity serviceClient = IamIdentity.newInstance(); ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export IAM_IDENTITY_URL=<SERVICE_URL> export IAM_IDENTITY_AUTHTYPE=iam export IAM_IDENTITY_APIKEY=<API_KEY> ```  Example of constructing the service client ```javascript const IamIdentityV1 = require('@ibm-cloud/platform-services/iam-identity/v1'); ... const serviceClient = IamIdentityV1.newInstance({}); ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export IAM_IDENTITY_URL=<SERVICE_URL> export IAM_IDENTITY_AUTHTYPE=iam export IAM_IDENTITY_APIKEY=<API_KEY> ```  Example of constructing the service client ```python from ibm_platform_services import IamIdentityV1 ... service_client = IamIdentityV1.new_instance() ```  You authenticate to the API by using Cloud Identity and Access Management (IAM). You can pass either a bearer token in an authorization header or an [API key](https://cloud.ibm.com/docs/account?topic=account-manapikey).  The SDK provides initialization methods for each form of authentication.  - Use the API key to have the SDK manage the lifecycle of the access token. The SDK requests an access token, ensures that the access token is valid, includes the access token in each outgoing request, and refreshes it when it expires. - Use the access token to manage the lifecycle yourself. Keep in mind that access tokens are valid for 1 hour, so you must refresh them regularly to maintain access.  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  ## Auditing  You can monitor API activity within your account by using the IBM Cloud Logs service. Whenever an API method is called, an event is generated that you can then track and audit from within IBM Cloud Logs. The specific event type is listed for each individual method.  If an event is tracked for a method, you can find it listed with the method. For more information about how to track IAM activity, see [Activity tracking events for IAM](https://cloud.ibm.com/docs/account?topic=account-at_events_iam).  ## Error handling  The IAM Token Service uses standard HTTP response codes to indicate whether a method completed successfully. A `200` response always indicates success. A `400` type response indicates that a parameter validation failed and can occur if required parameters are missing or if any parameter values are invalid. A `401` or `403` response indicates that the incoming request did not contain valid authentication information. A `500` type response indicates an internal server error that is seen in an unexpected error situation.  The Identity Services REST APIs return standard HTTP status codes to indicate the success or failure of a request. The format of the response is represented in JSON as follows: ```json {     \"trace\": \"9daee671-916a-4678-850b-10b911f0236d\",     \"errors\": [         {             \"code\": \"invalid_access_token\",             \"message\": \"The provided access token provided is invalid.\"         }     ]     \"status_code\": 401 } ``` If an operation cannot be fulfilled, an appropriate 400 or 500 series HTTP response is returned from the server. The operations that are defined in the `Reference` section describe example errors that might be returned from a failed request. All responses from the Identity Services REST API are in JSON format.  The following table show the potential error codes the API might return.  | HTTP Error Code | Description | Recovery | |-----------------|-------------|----------| | `200` | Success | The request was successful. | | `201` | Created | The resource was successfully created. | | `204` | No Content | The request was successful. No response body is provided. | | `400` | Bad Request | The input parameters in the request body are either incomplete or in the wrong format. Be sure to include all required parameters in your request. | | `401` | Unauthorized | You are not authorized to make this request. The token is either missing or expired. Get a new valid token and try again.     | | `403` | Forbidden | The supplied authentication is not authorized to perform the operation. If this error persists, contact the account owner to check your permissions. | | `404` | Not Found | The requested resource can't be found. | | `409` | Conflict | The entity is already in the requested state. | | `429` | Too Many Requests | Too many requests have been made within a time window. Wait before calling the API again. | | `500` | Internal error | Error that is seen in an unexpected error situation. |  ## Additional headers  Some additional headers might be required to make successful requests to the API. Those additional headers are:  An optional transaction ID can be passed to your request, which can be useful for tracking calls through multiple services using one identifier. The header key must be set to `Transaction-Id` and the value is anything that you choose.  If there is not a transaction ID that is passed in, then one is generated randomly.  ## API Parameters Some API parameter have additional details that need to be considered while using it in a request. Those API parameters are as follow:  ### Filtering list results  When listing service IDs, trusted profiles or API keys you can filter the result set by providing an optional `filter` parameter. The exact syntax of this parameter is described below. Query syntax will follow the SCIM query syntax with reduced operator support. The value must be URL encoded. Only the following operators are supported.  * Supported attribute operators-  - `sw` - starts with  - `sw_ci` - starts with ingnore case - non SCIM standard  - `ew` - ends with  - `ew_ci` - ends with ingnore case - non SCIM standard  - `co` - contains  - `co_ci` - contains ingnore case - non SCIM standard * Supported operators-   - `and`   - `or` * Grouping operators-   - `()` * Data Values   -`Text` * Sample   - `name co \"Foo\" and description sw \"Bar\"`

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.23.0

=end

require 'cgi'

module IbmCloudIam
  class TrustedProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create claim rule for a trusted profile
    # Create a claim rule for a trusted profile. There is a limit of 20 rules per trusted profile.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param profile_id [String] ID of the trusted profile to create a claim rule.
    # @param profile_claim_rule_request [ProfileClaimRuleRequest] Request to create a claim rule for trusted profile.
    # @param [Hash] opts the optional parameters
    # @return [ProfileClaimRule]
    def create_claim_rule(authorization, profile_id, profile_claim_rule_request, opts = {})
      data, _status_code, _headers = create_claim_rule_with_http_info(authorization, profile_id, profile_claim_rule_request, opts)
      data
    end

    # Create claim rule for a trusted profile
    # Create a claim rule for a trusted profile. There is a limit of 20 rules per trusted profile.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param profile_id [String] ID of the trusted profile to create a claim rule.
    # @param profile_claim_rule_request [ProfileClaimRuleRequest] Request to create a claim rule for trusted profile.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProfileClaimRule, Integer, Hash)>] ProfileClaimRule data, response status code and response headers
    def create_claim_rule_with_http_info(authorization, profile_id, profile_claim_rule_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedProfilesApi.create_claim_rule ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrustedProfilesApi.create_claim_rule"
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling TrustedProfilesApi.create_claim_rule"
      end
      # verify the required parameter 'profile_claim_rule_request' is set
      if @api_client.config.client_side_validation && profile_claim_rule_request.nil?
        fail ArgumentError, "Missing the required parameter 'profile_claim_rule_request' when calling TrustedProfilesApi.create_claim_rule"
      end
      # resource path
      local_var_path = '/v1/profiles/{profile-id}/rules'.sub('{profile-id}', CGI.escape(profile_id.to_s))

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
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(profile_claim_rule_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ProfileClaimRule'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TrustedProfilesApi.create_claim_rule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedProfilesApi#create_claim_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create link to a trusted profile
    # Create a direct link between a specific compute resource and a trusted profile, rather than creating conditions that a compute resource must fulfill to apply a trusted profile.
    # @param profile_id [String] ID of the trusted profile.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param create_profile_link_request [CreateProfileLinkRequest] Request to create a Link to Trusted profile.
    # @param [Hash] opts the optional parameters
    # @return [ProfileLink]
    def create_link(profile_id, authorization, create_profile_link_request, opts = {})
      data, _status_code, _headers = create_link_with_http_info(profile_id, authorization, create_profile_link_request, opts)
      data
    end

    # Create link to a trusted profile
    # Create a direct link between a specific compute resource and a trusted profile, rather than creating conditions that a compute resource must fulfill to apply a trusted profile.
    # @param profile_id [String] ID of the trusted profile.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param create_profile_link_request [CreateProfileLinkRequest] Request to create a Link to Trusted profile.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProfileLink, Integer, Hash)>] ProfileLink data, response status code and response headers
    def create_link_with_http_info(profile_id, authorization, create_profile_link_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedProfilesApi.create_link ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling TrustedProfilesApi.create_link"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrustedProfilesApi.create_link"
      end
      # verify the required parameter 'create_profile_link_request' is set
      if @api_client.config.client_side_validation && create_profile_link_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_profile_link_request' when calling TrustedProfilesApi.create_link"
      end
      # resource path
      local_var_path = '/v1/profiles/{profile-id}/links'.sub('{profile-id}', CGI.escape(profile_id.to_s))

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
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_profile_link_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ProfileLink'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TrustedProfilesApi.create_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedProfilesApi#create_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a trusted profile
    # Create a trusted profile for a given account ID.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param create_trusted_profile_request [CreateTrustedProfileRequest] Request to create a trusted profile.
    # @param [Hash] opts the optional parameters
    # @return [TrustedProfile]
    def create_profile(authorization, create_trusted_profile_request, opts = {})
      data, _status_code, _headers = create_profile_with_http_info(authorization, create_trusted_profile_request, opts)
      data
    end

    # Create a trusted profile
    # Create a trusted profile for a given account ID.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param create_trusted_profile_request [CreateTrustedProfileRequest] Request to create a trusted profile.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TrustedProfile, Integer, Hash)>] TrustedProfile data, response status code and response headers
    def create_profile_with_http_info(authorization, create_trusted_profile_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedProfilesApi.create_profile ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrustedProfilesApi.create_profile"
      end
      # verify the required parameter 'create_trusted_profile_request' is set
      if @api_client.config.client_side_validation && create_trusted_profile_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_trusted_profile_request' when calling TrustedProfilesApi.create_profile"
      end
      # resource path
      local_var_path = '/v1/profiles'

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
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_trusted_profile_request)

      # return_type
      return_type = opts[:debug_return_type] || 'TrustedProfile'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TrustedProfilesApi.create_profile",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedProfilesApi#create_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a claim rule
    # Delete a claim rule. When you delete a claim rule, federated user or compute resources are no longer required to meet the conditions of the claim rule in order to apply the trusted profile.
    # @param profile_id [String] ID of the trusted profile.
    # @param rule_id [String] ID of the claim rule to delete.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_claim_rule(profile_id, rule_id, authorization, opts = {})
      delete_claim_rule_with_http_info(profile_id, rule_id, authorization, opts)
      nil
    end

    # Delete a claim rule
    # Delete a claim rule. When you delete a claim rule, federated user or compute resources are no longer required to meet the conditions of the claim rule in order to apply the trusted profile.
    # @param profile_id [String] ID of the trusted profile.
    # @param rule_id [String] ID of the claim rule to delete.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_claim_rule_with_http_info(profile_id, rule_id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedProfilesApi.delete_claim_rule ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling TrustedProfilesApi.delete_claim_rule"
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling TrustedProfilesApi.delete_claim_rule"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrustedProfilesApi.delete_claim_rule"
      end
      # resource path
      local_var_path = '/v1/profiles/{profile-id}/rules/{rule-id}'.sub('{profile-id}', CGI.escape(profile_id.to_s)).sub('{rule-id}', CGI.escape(rule_id.to_s))

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
        :operation => :"TrustedProfilesApi.delete_claim_rule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedProfilesApi#delete_claim_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete link to a trusted profile
    # Delete a link between a compute resource and a trusted profile.
    # @param profile_id [String] ID of the trusted profile
    # @param link_id [String] ID of the link
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_link(profile_id, link_id, authorization, opts = {})
      delete_link_with_http_info(profile_id, link_id, authorization, opts)
      nil
    end

    # Delete link to a trusted profile
    # Delete a link between a compute resource and a trusted profile.
    # @param profile_id [String] ID of the trusted profile
    # @param link_id [String] ID of the link
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_link_with_http_info(profile_id, link_id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedProfilesApi.delete_link ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling TrustedProfilesApi.delete_link"
      end
      # verify the required parameter 'link_id' is set
      if @api_client.config.client_side_validation && link_id.nil?
        fail ArgumentError, "Missing the required parameter 'link_id' when calling TrustedProfilesApi.delete_link"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrustedProfilesApi.delete_link"
      end
      # resource path
      local_var_path = '/v1/profiles/{profile-id}/links/{link-id}'.sub('{profile-id}', CGI.escape(profile_id.to_s)).sub('{link-id}', CGI.escape(link_id.to_s))

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
        :operation => :"TrustedProfilesApi.delete_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedProfilesApi#delete_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete compute resource link to profile by given parameters.
    # Deletes compute resource link of a Trusted Profile matching the given parameters.
    # @param profile_id [String] The unique ID of the Trusted Profile
    # @param type [String] The compute resource type. Valid values are VSI, PVS, BMS, IKS_SA, ROKS_SA, CE
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :crn CRN of the compute resource (VSI/PVS/BMS/IKS/ROKS/CE)
    # @option opts [String] :namespace Namespace of the compute resource (IKS/ROKS).
    # @option opts [String] :name Name of the compute resource (IKS/ROKS).
    # @option opts [String] :component_type Component type of the compute resource, only required if type is CE
    # @option opts [String] :component_name Component name of the compute resource, only required if type is CE
    # @return [nil]
    def delete_link_by_parameters(profile_id, type, authorization, opts = {})
      delete_link_by_parameters_with_http_info(profile_id, type, authorization, opts)
      nil
    end

    # Delete compute resource link to profile by given parameters.
    # Deletes compute resource link of a Trusted Profile matching the given parameters.
    # @param profile_id [String] The unique ID of the Trusted Profile
    # @param type [String] The compute resource type. Valid values are VSI, PVS, BMS, IKS_SA, ROKS_SA, CE
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :crn CRN of the compute resource (VSI/PVS/BMS/IKS/ROKS/CE)
    # @option opts [String] :namespace Namespace of the compute resource (IKS/ROKS).
    # @option opts [String] :name Name of the compute resource (IKS/ROKS).
    # @option opts [String] :component_type Component type of the compute resource, only required if type is CE
    # @option opts [String] :component_name Component name of the compute resource, only required if type is CE
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_link_by_parameters_with_http_info(profile_id, type, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedProfilesApi.delete_link_by_parameters ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling TrustedProfilesApi.delete_link_by_parameters"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling TrustedProfilesApi.delete_link_by_parameters"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrustedProfilesApi.delete_link_by_parameters"
      end
      # resource path
      local_var_path = '/v1/profiles/{profile-id}/links'.sub('{profile-id}', CGI.escape(profile_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'type'] = type
      query_params[:'crn'] = opts[:'crn'] if !opts[:'crn'].nil?
      query_params[:'namespace'] = opts[:'namespace'] if !opts[:'namespace'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'component_type'] = opts[:'component_type'] if !opts[:'component_type'].nil?
      query_params[:'component_name'] = opts[:'component_name'] if !opts[:'component_name'].nil?

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
        :operation => :"TrustedProfilesApi.delete_link_by_parameters",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedProfilesApi#delete_link_by_parameters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a trusted profile
    # Delete a trusted profile. When you delete trusted profile, compute resources and federated users are unlinked from the profile and can no longer apply the trusted profile identity.
    # @param profile_id [String] ID of the trusted profile.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_profile(profile_id, authorization, opts = {})
      delete_profile_with_http_info(profile_id, authorization, opts)
      nil
    end

    # Delete a trusted profile
    # Delete a trusted profile. When you delete trusted profile, compute resources and federated users are unlinked from the profile and can no longer apply the trusted profile identity.
    # @param profile_id [String] ID of the trusted profile.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_profile_with_http_info(profile_id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedProfilesApi.delete_profile ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling TrustedProfilesApi.delete_profile"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrustedProfilesApi.delete_profile"
      end
      # resource path
      local_var_path = '/v1/profiles/{profile-id}'.sub('{profile-id}', CGI.escape(profile_id.to_s))

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
        :operation => :"TrustedProfilesApi.delete_profile",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedProfilesApi#delete_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the identity that can assume the trusted profile
    # Delete the identity that can assume the trusted profile.   **Note:** This API will update the trusted profile itself,  thus calling it repeatedly for the same profile can lead to  conflicts responded with HTTP code 409. Make sure to call this  API only once in a few seconds for the same trusted profile. 
    # @param profile_id [String] ID of the trusted profile
    # @param identity_type [String] Type of the identity
    # @param identifier_id [String] Identifier of the identity that can assume the trusted profiles.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_profile_identity(profile_id, identity_type, identifier_id, authorization, opts = {})
      delete_profile_identity_with_http_info(profile_id, identity_type, identifier_id, authorization, opts)
      nil
    end

    # Delete the identity that can assume the trusted profile
    # Delete the identity that can assume the trusted profile.   **Note:** This API will update the trusted profile itself,  thus calling it repeatedly for the same profile can lead to  conflicts responded with HTTP code 409. Make sure to call this  API only once in a few seconds for the same trusted profile. 
    # @param profile_id [String] ID of the trusted profile
    # @param identity_type [String] Type of the identity
    # @param identifier_id [String] Identifier of the identity that can assume the trusted profiles.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_profile_identity_with_http_info(profile_id, identity_type, identifier_id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedProfilesApi.delete_profile_identity ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling TrustedProfilesApi.delete_profile_identity"
      end
      # verify the required parameter 'identity_type' is set
      if @api_client.config.client_side_validation && identity_type.nil?
        fail ArgumentError, "Missing the required parameter 'identity_type' when calling TrustedProfilesApi.delete_profile_identity"
      end
      # verify enum value
      allowable_values = ["user", "serviceid", "crn"]
      if @api_client.config.client_side_validation && !allowable_values.include?(identity_type)
        fail ArgumentError, "invalid value for \"identity_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'identifier_id' is set
      if @api_client.config.client_side_validation && identifier_id.nil?
        fail ArgumentError, "Missing the required parameter 'identifier_id' when calling TrustedProfilesApi.delete_profile_identity"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrustedProfilesApi.delete_profile_identity"
      end
      # resource path
      local_var_path = '/v1/profiles/{profile-id}/identities/{identity-type}/{identifier-id}'.sub('{profile-id}', CGI.escape(profile_id.to_s)).sub('{identity-type}', CGI.escape(identity_type.to_s)).sub('{identifier-id}', CGI.escape(identifier_id.to_s))

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
        :operation => :"TrustedProfilesApi.delete_profile_identity",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedProfilesApi#delete_profile_identity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a claim rule for a trusted profile
    # A specific claim rule can be fetched for a given trusted profile ID and rule ID.
    # @param profile_id [String] ID of the trusted profile.
    # @param rule_id [String] ID of the claim rule to get.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [ProfileClaimRule]
    def get_claim_rule(profile_id, rule_id, authorization, opts = {})
      data, _status_code, _headers = get_claim_rule_with_http_info(profile_id, rule_id, authorization, opts)
      data
    end

    # Get a claim rule for a trusted profile
    # A specific claim rule can be fetched for a given trusted profile ID and rule ID.
    # @param profile_id [String] ID of the trusted profile.
    # @param rule_id [String] ID of the claim rule to get.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProfileClaimRule, Integer, Hash)>] ProfileClaimRule data, response status code and response headers
    def get_claim_rule_with_http_info(profile_id, rule_id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedProfilesApi.get_claim_rule ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling TrustedProfilesApi.get_claim_rule"
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling TrustedProfilesApi.get_claim_rule"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrustedProfilesApi.get_claim_rule"
      end
      # resource path
      local_var_path = '/v1/profiles/{profile-id}/rules/{rule-id}'.sub('{profile-id}', CGI.escape(profile_id.to_s)).sub('{rule-id}', CGI.escape(rule_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ProfileClaimRule'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TrustedProfilesApi.get_claim_rule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedProfilesApi#get_claim_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get link to a trusted profile
    # Get a specific link to a trusted profile by `link_id`.
    # @param profile_id [String] ID of the trusted profile
    # @param link_id [String] ID of the link
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [ProfileLink]
    def get_link(profile_id, link_id, authorization, opts = {})
      data, _status_code, _headers = get_link_with_http_info(profile_id, link_id, authorization, opts)
      data
    end

    # Get link to a trusted profile
    # Get a specific link to a trusted profile by &#x60;link_id&#x60;.
    # @param profile_id [String] ID of the trusted profile
    # @param link_id [String] ID of the link
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProfileLink, Integer, Hash)>] ProfileLink data, response status code and response headers
    def get_link_with_http_info(profile_id, link_id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedProfilesApi.get_link ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling TrustedProfilesApi.get_link"
      end
      # verify the required parameter 'link_id' is set
      if @api_client.config.client_side_validation && link_id.nil?
        fail ArgumentError, "Missing the required parameter 'link_id' when calling TrustedProfilesApi.get_link"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrustedProfilesApi.get_link"
      end
      # resource path
      local_var_path = '/v1/profiles/{profile-id}/links/{link-id}'.sub('{profile-id}', CGI.escape(profile_id.to_s)).sub('{link-id}', CGI.escape(link_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ProfileLink'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TrustedProfilesApi.get_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedProfilesApi#get_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a trusted profile
    # Retrieve a trusted profile by its `profile-id`. Only the trusted profile's data is returned (`name`, `description`, `iam_id`, etc.), not the federated users or compute resources that qualify to apply the trusted profile.
    # @param profile_id [String] ID of the trusted profile to get.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_activity Defines if the entity&#39;s activity is included in the response. Retrieving activity data is an expensive operation, so only request this when needed. (default to false)
    # @return [TrustedProfile]
    def get_profile(profile_id, authorization, opts = {})
      data, _status_code, _headers = get_profile_with_http_info(profile_id, authorization, opts)
      data
    end

    # Get a trusted profile
    # Retrieve a trusted profile by its &#x60;profile-id&#x60;. Only the trusted profile&#39;s data is returned (&#x60;name&#x60;, &#x60;description&#x60;, &#x60;iam_id&#x60;, etc.), not the federated users or compute resources that qualify to apply the trusted profile.
    # @param profile_id [String] ID of the trusted profile to get.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_activity Defines if the entity&#39;s activity is included in the response. Retrieving activity data is an expensive operation, so only request this when needed. (default to false)
    # @return [Array<(TrustedProfile, Integer, Hash)>] TrustedProfile data, response status code and response headers
    def get_profile_with_http_info(profile_id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedProfilesApi.get_profile ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling TrustedProfilesApi.get_profile"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrustedProfilesApi.get_profile"
      end
      # resource path
      local_var_path = '/v1/profiles/{profile-id}'.sub('{profile-id}', CGI.escape(profile_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include_activity'] = opts[:'include_activity'] if !opts[:'include_activity'].nil?

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
      return_type = opts[:debug_return_type] || 'TrustedProfile'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TrustedProfilesApi.get_profile",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedProfilesApi#get_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of identities that can assume the trusted profile
    # Get a list of identities that can assume the trusted profile
    # @param profile_id [String] ID of the trusted profile.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [ProfileIdentitiesResponse]
    def get_profile_identities(profile_id, authorization, opts = {})
      data, _status_code, _headers = get_profile_identities_with_http_info(profile_id, authorization, opts)
      data
    end

    # Get a list of identities that can assume the trusted profile
    # Get a list of identities that can assume the trusted profile
    # @param profile_id [String] ID of the trusted profile.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProfileIdentitiesResponse, Integer, Hash)>] ProfileIdentitiesResponse data, response status code and response headers
    def get_profile_identities_with_http_info(profile_id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedProfilesApi.get_profile_identities ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling TrustedProfilesApi.get_profile_identities"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrustedProfilesApi.get_profile_identities"
      end
      # resource path
      local_var_path = '/v1/profiles/{profile-id}/identities'.sub('{profile-id}', CGI.escape(profile_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ProfileIdentitiesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TrustedProfilesApi.get_profile_identities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedProfilesApi#get_profile_identities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the identity that can assume the trusted profile
    # Get the identity that can assume the trusted profile
    # @param profile_id [String] ID of the trusted profile
    # @param identity_type [String] Type of the identity
    # @param identifier_id [String] Identifier of the identity that can assume the trusted profiles.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [ProfileIdentityResponse]
    def get_profile_identity(profile_id, identity_type, identifier_id, authorization, opts = {})
      data, _status_code, _headers = get_profile_identity_with_http_info(profile_id, identity_type, identifier_id, authorization, opts)
      data
    end

    # Get the identity that can assume the trusted profile
    # Get the identity that can assume the trusted profile
    # @param profile_id [String] ID of the trusted profile
    # @param identity_type [String] Type of the identity
    # @param identifier_id [String] Identifier of the identity that can assume the trusted profiles.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProfileIdentityResponse, Integer, Hash)>] ProfileIdentityResponse data, response status code and response headers
    def get_profile_identity_with_http_info(profile_id, identity_type, identifier_id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedProfilesApi.get_profile_identity ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling TrustedProfilesApi.get_profile_identity"
      end
      # verify the required parameter 'identity_type' is set
      if @api_client.config.client_side_validation && identity_type.nil?
        fail ArgumentError, "Missing the required parameter 'identity_type' when calling TrustedProfilesApi.get_profile_identity"
      end
      # verify enum value
      allowable_values = ["user", "serviceid", "crn"]
      if @api_client.config.client_side_validation && !allowable_values.include?(identity_type)
        fail ArgumentError, "invalid value for \"identity_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'identifier_id' is set
      if @api_client.config.client_side_validation && identifier_id.nil?
        fail ArgumentError, "Missing the required parameter 'identifier_id' when calling TrustedProfilesApi.get_profile_identity"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrustedProfilesApi.get_profile_identity"
      end
      # resource path
      local_var_path = '/v1/profiles/{profile-id}/identities/{identity-type}/{identifier-id}'.sub('{profile-id}', CGI.escape(profile_id.to_s)).sub('{identity-type}', CGI.escape(identity_type.to_s)).sub('{identifier-id}', CGI.escape(identifier_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ProfileIdentityResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TrustedProfilesApi.get_profile_identity",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedProfilesApi#get_profile_identity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List claim rules for a trusted profile
    # Get a list of all claim rules for a trusted profile. The `profile-id` query parameter determines the profile from which to retrieve the list of claim rules.
    # @param profile_id [String] ID of the trusted profile.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [ProfileClaimRuleList]
    def list_claim_rules(profile_id, authorization, opts = {})
      data, _status_code, _headers = list_claim_rules_with_http_info(profile_id, authorization, opts)
      data
    end

    # List claim rules for a trusted profile
    # Get a list of all claim rules for a trusted profile. The &#x60;profile-id&#x60; query parameter determines the profile from which to retrieve the list of claim rules.
    # @param profile_id [String] ID of the trusted profile.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProfileClaimRuleList, Integer, Hash)>] ProfileClaimRuleList data, response status code and response headers
    def list_claim_rules_with_http_info(profile_id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedProfilesApi.list_claim_rules ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling TrustedProfilesApi.list_claim_rules"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrustedProfilesApi.list_claim_rules"
      end
      # resource path
      local_var_path = '/v1/profiles/{profile-id}/rules'.sub('{profile-id}', CGI.escape(profile_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ProfileClaimRuleList'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TrustedProfilesApi.list_claim_rules",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedProfilesApi#list_claim_rules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List links to a trusted profile
    # Get a list of links to a trusted profile.
    # @param profile_id [String] ID of the trusted profile
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [ProfileLinkList]
    def list_links(profile_id, authorization, opts = {})
      data, _status_code, _headers = list_links_with_http_info(profile_id, authorization, opts)
      data
    end

    # List links to a trusted profile
    # Get a list of links to a trusted profile.
    # @param profile_id [String] ID of the trusted profile
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProfileLinkList, Integer, Hash)>] ProfileLinkList data, response status code and response headers
    def list_links_with_http_info(profile_id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedProfilesApi.list_links ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling TrustedProfilesApi.list_links"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrustedProfilesApi.list_links"
      end
      # resource path
      local_var_path = '/v1/profiles/{profile-id}/links'.sub('{profile-id}', CGI.escape(profile_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ProfileLinkList'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TrustedProfilesApi.list_links",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedProfilesApi#list_links\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List trusted profiles
    # List the trusted profiles in an account. The `account_id` query parameter determines the account from which to retrieve the list of trusted profiles.
    # @param account_id [String] Account ID to query for trusted profiles.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Name of the trusted profile to query.
    # @option opts [Integer] :pagesize Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100.
    # @option opts [String] :sort Optional sort property, valid values are name, description, created_at and modified_at. If specified, the items are sorted by the value of this property.
    # @option opts [String] :order Optional sort order, valid values are asc and desc. Default: asc. (default to 'asc')
    # @option opts [Boolean] :include_history Defines if the entity history is included in the response. (default to false)
    # @option opts [String] :pagetoken Optional Prev or Next page token returned from a previous query execution. Default is start with first page.
    # @option opts [String] :filter An optional filter query parameter used to refine the results of the search operation. For more information see [Filtering list results](#filter-list-results) section.
    # @return [TrustedProfilesList]
    def list_profiles(account_id, authorization, opts = {})
      data, _status_code, _headers = list_profiles_with_http_info(account_id, authorization, opts)
      data
    end

    # List trusted profiles
    # List the trusted profiles in an account. The &#x60;account_id&#x60; query parameter determines the account from which to retrieve the list of trusted profiles.
    # @param account_id [String] Account ID to query for trusted profiles.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Name of the trusted profile to query.
    # @option opts [Integer] :pagesize Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100.
    # @option opts [String] :sort Optional sort property, valid values are name, description, created_at and modified_at. If specified, the items are sorted by the value of this property.
    # @option opts [String] :order Optional sort order, valid values are asc and desc. Default: asc. (default to 'asc')
    # @option opts [Boolean] :include_history Defines if the entity history is included in the response. (default to false)
    # @option opts [String] :pagetoken Optional Prev or Next page token returned from a previous query execution. Default is start with first page.
    # @option opts [String] :filter An optional filter query parameter used to refine the results of the search operation. For more information see [Filtering list results](#filter-list-results) section.
    # @return [Array<(TrustedProfilesList, Integer, Hash)>] TrustedProfilesList data, response status code and response headers
    def list_profiles_with_http_info(account_id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedProfilesApi.list_profiles ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling TrustedProfilesApi.list_profiles"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrustedProfilesApi.list_profiles"
      end
      allowable_values = ["asc", "desc"]
      if @api_client.config.client_side_validation && opts[:'order'] && !allowable_values.include?(opts[:'order'])
        fail ArgumentError, "invalid value for \"order\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/profiles'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = account_id
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'pagesize'] = opts[:'pagesize'] if !opts[:'pagesize'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'include_history'] = opts[:'include_history'] if !opts[:'include_history'].nil?
      query_params[:'pagetoken'] = opts[:'pagetoken'] if !opts[:'pagetoken'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

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
      return_type = opts[:debug_return_type] || 'TrustedProfilesList'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TrustedProfilesApi.list_profiles",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedProfilesApi#list_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the list of identities that can assume the trusted profile
    # Update the list of identities that can assume the trusted profile
    # @param profile_id [String] ID of the trusted profile.
    # @param if_match [String] Entity tag of the Identities to be updated. Specify the tag that you retrieved when reading the Profile Identities. This value helps identify parallel usage of this API. Pass * to indicate updating any available version, which may result in stale updates.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param profile_identities_update_request [ProfileIdentitiesUpdateRequest] Request to update identities.
    # @param [Hash] opts the optional parameters
    # @return [ProfileIdentitiesResponse]
    def set_profile_identities(profile_id, if_match, authorization, profile_identities_update_request, opts = {})
      data, _status_code, _headers = set_profile_identities_with_http_info(profile_id, if_match, authorization, profile_identities_update_request, opts)
      data
    end

    # Update the list of identities that can assume the trusted profile
    # Update the list of identities that can assume the trusted profile
    # @param profile_id [String] ID of the trusted profile.
    # @param if_match [String] Entity tag of the Identities to be updated. Specify the tag that you retrieved when reading the Profile Identities. This value helps identify parallel usage of this API. Pass * to indicate updating any available version, which may result in stale updates.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param profile_identities_update_request [ProfileIdentitiesUpdateRequest] Request to update identities.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProfileIdentitiesResponse, Integer, Hash)>] ProfileIdentitiesResponse data, response status code and response headers
    def set_profile_identities_with_http_info(profile_id, if_match, authorization, profile_identities_update_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedProfilesApi.set_profile_identities ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling TrustedProfilesApi.set_profile_identities"
      end
      # verify the required parameter 'if_match' is set
      if @api_client.config.client_side_validation && if_match.nil?
        fail ArgumentError, "Missing the required parameter 'if_match' when calling TrustedProfilesApi.set_profile_identities"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrustedProfilesApi.set_profile_identities"
      end
      # verify the required parameter 'profile_identities_update_request' is set
      if @api_client.config.client_side_validation && profile_identities_update_request.nil?
        fail ArgumentError, "Missing the required parameter 'profile_identities_update_request' when calling TrustedProfilesApi.set_profile_identities"
      end
      # resource path
      local_var_path = '/v1/profiles/{profile-id}/identities'.sub('{profile-id}', CGI.escape(profile_id.to_s))

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
      header_params[:'If-Match'] = if_match
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(profile_identities_update_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ProfileIdentitiesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TrustedProfilesApi.set_profile_identities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedProfilesApi#set_profile_identities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a specific identity that can assume the trusted profile
    # Add a specific identity that can assume the trusted profile.   **Note:** This API will update the trusted profile itself,  thus calling it repeatedly for the same profile can lead to  conflicts responded with HTTP code 409. Make sure to call this  API only once in a few seconds for the same trusted profile. 
    # @param profile_id [String] ID of the trusted profile
    # @param identity_type [String] Type of the identity
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param profile_identity_request [ProfileIdentityRequest] Request to update identities.
    # @param [Hash] opts the optional parameters
    # @return [ProfileIdentityResponse]
    def set_profile_identity(profile_id, identity_type, authorization, profile_identity_request, opts = {})
      data, _status_code, _headers = set_profile_identity_with_http_info(profile_id, identity_type, authorization, profile_identity_request, opts)
      data
    end

    # Add a specific identity that can assume the trusted profile
    # Add a specific identity that can assume the trusted profile.   **Note:** This API will update the trusted profile itself,  thus calling it repeatedly for the same profile can lead to  conflicts responded with HTTP code 409. Make sure to call this  API only once in a few seconds for the same trusted profile. 
    # @param profile_id [String] ID of the trusted profile
    # @param identity_type [String] Type of the identity
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param profile_identity_request [ProfileIdentityRequest] Request to update identities.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProfileIdentityResponse, Integer, Hash)>] ProfileIdentityResponse data, response status code and response headers
    def set_profile_identity_with_http_info(profile_id, identity_type, authorization, profile_identity_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedProfilesApi.set_profile_identity ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling TrustedProfilesApi.set_profile_identity"
      end
      # verify the required parameter 'identity_type' is set
      if @api_client.config.client_side_validation && identity_type.nil?
        fail ArgumentError, "Missing the required parameter 'identity_type' when calling TrustedProfilesApi.set_profile_identity"
      end
      # verify enum value
      allowable_values = ["user", "serviceid", "crn"]
      if @api_client.config.client_side_validation && !allowable_values.include?(identity_type)
        fail ArgumentError, "invalid value for \"identity_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrustedProfilesApi.set_profile_identity"
      end
      # verify the required parameter 'profile_identity_request' is set
      if @api_client.config.client_side_validation && profile_identity_request.nil?
        fail ArgumentError, "Missing the required parameter 'profile_identity_request' when calling TrustedProfilesApi.set_profile_identity"
      end
      # resource path
      local_var_path = '/v1/profiles/{profile-id}/identities/{identity-type}'.sub('{profile-id}', CGI.escape(profile_id.to_s)).sub('{identity-type}', CGI.escape(identity_type.to_s))

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
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(profile_identity_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ProfileIdentityResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TrustedProfilesApi.set_profile_identity",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedProfilesApi#set_profile_identity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update claim rule for a trusted profile
    # Update a specific claim rule for a given trusted profile ID and rule ID.
    # @param profile_id [String] ID of the trusted profile.
    # @param rule_id [String] ID of the claim rule to update.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param if_match [String] Version of the claim rule to be updated. Specify the version that you retrived when reading list of claim rules. This value helps to identify any parallel usage of claim rule. Pass * to indicate to update any version available. This might result in stale updates. 
    # @param profile_claim_rule_request [ProfileClaimRuleRequest] Request to update a claim rule.
    # @param [Hash] opts the optional parameters
    # @return [ProfileClaimRule]
    def update_claim_rule(profile_id, rule_id, authorization, if_match, profile_claim_rule_request, opts = {})
      data, _status_code, _headers = update_claim_rule_with_http_info(profile_id, rule_id, authorization, if_match, profile_claim_rule_request, opts)
      data
    end

    # Update claim rule for a trusted profile
    # Update a specific claim rule for a given trusted profile ID and rule ID.
    # @param profile_id [String] ID of the trusted profile.
    # @param rule_id [String] ID of the claim rule to update.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param if_match [String] Version of the claim rule to be updated. Specify the version that you retrived when reading list of claim rules. This value helps to identify any parallel usage of claim rule. Pass * to indicate to update any version available. This might result in stale updates. 
    # @param profile_claim_rule_request [ProfileClaimRuleRequest] Request to update a claim rule.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProfileClaimRule, Integer, Hash)>] ProfileClaimRule data, response status code and response headers
    def update_claim_rule_with_http_info(profile_id, rule_id, authorization, if_match, profile_claim_rule_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedProfilesApi.update_claim_rule ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling TrustedProfilesApi.update_claim_rule"
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling TrustedProfilesApi.update_claim_rule"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrustedProfilesApi.update_claim_rule"
      end
      # verify the required parameter 'if_match' is set
      if @api_client.config.client_side_validation && if_match.nil?
        fail ArgumentError, "Missing the required parameter 'if_match' when calling TrustedProfilesApi.update_claim_rule"
      end
      # verify the required parameter 'profile_claim_rule_request' is set
      if @api_client.config.client_side_validation && profile_claim_rule_request.nil?
        fail ArgumentError, "Missing the required parameter 'profile_claim_rule_request' when calling TrustedProfilesApi.update_claim_rule"
      end
      # resource path
      local_var_path = '/v1/profiles/{profile-id}/rules/{rule-id}'.sub('{profile-id}', CGI.escape(profile_id.to_s)).sub('{rule-id}', CGI.escape(rule_id.to_s))

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
      header_params[:'Authorization'] = authorization
      header_params[:'If-Match'] = if_match

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(profile_claim_rule_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ProfileClaimRule'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TrustedProfilesApi.update_claim_rule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedProfilesApi#update_claim_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a trusted profile
    # Update the name or description of an existing trusted profile.
    # @param profile_id [String] ID of the trusted profile to be updated.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param if_match [String] Version of the trusted profile to be updated. Specify the version that you retrived when reading list of trusted profiles. This value helps to identify any parallel usage of trusted profile. Pass * to indicate to update any version available. This might result in stale updates. 
    # @param update_trusted_profile_request [UpdateTrustedProfileRequest] Request to update a trusted profile.
    # @param [Hash] opts the optional parameters
    # @return [TrustedProfile]
    def update_profile(profile_id, authorization, if_match, update_trusted_profile_request, opts = {})
      data, _status_code, _headers = update_profile_with_http_info(profile_id, authorization, if_match, update_trusted_profile_request, opts)
      data
    end

    # Update a trusted profile
    # Update the name or description of an existing trusted profile.
    # @param profile_id [String] ID of the trusted profile to be updated.
    # @param authorization [String] Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request.
    # @param if_match [String] Version of the trusted profile to be updated. Specify the version that you retrived when reading list of trusted profiles. This value helps to identify any parallel usage of trusted profile. Pass * to indicate to update any version available. This might result in stale updates. 
    # @param update_trusted_profile_request [UpdateTrustedProfileRequest] Request to update a trusted profile.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TrustedProfile, Integer, Hash)>] TrustedProfile data, response status code and response headers
    def update_profile_with_http_info(profile_id, authorization, if_match, update_trusted_profile_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedProfilesApi.update_profile ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling TrustedProfilesApi.update_profile"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrustedProfilesApi.update_profile"
      end
      # verify the required parameter 'if_match' is set
      if @api_client.config.client_side_validation && if_match.nil?
        fail ArgumentError, "Missing the required parameter 'if_match' when calling TrustedProfilesApi.update_profile"
      end
      # verify the required parameter 'update_trusted_profile_request' is set
      if @api_client.config.client_side_validation && update_trusted_profile_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_trusted_profile_request' when calling TrustedProfilesApi.update_profile"
      end
      # resource path
      local_var_path = '/v1/profiles/{profile-id}'.sub('{profile-id}', CGI.escape(profile_id.to_s))

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
      header_params[:'Authorization'] = authorization
      header_params[:'If-Match'] = if_match

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_trusted_profile_request)

      # return_type
      return_type = opts[:debug_return_type] || 'TrustedProfile'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TrustedProfilesApi.update_profile",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedProfilesApi#update_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
