=begin
#Global Tagging

### Introduction  You can manage your tags in IBM Cloud by using the Global Tagging API. With this API, you can create, delete, search, attach, or detach tags.   Tags are uniquely identified by a Cloud Resource Naming (CRN) identifier. Tags have a name, which must be unique within a billing account. You can make tags in `key:value` or `label` format.   SDKs for Java, Node, Python, and Go are available to make it easier to programmatically access the API from your code. The client libraries that are provided by the SDKs implement best practices for using the API and reduce the amount of code that you need to write. The tab for each language includes code examples that demonstrate how to use the client libraries. For more information about using the SDKs, see the [IBM Cloud SDK Common project](https://github.com/IBM/ibm-cloud-sdk-common) on GitHub.  Installing the Java SDK  Maven  ```xml <dependency>  <groupId>com.ibm.cloud</groupId>  <artifactId>global-tagging</artifactId>  <version>{version}</version> </dependency> ```  Gradle  ```bash compile 'com.ibm.cloud:global-tagging:{version}' ```  Replace `{version}` in these examples with the release version.  View on GitHub  [https://github.com/IBM/platform-services-java-sdk](https://github.com/IBM/platform-services-java-sdk)  Installing the Node SDK  ```bash npm install @ibm-cloud/platform-services ```  View on GitHub  [https://github.com/IBM/platform-services-node-sdk](https://github.com/IBM/platform-services-node-sdk)  Installing the Python SDK  ```bash pip install --upgrade \"ibm-platform-services\" ```  View on GitHub  [https://github.com/IBM/platform-services-python-sdk](https://github.com/IBM/platform-services-python-sdk)  Installing the Go SDK  Go modules (recommended): Add the following import in your code, and then run `go build` or `go mod tidy`  ```go import (  \"github.com/IBM/platform-services-go-sdk/globaltaggingv1\" ) ```  Go get  ```bash go get -u github.com/IBM/platform-services-go-sdk/globaltaggingv1 ```  View on GitHub  [https://github.com/IBM/platform-services-go-sdk](https://github.com/IBM/platform-services-go-sdk)  ### Types of tags  The Tagging API supports three types of tag: `service`, `user`, and `access`.    - Service tags are intended for services that want to attach a tag to a resource in an exclusive way: nobody else can go and detach it. A service tag is a privileged construct that only authorized services can manage. So, a regular user is not authorized to attach and detach service tags on a resource even if they have access to manage tags on the resource itself.      Service tags are supported only for resources that are onboarded to Global Search and Tagging, which means you cannot attach a service tag to a classic infrastructure (IMS) resource. Each resource can have a maximum of 1000 service tags.  - User tags are added by an authorized user in the account. Any user with the correct access role in an account can list and can delete both service and user tags in the account as long as they are not attached to any resource. Users can delete service tags because the operation is non-disruptive in that the tags aren't attached to any resource.     The Tagging API supports multiple services assigning a tag prefix at service registration time to avoid conflicts. So, a service tag name always has the form `service_prefix:tag_label`. Each resource can have maximum of 1000 user tags.  - Access management tags are used to manage access to resources, and they can be created in advance for use in access policies, which  control access to resources where those tags will be attached. Only the account administrator can create access management tags, and they can delete them only when the tags aren't attached to any resources in the account. Only the resource administrator can attach and detach access management tags on the resource itself.       The name of an access management tag must be in the form of a `key:value` pair, where `value` cannot contain the `:` character. Access management tags are supported only for IAM-managed resources, which means you cannot use them to manage access to classic infrastructure (IMS) and Cloud Foundry resources. Each resource can have a maximum of 250 access tags (which is the account limit).  ### Filtering tags  Global Search and Tagging stores the different type of tags attached to a resource within a different attribute of the resource document:    - Service tags are stored within `service_tags` attribute.   - User tags are stored within the `tags` attribute.   - Access management tags are stored within the `access_tags` attribute.    So, you can add filters to those attributes when [searching for resources](https://cloud.ibm.com/docs?tab=api-docs_search).    For example, the following filter matches all resources tagged with the *your_service:your_tag* service tag.    ``` service_tags:\"your_service:your_tag\" ```  The following filter matches all resources that are tagged with any service tag starting with *your_service:*.   ``` service_tags:your_service:* ```  The following filter matches all resources that are tagged with the *my_tag* user tag.    ``` tags: \"my_tag\" ```  Finally, the following filter matches all resources that are tagged with the *env:public* access management tag.  ``` access_tags: \"env:public\" ```  ## Endpoint URLs  The Global Tagging API uses the following public global endpoint URL. When you call the API, add the path for each method to form the complete API endpoint for your requests.  ``` https://tags.global-search-tagging.cloud.ibm.com ```  If you enabled service endpoints in your account, you can send API requests over the IBM Cloud® private network at the following base endpoint URLs. For more information, see [Enabling VRF and service endpoints](https://cloud.ibm.com/docs/account?topic=account-vrf-service-endpoint).  - Private endpoint URL for VPC infrastructure (Dallas, Washington, Sydney, London, Frankfurt, Madrid, San Paulo, Tokyo, Osaka, Toronto, Montreal, Chennai, Mumbai regions): `https://tags.private.global-search-tagging.cloud.ibm.com` - Private endpoint URL for classic infrastructure:    - Dallas `https://tags.private.us-south.global-search-tagging.cloud.ibm.com`    - Washington `https://tags.private.us-east.global-search-tagging.cloud.ibm.com`    - Sydney `https://tags.private.au-syd.global-search-tagging.cloud.ibm.com`    - London `https://tags.private.eu-gb.global-search-tagging.cloud.ibm.com`    - Frankfurt `https://tags.private.eu-de.global-search-tagging.cloud.ibm.com`  Example API request  ``` curl -X POST \"https://tags.global-search-tagging.cloud.ibm.com/v3/tags/attach\" --header \"Accept: application/json\" --header \"Content-Type: application/json\" --header \"Authorization: Bearer {IAM token}\" -d '{\"tag_names\": [\"{tagName}\"], \"resources\": [ { \"resource_id\": \"{resourceCRN}\" } ] }' ```  Replace `{IAM token}`, `{tagName}` and `{resourceCRN}` in this example with the values for your particular API call.  ## Authentication  Authorization to the Global Tagging API is enforced by using an IBM Cloud Identity and Access Management (IAM) access token. The token is used to determine the actions that a user or service ID has access to when they use the API.   Obtaining an IAM token for an authenticated user or service ID is described in the [IAM Identity Services API](https://cloud.ibm.com/apis/iam-identity-token-api) documentation.   To use the API, add a valid IAM token to the HTTP Authorization request header, for example, `--header \"Authorization: Bearer <TOKEN>\"`.  When you use the SDK, configure an IAM authenticator with the IAM API key. The authenticator automatically obtains the IAM access token for the API key and includes it with each request. You can construct an authenticator in either of two ways: - Programmatically by constructing an IAM authenticator instance and supplying your IAM API key  - By defining the API key in external configuration properties and then using the SDK authenticator factory to construct an IAM authenticator that uses the configured IAM API key  In this example of using external configuration properties, an IAM authenticator instance is created with the configured API key, and then the service client is constructed with this authenticator instance and the configured service URL.  For more information, see the Authentication section of the [IBM Cloud SDK Common](https://github.com/IBM/ibm-cloud-sdk-common/blob/main/README.md) documentation.  To call each method, you'll need to be assigned a role that includes the required IAM actions. Each method lists the associated action. For more information about IAM actions and how they map to roles, see [Assigning access to account management services](https://cloud.ibm.com/docs/iam?topic=iam-account-services).  To retrieve your access token:  ```bash curl -X POST \\   \"https://iam.cloud.ibm.com/identity/token\" \\   --header 'Content-Type: application/x-www-form-urlencoded' \\   --header 'Accept: application/json' \\   --data-urlencode 'grant_type=urn:ibm:params:oauth:grant-type:apikey' \\   --data-urlencode 'apikey=<API_KEY>' ```  Replace `<API_KEY>` with your IAM API key.  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export GLOBAL_TAGGING_URL=<SERVICE_URL> export GLOBAL_TAGGING_AUTHTYPE=iam export GLOBAL_TAGGING_APIKEY=<API_KEY> ```  Example of constructing the service client ```go import {     \"github.com/IBM/platform-services-go-sdk/globaltaggingv1\" } ... serviceClientOptions := &globaltaggingv1.GlobalTaggingV1Options{} serviceClient, err := globaltaggingv1.NewGlobalTaggingV1UsingExternalConfig(serviceClientOptions) ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export GLOBAL_TAGGING_URL=<SERVICE_URL> export GLOBAL_TAGGING_AUTHTYPE=iam export GLOBAL_TAGGING_APIKEY=<API_KEY> ```  Example of constructing the service client ```java import com.ibm.cloud.platform_services.global_tagging.v1.GlobalTagging; ... GlobalTagging serviceClient = GlobalTagging.newInstance(); ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export GLOBAL_TAGGING_URL=<SERVICE_URL> export GLOBAL_TAGGING_AUTHTYPE=iam export GLOBAL_TAGGING_APIKEY=<API_KEY> ```  Example of constructing the service client ```javascript const GlobalTaggingV1 = require('@ibm-cloud/platform-services/global-tagging/v1'); ... const serviceClient = GlobalTaggingV1.newInstance({}); ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export GLOBAL_TAGGING_URL=<SERVICE_URL> export GLOBAL_TAGGING_AUTHTYPE=iam export GLOBAL_TAGGING_APIKEY=<API_KEY> ```  Example of constructing the service client ```python from ibm_platform_services import GlobalTaggingV1 ... global_tagging_service = GlobalTaggingV1.new_instance() ```  ## Auditing  You can monitor API activity within your account by using the IBM Cloud Activity Tracker. Whenever an API method is called, an event is generated that you can then track and audit from within Activity Tracker. The specific event type is listed for each individual method.  For more information about how to track tagging activity, see [Auditing events for account management](https://cloud.ibm.com/docs/cloud-logs?topic=cloud-logs-atla).  ## Error handling  The resource manager uses standard HTTP response codes to indicate whether a method completed successfully. A `200` type response always indicates success. A `400` type response is a failure, and a `500` type response is an internal system error.  | HTTP error code | Description | Recovery | |-----------------|-------------|----------| | `200` | Success | The request was successful. | | `400` | Bad Request | The input parameters in the request body are either incomplete or in the wrong format. Be sure to include all required parameters in your request. | | `401` | Unauthorized | You are not authorized to make this request. Log in to IBM Cloud and try again. If this error persists, contact the account owner to check your permissions. | | `404` | Not Found | The requested resource could not be found. | | `409` | Conflict | The entity is already in the requested state. | | `410` | Gone | The resource is valid but has been removed already in a previous call | | `500` | Internal Server Error | *offering_name* is currently unavailable. Your request could not be processed. Wait a few minutes and try again. |  ## Related APIs  After tagging resources, you can search for them by the tag name or resource groups or building even more complex search strings. For more information about advanced search capabilities that use the Lucene query syntax, see the [Global Search API](https://cloud.ibm.com/docs?tab=api-docs_search).

The version of the OpenAPI document: 1.2.0
Contact: michele.crudele@it.ibm.com
Generated by: https://openapi-generator.tech
Generator version: 7.23.0

=end

require 'cgi'

module IbmCloudGlobalTagging
  class TagsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Attach tags
    # Attaches one or more tags to one or more resources. Each resource can have no more than 1000 tags per each 'user' and 'service' type, and no more than 250 'access' tags (which is the account limit). 
    # @param attach_tag_request [AttachTagRequest] Array of tag names and list of resource IDs on which the tags should be attached or a valid Global Search string that dynamically identifies the resources to attach tags to. In that case the query cannot resolve to more than 100 resources, otherwise the entire operation will fail. The caller must have the permission to manage tags on those resources. The operation will fail for the other resources and a specific error is returned in the operation response. For resources that are onboarded to Global Search and Tagging, the resource ID is the CRN; for IMS resources, it is the IMS ID. The maximum number of resource IDs where the tag will be attached is 100. You can specify up to 100 tags to be attached. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_ims_auth_token The infrastructure authentication token, which can be used for attaching an infrastructure tag. It is deprecated in favor of IAM authentication token. 
    # @option opts [String] :creator_iam_id The user on whose behalf the attach operation must be performed (_for administrators only_). 
    # @option opts [String] :created_at The time when the tag creation must be recorded (_for administrators only_). 
    # @option opts [String] :x_request_id An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :x_correlation_id An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :account_id The ID of the billing account of the tagged resource. It is a required parameter if &#x60;tag_type&#x60; is set to &#x60;service&#x60;. Otherwise, it is inferred from the authorization IAM token. 
    # @option opts [String] :tag_type The type of the tag. Supported values are &#x60;user&#x60;, &#x60;service&#x60; and &#x60;access&#x60;. &#x60;service&#x60; and &#x60;access&#x60; are not supported for IMS resources.  (default to 'user')
    # @option opts [Boolean] :replace Flag to request replacement of all attached tags. Set &#x60;true&#x60; if you want to replace all tags attached to the resource with the current ones. Default value is false.  (default to false)
    # @option opts [Boolean] :update Flag to request update of attached tags in the format &#x60;key:value&#x60;. Here&#39;s how it works for each tag in the request body: If the tag to attach is in the format &#x60;key:value&#x60;, the System will atomically detach all existing tags starting with &#x60;key:&#x60; and attach the new &#x60;key:value&#x60; tag. If no such tags exist, a new &#x60;key:value&#x60; tag will be attached. If the tag is not in the &#x60;key:value&#x60; format (e.g., a simple label), the System will attach the label as usual. The update query parameter is available for user and access management tags, but not for service tags.  (default to false)
    # @return [TagResults]
    def attach_tag(attach_tag_request, opts = {})
      data, _status_code, _headers = attach_tag_with_http_info(attach_tag_request, opts)
      data
    end

    # Attach tags
    # Attaches one or more tags to one or more resources. Each resource can have no more than 1000 tags per each &#39;user&#39; and &#39;service&#39; type, and no more than 250 &#39;access&#39; tags (which is the account limit). 
    # @param attach_tag_request [AttachTagRequest] Array of tag names and list of resource IDs on which the tags should be attached or a valid Global Search string that dynamically identifies the resources to attach tags to. In that case the query cannot resolve to more than 100 resources, otherwise the entire operation will fail. The caller must have the permission to manage tags on those resources. The operation will fail for the other resources and a specific error is returned in the operation response. For resources that are onboarded to Global Search and Tagging, the resource ID is the CRN; for IMS resources, it is the IMS ID. The maximum number of resource IDs where the tag will be attached is 100. You can specify up to 100 tags to be attached. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_ims_auth_token The infrastructure authentication token, which can be used for attaching an infrastructure tag. It is deprecated in favor of IAM authentication token. 
    # @option opts [String] :creator_iam_id The user on whose behalf the attach operation must be performed (_for administrators only_). 
    # @option opts [String] :created_at The time when the tag creation must be recorded (_for administrators only_). 
    # @option opts [String] :x_request_id An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :x_correlation_id An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :account_id The ID of the billing account of the tagged resource. It is a required parameter if &#x60;tag_type&#x60; is set to &#x60;service&#x60;. Otherwise, it is inferred from the authorization IAM token. 
    # @option opts [String] :tag_type The type of the tag. Supported values are &#x60;user&#x60;, &#x60;service&#x60; and &#x60;access&#x60;. &#x60;service&#x60; and &#x60;access&#x60; are not supported for IMS resources.  (default to 'user')
    # @option opts [Boolean] :replace Flag to request replacement of all attached tags. Set &#x60;true&#x60; if you want to replace all tags attached to the resource with the current ones. Default value is false.  (default to false)
    # @option opts [Boolean] :update Flag to request update of attached tags in the format &#x60;key:value&#x60;. Here&#39;s how it works for each tag in the request body: If the tag to attach is in the format &#x60;key:value&#x60;, the System will atomically detach all existing tags starting with &#x60;key:&#x60; and attach the new &#x60;key:value&#x60; tag. If no such tags exist, a new &#x60;key:value&#x60; tag will be attached. If the tag is not in the &#x60;key:value&#x60; format (e.g., a simple label), the System will attach the label as usual. The update query parameter is available for user and access management tags, but not for service tags.  (default to false)
    # @return [Array<(TagResults, Integer, Hash)>] TagResults data, response status code and response headers
    def attach_tag_with_http_info(attach_tag_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.attach_tag ...'
      end
      # verify the required parameter 'attach_tag_request' is set
      if @api_client.config.client_side_validation && attach_tag_request.nil?
        fail ArgumentError, "Missing the required parameter 'attach_tag_request' when calling TagsApi.attach_tag"
      end
      pattern = Regexp.new(/^Basic .*$/)
      if @api_client.config.client_side_validation && !opts[:'x_ims_auth_token'].nil? && opts[:'x_ims_auth_token'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"x_ims_auth_token\"]' when calling TagsApi.attach_tag, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/^[a-zA-Z0-9_,-]*$/)
      if @api_client.config.client_side_validation && !opts[:'creator_iam_id'].nil? && opts[:'creator_iam_id'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"creator_iam_id\"]' when calling TagsApi.attach_tag, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/\d{4}-(?:0[1-9]|1[0-2])-(?:0[1-9]|[1-2]\d|3[0-1])T(?:[0-1]\d|2[0-3]):[0-5]\d:[0-5]\d.\d{3}Z|\d{4}-(?:0[1-9]|1[0-2])-(?:0[1-9]|[1-2]\d|3[0-1])T(?:[0-1]\d|2[0-3]):[0-5]\d:[0-5]\dZ/)
      if @api_client.config.client_side_validation && !opts[:'created_at'].nil? && opts[:'created_at'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"created_at\"]' when calling TagsApi.attach_tag, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/.*/)
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"x_request_id\"]' when calling TagsApi.attach_tag, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/.*/)
      if @api_client.config.client_side_validation && !opts[:'x_correlation_id'].nil? && opts[:'x_correlation_id'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"x_correlation_id\"]' when calling TagsApi.attach_tag, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/^[a-fA-F0-9]{32}$/)
      if @api_client.config.client_side_validation && !opts[:'account_id'].nil? && opts[:'account_id'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"account_id\"]' when calling TagsApi.attach_tag, must conform to the pattern #{pattern}."
      end

      allowable_values = ["user", "service", "access"]
      if @api_client.config.client_side_validation && opts[:'tag_type'] && !allowable_values.include?(opts[:'tag_type'])
        fail ArgumentError, "invalid value for \"tag_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v3/tags/attach'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'tag_type'] = opts[:'tag_type'] if !opts[:'tag_type'].nil?
      query_params[:'replace'] = opts[:'replace'] if !opts[:'replace'].nil?
      query_params[:'update'] = opts[:'update'] if !opts[:'update'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'X-IMS-Auth-Token'] = opts[:'x_ims_auth_token'] if !opts[:'x_ims_auth_token'].nil?
      header_params[:'creator-iam-id'] = opts[:'creator_iam_id'] if !opts[:'creator_iam_id'].nil?
      header_params[:'created-at'] = opts[:'created_at'] if !opts[:'created_at'].nil?
      header_params[:'x-request-id'] = opts[:'x_request_id'] if !opts[:'x_request_id'].nil?
      header_params[:'x-correlation-id'] = opts[:'x_correlation_id'] if !opts[:'x_correlation_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(attach_tag_request)

      # return_type
      return_type = opts[:debug_return_type] || 'TagResults'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['IAM']

      new_options = opts.merge(
        :operation => :"TagsApi.attach_tag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#attach_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an access management tag
    # Create an access management tag. To create an `access` tag, you must have the access listed in the [Granting users access to tag resources](https://cloud.ibm.com/docs/account?topic=account-access) documentation. `service` and `user` tags cannot be created upfront. They are created when they are attached for the first time to a resource. 
    # @param create_tag_body [CreateTagBody] An array of access management tags to be created.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :x_correlation_id An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :account_id The ID of the billing account where the tag must be created. 
    # @option opts [String] :tag_type The type of the tags you want to create. The only allowed value is &#x60;access&#x60;.  (default to 'access')
    # @return [CreateTagResults]
    def create_tag(create_tag_body, opts = {})
      data, _status_code, _headers = create_tag_with_http_info(create_tag_body, opts)
      data
    end

    # Create an access management tag
    # Create an access management tag. To create an &#x60;access&#x60; tag, you must have the access listed in the [Granting users access to tag resources](https://cloud.ibm.com/docs/account?topic&#x3D;account-access) documentation. &#x60;service&#x60; and &#x60;user&#x60; tags cannot be created upfront. They are created when they are attached for the first time to a resource. 
    # @param create_tag_body [CreateTagBody] An array of access management tags to be created.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :x_correlation_id An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :account_id The ID of the billing account where the tag must be created. 
    # @option opts [String] :tag_type The type of the tags you want to create. The only allowed value is &#x60;access&#x60;.  (default to 'access')
    # @return [Array<(CreateTagResults, Integer, Hash)>] CreateTagResults data, response status code and response headers
    def create_tag_with_http_info(create_tag_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.create_tag ...'
      end
      # verify the required parameter 'create_tag_body' is set
      if @api_client.config.client_side_validation && create_tag_body.nil?
        fail ArgumentError, "Missing the required parameter 'create_tag_body' when calling TagsApi.create_tag"
      end
      pattern = Regexp.new(/.*/)
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"x_request_id\"]' when calling TagsApi.create_tag, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/.*/)
      if @api_client.config.client_side_validation && !opts[:'x_correlation_id'].nil? && opts[:'x_correlation_id'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"x_correlation_id\"]' when calling TagsApi.create_tag, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/^[a-fA-F0-9]{32}$/)
      if @api_client.config.client_side_validation && !opts[:'account_id'].nil? && opts[:'account_id'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"account_id\"]' when calling TagsApi.create_tag, must conform to the pattern #{pattern}."
      end

      allowable_values = ["access"]
      if @api_client.config.client_side_validation && opts[:'tag_type'] && !allowable_values.include?(opts[:'tag_type'])
        fail ArgumentError, "invalid value for \"tag_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v3/tags'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'tag_type'] = opts[:'tag_type'] if !opts[:'tag_type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'x-request-id'] = opts[:'x_request_id'] if !opts[:'x_request_id'].nil?
      header_params[:'x-correlation-id'] = opts[:'x_correlation_id'] if !opts[:'x_correlation_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_tag_body)

      # return_type
      return_type = opts[:debug_return_type] || 'CreateTagResults'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['IAM']

      new_options = opts.merge(
        :operation => :"TagsApi.create_tag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#create_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an unused tag
    # Delete an existing tag. A tag can be deleted only if it is not attached to any resource. 
    # @param tag_name [String] The name of tag to be deleted.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_ims_auth_token The infrastructure authentication token, which can be used for for deleting an infrastructure tag. It is deprecated in favor of IAM authentication token. 
    # @option opts [String] :x_request_id An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :x_correlation_id An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [Array<String>] :providers Select a provider. Supported values are &#x60;ghost&#x60; and &#x60;ims&#x60;. To delete tags both in Global Search and Tagging and in IMS, use &#x60;ghost,ims&#x60;
    # @option opts [String] :account_id The ID of the billing account to delete the tag for. It is a required parameter if &#x60;tag_type&#x60; is set to &#x60;service&#x60;, otherwise it is inferred from the authorization IAM token. 
    # @option opts [String] :tag_type The type of the tag. Supported values are &#x60;user&#x60;, &#x60;service&#x60; and &#x60;access&#x60;. &#x60;service&#x60; and &#x60;access&#x60; are not supported for IMS resources (&#x60;providers&#x60; parameter set to &#x60;ims&#x60;).  (default to 'user')
    # @return [DeleteTagResults]
    def delete_tag(tag_name, opts = {})
      data, _status_code, _headers = delete_tag_with_http_info(tag_name, opts)
      data
    end

    # Delete an unused tag
    # Delete an existing tag. A tag can be deleted only if it is not attached to any resource. 
    # @param tag_name [String] The name of tag to be deleted.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_ims_auth_token The infrastructure authentication token, which can be used for for deleting an infrastructure tag. It is deprecated in favor of IAM authentication token. 
    # @option opts [String] :x_request_id An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :x_correlation_id An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [Array<String>] :providers Select a provider. Supported values are &#x60;ghost&#x60; and &#x60;ims&#x60;. To delete tags both in Global Search and Tagging and in IMS, use &#x60;ghost,ims&#x60;
    # @option opts [String] :account_id The ID of the billing account to delete the tag for. It is a required parameter if &#x60;tag_type&#x60; is set to &#x60;service&#x60;, otherwise it is inferred from the authorization IAM token. 
    # @option opts [String] :tag_type The type of the tag. Supported values are &#x60;user&#x60;, &#x60;service&#x60; and &#x60;access&#x60;. &#x60;service&#x60; and &#x60;access&#x60; are not supported for IMS resources (&#x60;providers&#x60; parameter set to &#x60;ims&#x60;).  (default to 'user')
    # @return [Array<(DeleteTagResults, Integer, Hash)>] DeleteTagResults data, response status code and response headers
    def delete_tag_with_http_info(tag_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.delete_tag ...'
      end
      # verify the required parameter 'tag_name' is set
      if @api_client.config.client_side_validation && tag_name.nil?
        fail ArgumentError, "Missing the required parameter 'tag_name' when calling TagsApi.delete_tag"
      end
      if @api_client.config.client_side_validation && tag_name.to_s.length > 128
        fail ArgumentError, 'invalid value for "tag_name" when calling TagsApi.delete_tag, the character length must be smaller than or equal to 128.'
      end

      pattern = Regexp.new(/^[\s]*[A-Za-z0-9:_.\-][A-Za-z0-9\s:_.\-]*$/)
      if @api_client.config.client_side_validation && tag_name !~ pattern
        fail ArgumentError, "invalid value for 'tag_name' when calling TagsApi.delete_tag, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/^Basic .*$/)
      if @api_client.config.client_side_validation && !opts[:'x_ims_auth_token'].nil? && opts[:'x_ims_auth_token'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"x_ims_auth_token\"]' when calling TagsApi.delete_tag, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/.*/)
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"x_request_id\"]' when calling TagsApi.delete_tag, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/.*/)
      if @api_client.config.client_side_validation && !opts[:'x_correlation_id'].nil? && opts[:'x_correlation_id'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"x_correlation_id\"]' when calling TagsApi.delete_tag, must conform to the pattern #{pattern}."
      end

      allowable_values = ["ghost", "ims"]
      if @api_client.config.client_side_validation && opts[:'providers'] && !opts[:'providers'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"providers\", must include one of #{allowable_values}"
      end
      pattern = Regexp.new(/^[a-fA-F0-9]{32}$/)
      if @api_client.config.client_side_validation && !opts[:'account_id'].nil? && opts[:'account_id'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"account_id\"]' when calling TagsApi.delete_tag, must conform to the pattern #{pattern}."
      end

      allowable_values = ["user", "service", "access"]
      if @api_client.config.client_side_validation && opts[:'tag_type'] && !allowable_values.include?(opts[:'tag_type'])
        fail ArgumentError, "invalid value for \"tag_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v3/tags/{tag_name}'.sub('{tag_name}', CGI.escape(tag_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'providers'] = @api_client.build_collection_param(opts[:'providers'], :csv) if !opts[:'providers'].nil?
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'tag_type'] = opts[:'tag_type'] if !opts[:'tag_type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'X-IMS-Auth-Token'] = opts[:'x_ims_auth_token'] if !opts[:'x_ims_auth_token'].nil?
      header_params[:'x-request-id'] = opts[:'x_request_id'] if !opts[:'x_request_id'].nil?
      header_params[:'x-correlation-id'] = opts[:'x_correlation_id'] if !opts[:'x_correlation_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DeleteTagResults'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['IAM']

      new_options = opts.merge(
        :operation => :"TagsApi.delete_tag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#delete_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all unused tags
    # Delete the tags that are not attached to any resource. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_ims_auth_token The infrastructure authentication token, which can be used for for deleting the infrastructure tags. It is deprecated in favor of IAM authentication token. 
    # @option opts [String] :x_request_id An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :x_correlation_id An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :providers Select a provider. Supported values are &#x60;ghost&#x60; and &#x60;ims&#x60;. (default to 'ghost')
    # @option opts [String] :account_id The ID of the billing account to delete the tags for. If it is not set, then it is taken from the authorization token. It is a required parameter if &#x60;tag_type&#x60; is set to &#x60;service&#x60;. 
    # @option opts [String] :tag_type The type of the tag. Supported values are &#x60;user&#x60;, &#x60;service&#x60; and &#x60;access&#x60;. &#x60;service&#x60; and &#x60;access&#x60; are not supported for IMS resources (&#x60;providers&#x60; parameter set to &#x60;ims&#x60;).  (default to 'user')
    # @return [DeleteTagsResult]
    def delete_tag_all(opts = {})
      data, _status_code, _headers = delete_tag_all_with_http_info(opts)
      data
    end

    # Delete all unused tags
    # Delete the tags that are not attached to any resource. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_ims_auth_token The infrastructure authentication token, which can be used for for deleting the infrastructure tags. It is deprecated in favor of IAM authentication token. 
    # @option opts [String] :x_request_id An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :x_correlation_id An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :providers Select a provider. Supported values are &#x60;ghost&#x60; and &#x60;ims&#x60;. (default to 'ghost')
    # @option opts [String] :account_id The ID of the billing account to delete the tags for. If it is not set, then it is taken from the authorization token. It is a required parameter if &#x60;tag_type&#x60; is set to &#x60;service&#x60;. 
    # @option opts [String] :tag_type The type of the tag. Supported values are &#x60;user&#x60;, &#x60;service&#x60; and &#x60;access&#x60;. &#x60;service&#x60; and &#x60;access&#x60; are not supported for IMS resources (&#x60;providers&#x60; parameter set to &#x60;ims&#x60;).  (default to 'user')
    # @return [Array<(DeleteTagsResult, Integer, Hash)>] DeleteTagsResult data, response status code and response headers
    def delete_tag_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.delete_tag_all ...'
      end
      pattern = Regexp.new(/^Basic .*$/)
      if @api_client.config.client_side_validation && !opts[:'x_ims_auth_token'].nil? && opts[:'x_ims_auth_token'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"x_ims_auth_token\"]' when calling TagsApi.delete_tag_all, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/.*/)
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"x_request_id\"]' when calling TagsApi.delete_tag_all, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/.*/)
      if @api_client.config.client_side_validation && !opts[:'x_correlation_id'].nil? && opts[:'x_correlation_id'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"x_correlation_id\"]' when calling TagsApi.delete_tag_all, must conform to the pattern #{pattern}."
      end

      allowable_values = ["ghost", "ims"]
      if @api_client.config.client_side_validation && opts[:'providers'] && !allowable_values.include?(opts[:'providers'])
        fail ArgumentError, "invalid value for \"providers\", must be one of #{allowable_values}"
      end
      pattern = Regexp.new(/^[a-fA-F0-9]{32}$/)
      if @api_client.config.client_side_validation && !opts[:'account_id'].nil? && opts[:'account_id'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"account_id\"]' when calling TagsApi.delete_tag_all, must conform to the pattern #{pattern}."
      end

      allowable_values = ["user", "service", "access"]
      if @api_client.config.client_side_validation && opts[:'tag_type'] && !allowable_values.include?(opts[:'tag_type'])
        fail ArgumentError, "invalid value for \"tag_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v3/tags'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'providers'] = opts[:'providers'] if !opts[:'providers'].nil?
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'tag_type'] = opts[:'tag_type'] if !opts[:'tag_type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'X-IMS-Auth-Token'] = opts[:'x_ims_auth_token'] if !opts[:'x_ims_auth_token'].nil?
      header_params[:'x-request-id'] = opts[:'x_request_id'] if !opts[:'x_request_id'].nil?
      header_params[:'x-correlation-id'] = opts[:'x_correlation_id'] if !opts[:'x_correlation_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DeleteTagsResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['IAM']

      new_options = opts.merge(
        :operation => :"TagsApi.delete_tag_all",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#delete_tag_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Detach tags
    # Detaches one or more tags from one or more resources. 
    # @param detach_tag_request [DetachTagRequest] Array of tag names and the list of resources to detach tags from, or a valid Global Search string that dynamically identifies the resources to detach tags from. In that case the query cannot resolve to more than 100 resources, otherwise the entire operation will fail. The caller must have the permission to manage tags on those resources. The operation will fail for the other resources and a specific error is returned in the operation response. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_ims_auth_token The infrastructure authentication token, which can be used for detaching an infrastructure tag. It is deprecated in favor of IAM authentication token. 
    # @option opts [String] :x_request_id An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :x_correlation_id An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :account_id The ID of the billing account of the untagged resource. It is a required parameter if &#x60;tag_type&#x60; is set to &#x60;service&#x60;, otherwise it is inferred from the authorization IAM token. 
    # @option opts [String] :tag_type The type of the tag. Supported values are &#x60;user&#x60;, &#x60;service&#x60; and &#x60;access&#x60;. &#x60;service&#x60; and &#x60;access&#x60; are not supported for IMS resources.  (default to 'user')
    # @return [TagResults]
    def detach_tag(detach_tag_request, opts = {})
      data, _status_code, _headers = detach_tag_with_http_info(detach_tag_request, opts)
      data
    end

    # Detach tags
    # Detaches one or more tags from one or more resources. 
    # @param detach_tag_request [DetachTagRequest] Array of tag names and the list of resources to detach tags from, or a valid Global Search string that dynamically identifies the resources to detach tags from. In that case the query cannot resolve to more than 100 resources, otherwise the entire operation will fail. The caller must have the permission to manage tags on those resources. The operation will fail for the other resources and a specific error is returned in the operation response. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_ims_auth_token The infrastructure authentication token, which can be used for detaching an infrastructure tag. It is deprecated in favor of IAM authentication token. 
    # @option opts [String] :x_request_id An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :x_correlation_id An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :account_id The ID of the billing account of the untagged resource. It is a required parameter if &#x60;tag_type&#x60; is set to &#x60;service&#x60;, otherwise it is inferred from the authorization IAM token. 
    # @option opts [String] :tag_type The type of the tag. Supported values are &#x60;user&#x60;, &#x60;service&#x60; and &#x60;access&#x60;. &#x60;service&#x60; and &#x60;access&#x60; are not supported for IMS resources.  (default to 'user')
    # @return [Array<(TagResults, Integer, Hash)>] TagResults data, response status code and response headers
    def detach_tag_with_http_info(detach_tag_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.detach_tag ...'
      end
      # verify the required parameter 'detach_tag_request' is set
      if @api_client.config.client_side_validation && detach_tag_request.nil?
        fail ArgumentError, "Missing the required parameter 'detach_tag_request' when calling TagsApi.detach_tag"
      end
      pattern = Regexp.new(/^Basic .*$/)
      if @api_client.config.client_side_validation && !opts[:'x_ims_auth_token'].nil? && opts[:'x_ims_auth_token'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"x_ims_auth_token\"]' when calling TagsApi.detach_tag, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/.*/)
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"x_request_id\"]' when calling TagsApi.detach_tag, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/.*/)
      if @api_client.config.client_side_validation && !opts[:'x_correlation_id'].nil? && opts[:'x_correlation_id'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"x_correlation_id\"]' when calling TagsApi.detach_tag, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/^[a-fA-F0-9]{32}$/)
      if @api_client.config.client_side_validation && !opts[:'account_id'].nil? && opts[:'account_id'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"account_id\"]' when calling TagsApi.detach_tag, must conform to the pattern #{pattern}."
      end

      allowable_values = ["user", "service", "access"]
      if @api_client.config.client_side_validation && opts[:'tag_type'] && !allowable_values.include?(opts[:'tag_type'])
        fail ArgumentError, "invalid value for \"tag_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v3/tags/detach'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'tag_type'] = opts[:'tag_type'] if !opts[:'tag_type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'X-IMS-Auth-Token'] = opts[:'x_ims_auth_token'] if !opts[:'x_ims_auth_token'].nil?
      header_params[:'x-request-id'] = opts[:'x_request_id'] if !opts[:'x_request_id'].nil?
      header_params[:'x-correlation-id'] = opts[:'x_correlation_id'] if !opts[:'x_correlation_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(detach_tag_request)

      # return_type
      return_type = opts[:debug_return_type] || 'TagResults'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['IAM']

      new_options = opts.merge(
        :operation => :"TagsApi.detach_tag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#detach_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all tags
    # Lists all tags that are in a billing account. Use the `attached_to` parameter to return the list of tags that are attached to the specified resource. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_ims_auth_token The infrastructure authentication token, which can be used for searching the infrastructure tags. It is deprecated in favor of IAM authentication token. 
    # @option opts [String] :x_request_id An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :x_correlation_id An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :account_id The ID of the billing account to list the tags for. If it is not set, then it is taken from the authorization token. This parameter is required if &#x60;tag_type&#x60; is set to &#x60;service&#x60;. 
    # @option opts [String] :tag_type The type of the tag you want to list. Supported values are &#x60;user&#x60;, &#x60;service&#x60; and &#x60;access&#x60;.  (default to 'user')
    # @option opts [Boolean] :full_data If set to &#x60;true&#x60;, this query returns the provider, &#x60;ghost&#x60;, &#x60;ims&#x60; or &#x60;ghost,ims&#x60;, where the tag exists and the number of attached resources.  (default to false)
    # @option opts [Array<String>] :providers Select a provider. Supported values are &#x60;ghost&#x60; and &#x60;ims&#x60;. To list both Global Search and Tagging tags and infrastructure tags, use &#x60;ghost,ims&#x60;. &#x60;service&#x60; and &#x60;access&#x60; tags can only be attached to resources that are onboarded to Global Search and Tagging, so you should not set this parameter to list them. 
    # @option opts [String] :attached_to If you want to return only the list of tags that are attached to a specified resource, pass the ID of the resource on this parameter. For resources that are onboarded to Global Search and Tagging, the resource ID is the CRN; for IMS resources, it is the IMS ID. When using this parameter, you must specify the appropriate provider (&#x60;ims&#x60; or &#x60;ghost&#x60;). 
    # @option opts [Integer] :offset The offset is the index of the item from which you want to start returning data from.  (default to 0)
    # @option opts [Integer] :limit The number of tags to return. (default to 100)
    # @option opts [Integer] :timeout The timeout in milliseconds, bounds the request to run within the specified time value. It returns the accumulated results until time runs out.  (default to 0)
    # @option opts [String] :order_by_name Order the output by tag name. (default to 'asc')
    # @option opts [Boolean] :attached_only Filter on attached tags. If &#x60;true&#x60;, it returns only tags that are attached to one or more resources. If &#x60;false&#x60;, it returns all tags.  (default to false)
    # @return [TagList]
    def list_tags(opts = {})
      data, _status_code, _headers = list_tags_with_http_info(opts)
      data
    end

    # Get all tags
    # Lists all tags that are in a billing account. Use the &#x60;attached_to&#x60; parameter to return the list of tags that are attached to the specified resource. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_ims_auth_token The infrastructure authentication token, which can be used for searching the infrastructure tags. It is deprecated in favor of IAM authentication token. 
    # @option opts [String] :x_request_id An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :x_correlation_id An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
    # @option opts [String] :account_id The ID of the billing account to list the tags for. If it is not set, then it is taken from the authorization token. This parameter is required if &#x60;tag_type&#x60; is set to &#x60;service&#x60;. 
    # @option opts [String] :tag_type The type of the tag you want to list. Supported values are &#x60;user&#x60;, &#x60;service&#x60; and &#x60;access&#x60;.  (default to 'user')
    # @option opts [Boolean] :full_data If set to &#x60;true&#x60;, this query returns the provider, &#x60;ghost&#x60;, &#x60;ims&#x60; or &#x60;ghost,ims&#x60;, where the tag exists and the number of attached resources.  (default to false)
    # @option opts [Array<String>] :providers Select a provider. Supported values are &#x60;ghost&#x60; and &#x60;ims&#x60;. To list both Global Search and Tagging tags and infrastructure tags, use &#x60;ghost,ims&#x60;. &#x60;service&#x60; and &#x60;access&#x60; tags can only be attached to resources that are onboarded to Global Search and Tagging, so you should not set this parameter to list them. 
    # @option opts [String] :attached_to If you want to return only the list of tags that are attached to a specified resource, pass the ID of the resource on this parameter. For resources that are onboarded to Global Search and Tagging, the resource ID is the CRN; for IMS resources, it is the IMS ID. When using this parameter, you must specify the appropriate provider (&#x60;ims&#x60; or &#x60;ghost&#x60;). 
    # @option opts [Integer] :offset The offset is the index of the item from which you want to start returning data from.  (default to 0)
    # @option opts [Integer] :limit The number of tags to return. (default to 100)
    # @option opts [Integer] :timeout The timeout in milliseconds, bounds the request to run within the specified time value. It returns the accumulated results until time runs out.  (default to 0)
    # @option opts [String] :order_by_name Order the output by tag name. (default to 'asc')
    # @option opts [Boolean] :attached_only Filter on attached tags. If &#x60;true&#x60;, it returns only tags that are attached to one or more resources. If &#x60;false&#x60;, it returns all tags.  (default to false)
    # @return [Array<(TagList, Integer, Hash)>] TagList data, response status code and response headers
    def list_tags_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.list_tags ...'
      end
      pattern = Regexp.new(/^Basic .*$/)
      if @api_client.config.client_side_validation && !opts[:'x_ims_auth_token'].nil? && opts[:'x_ims_auth_token'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"x_ims_auth_token\"]' when calling TagsApi.list_tags, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/.*/)
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"x_request_id\"]' when calling TagsApi.list_tags, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/.*/)
      if @api_client.config.client_side_validation && !opts[:'x_correlation_id'].nil? && opts[:'x_correlation_id'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"x_correlation_id\"]' when calling TagsApi.list_tags, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/^[a-fA-F0-9]{32}$/)
      if @api_client.config.client_side_validation && !opts[:'account_id'].nil? && opts[:'account_id'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"account_id\"]' when calling TagsApi.list_tags, must conform to the pattern #{pattern}."
      end

      allowable_values = ["user", "service", "access"]
      if @api_client.config.client_side_validation && opts[:'tag_type'] && !allowable_values.include?(opts[:'tag_type'])
        fail ArgumentError, "invalid value for \"tag_type\", must be one of #{allowable_values}"
      end
      allowable_values = ["ghost", "ims"]
      if @api_client.config.client_side_validation && opts[:'providers'] && !opts[:'providers'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"providers\", must include one of #{allowable_values}"
      end
      pattern = Regexp.new(/^(crn:v1(:[^:]*){7}:.*|[a-zA-Z0-9_\-\.]+)$/)
      if @api_client.config.client_side_validation && !opts[:'attached_to'].nil? && opts[:'attached_to'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"attached_to\"]' when calling TagsApi.list_tags, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling TagsApi.list_tags, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TagsApi.list_tags, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TagsApi.list_tags, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'timeout'].nil? && opts[:'timeout'] > 600000
        fail ArgumentError, 'invalid value for "opts[:"timeout"]" when calling TagsApi.list_tags, must be smaller than or equal to 600000.'
      end

      if @api_client.config.client_side_validation && !opts[:'timeout'].nil? && opts[:'timeout'] < 0
        fail ArgumentError, 'invalid value for "opts[:"timeout"]" when calling TagsApi.list_tags, must be greater than or equal to 0.'
      end

      allowable_values = ["asc", "desc"]
      if @api_client.config.client_side_validation && opts[:'order_by_name'] && !allowable_values.include?(opts[:'order_by_name'])
        fail ArgumentError, "invalid value for \"order_by_name\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v3/tags'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'tag_type'] = opts[:'tag_type'] if !opts[:'tag_type'].nil?
      query_params[:'full_data'] = opts[:'full_data'] if !opts[:'full_data'].nil?
      query_params[:'providers'] = @api_client.build_collection_param(opts[:'providers'], :csv) if !opts[:'providers'].nil?
      query_params[:'attached_to'] = opts[:'attached_to'] if !opts[:'attached_to'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'timeout'] = opts[:'timeout'] if !opts[:'timeout'].nil?
      query_params[:'order_by_name'] = opts[:'order_by_name'] if !opts[:'order_by_name'].nil?
      query_params[:'attached_only'] = opts[:'attached_only'] if !opts[:'attached_only'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'X-IMS-Auth-Token'] = opts[:'x_ims_auth_token'] if !opts[:'x_ims_auth_token'].nil?
      header_params[:'x-request-id'] = opts[:'x_request_id'] if !opts[:'x_request_id'].nil?
      header_params[:'x-correlation-id'] = opts[:'x_correlation_id'] if !opts[:'x_correlation_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TagList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['IAM']

      new_options = opts.merge(
        :operation => :"TagsApi.list_tags",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#list_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
