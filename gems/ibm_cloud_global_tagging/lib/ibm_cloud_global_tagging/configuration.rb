=begin
#Global Tagging

### Introduction  You can manage your tags in IBM Cloud by using the Global Tagging API. With this API, you can create, delete, search, attach, or detach tags.   Tags are uniquely identified by a Cloud Resource Naming (CRN) identifier. Tags have a name, which must be unique within a billing account. You can make tags in `key:value` or `label` format.   SDKs for Java, Node, Python, and Go are available to make it easier to programmatically access the API from your code. The client libraries that are provided by the SDKs implement best practices for using the API and reduce the amount of code that you need to write. The tab for each language includes code examples that demonstrate how to use the client libraries. For more information about using the SDKs, see the [IBM Cloud SDK Common project](https://github.com/IBM/ibm-cloud-sdk-common) on GitHub.  Installing the Java SDK  Maven  ```xml <dependency>  <groupId>com.ibm.cloud</groupId>  <artifactId>global-tagging</artifactId>  <version>{version}</version> </dependency> ```  Gradle  ```bash compile 'com.ibm.cloud:global-tagging:{version}' ```  Replace `{version}` in these examples with the release version.  View on GitHub  [https://github.com/IBM/platform-services-java-sdk](https://github.com/IBM/platform-services-java-sdk)  Installing the Node SDK  ```bash npm install @ibm-cloud/platform-services ```  View on GitHub  [https://github.com/IBM/platform-services-node-sdk](https://github.com/IBM/platform-services-node-sdk)  Installing the Python SDK  ```bash pip install --upgrade \"ibm-platform-services\" ```  View on GitHub  [https://github.com/IBM/platform-services-python-sdk](https://github.com/IBM/platform-services-python-sdk)  Installing the Go SDK  Go modules (recommended): Add the following import in your code, and then run `go build` or `go mod tidy`  ```go import (  \"github.com/IBM/platform-services-go-sdk/globaltaggingv1\" ) ```  Go get  ```bash go get -u github.com/IBM/platform-services-go-sdk/globaltaggingv1 ```  View on GitHub  [https://github.com/IBM/platform-services-go-sdk](https://github.com/IBM/platform-services-go-sdk)  ### Types of tags  The Tagging API supports three types of tag: `service`, `user`, and `access`.    - Service tags are intended for services that want to attach a tag to a resource in an exclusive way: nobody else can go and detach it. A service tag is a privileged construct that only authorized services can manage. So, a regular user is not authorized to attach and detach service tags on a resource even if they have access to manage tags on the resource itself.      Service tags are supported only for resources that are onboarded to Global Search and Tagging, which means you cannot attach a service tag to a classic infrastructure (IMS) resource. Each resource can have a maximum of 1000 service tags.  - User tags are added by an authorized user in the account. Any user with the correct access role in an account can list and can delete both service and user tags in the account as long as they are not attached to any resource. Users can delete service tags because the operation is non-disruptive in that the tags aren't attached to any resource.     The Tagging API supports multiple services assigning a tag prefix at service registration time to avoid conflicts. So, a service tag name always has the form `service_prefix:tag_label`. Each resource can have maximum of 1000 user tags.  - Access management tags are used to manage access to resources, and they can be created in advance for use in access policies, which  control access to resources where those tags will be attached. Only the account administrator can create access management tags, and they can delete them only when the tags aren't attached to any resources in the account. Only the resource administrator can attach and detach access management tags on the resource itself.       The name of an access management tag must be in the form of a `key:value` pair, where `value` cannot contain the `:` character. Access management tags are supported only for IAM-managed resources, which means you cannot use them to manage access to classic infrastructure (IMS) and Cloud Foundry resources. Each resource can have a maximum of 250 access tags (which is the account limit).  ### Filtering tags  Global Search and Tagging stores the different type of tags attached to a resource within a different attribute of the resource document:    - Service tags are stored within `service_tags` attribute.   - User tags are stored within the `tags` attribute.   - Access management tags are stored within the `access_tags` attribute.    So, you can add filters to those attributes when [searching for resources](https://cloud.ibm.com/apidocs/search).    For example, the following filter matches all resources tagged with the *your_service:your_tag* service tag.    ``` service_tags:\"your_service:your_tag\" ```  The following filter matches all resources that are tagged with any service tag starting with *your_service:*.   ``` service_tags:your_service:* ```  The following filter matches all resources that are tagged with the *my_tag* user tag.    ``` tags: \"my_tag\" ```  Finally, the following filter matches all resources that are tagged with the *env:public* access management tag.  ``` access_tags: \"env:public\" ```  ## Endpoint URLs  The Global Tagging API uses the following public global endpoint URL. When you call the API, add the path for each method to form the complete API endpoint for your requests.  ``` https://tags.global-search-tagging.cloud.ibm.com ```  If you enabled service endpoints in your account, you can send API requests over the IBM Cloud® private network at the following base endpoint URLs. For more information, see [Enabling VRF and service endpoints](https://cloud.ibm.com/docs/account?topic=account-vrf-service-endpoint).  - Private endpoint URL for VPC infrastructure (Dallas, Washington, Sydney, London, Frankfurt, Madrid, San Paulo, Tokyo, Osaka, Toronto, Montreal, Chennai, Mumbai regions): `https://tags.private.global-search-tagging.cloud.ibm.com` - Private endpoint URL for classic infrastructure:    - Dallas `https://tags.private.us-south.global-search-tagging.cloud.ibm.com`    - Washington `https://tags.private.us-east.global-search-tagging.cloud.ibm.com`    - Sydney `https://tags.private.au-syd.global-search-tagging.cloud.ibm.com`    - London `https://tags.private.eu-gb.global-search-tagging.cloud.ibm.com`    - Frankfurt `https://tags.private.eu-de.global-search-tagging.cloud.ibm.com`  Example API request  ``` curl -X POST \"https://tags.global-search-tagging.cloud.ibm.com/v3/tags/attach\" --header \"Accept: application/json\" --header \"Content-Type: application/json\" --header \"Authorization: Bearer {IAM token}\" -d '{\"tag_names\": [\"{tagName}\"], \"resources\": [ { \"resource_id\": \"{resourceCRN}\" } ] }' ```  Replace `{IAM token}`, `{tagName}` and `{resourceCRN}` in this example with the values for your particular API call.  ## Authentication  Authorization to the Global Tagging API is enforced by using an IBM Cloud Identity and Access Management (IAM) access token. The token is used to determine the actions that a user or service ID has access to when they use the API.   Obtaining an IAM token for an authenticated user or service ID is described in the [IAM Identity Services API](https://cloud.ibm.com/apidocs/iam-identity-token-api) documentation.   To use the API, add a valid IAM token to the HTTP Authorization request header, for example, `--header \"Authorization: Bearer <TOKEN>\"`.  When you use the SDK, configure an IAM authenticator with the IAM API key. The authenticator automatically obtains the IAM access token for the API key and includes it with each request. You can construct an authenticator in either of two ways: - Programmatically by constructing an IAM authenticator instance and supplying your IAM API key  - By defining the API key in external configuration properties and then using the SDK authenticator factory to construct an IAM authenticator that uses the configured IAM API key  In this example of using external configuration properties, an IAM authenticator instance is created with the configured API key, and then the service client is constructed with this authenticator instance and the configured service URL.  For more information, see the Authentication section of the [IBM Cloud SDK Common](https://github.com/IBM/ibm-cloud-sdk-common/blob/main/README.md) documentation.  To call each method, you'll need to be assigned a role that includes the required IAM actions. Each method lists the associated action. For more information about IAM actions and how they map to roles, see [Assigning access to account management services](https://cloud.ibm.com/docs/account?topic=account-account-services).  To retrieve your access token:  ```bash curl -X POST \\   \"https://iam.cloud.ibm.com/identity/token\" \\   --header 'Content-Type: application/x-www-form-urlencoded' \\   --header 'Accept: application/json' \\   --data-urlencode 'grant_type=urn:ibm:params:oauth:grant-type:apikey' \\   --data-urlencode 'apikey=<API_KEY>' ```  Replace `<API_KEY>` with your IAM API key.  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export GLOBAL_TAGGING_URL=<SERVICE_URL> export GLOBAL_TAGGING_AUTHTYPE=iam export GLOBAL_TAGGING_APIKEY=<API_KEY> ```  Example of constructing the service client ```go import {     \"github.com/IBM/platform-services-go-sdk/globaltaggingv1\" } ... serviceClientOptions := &globaltaggingv1.GlobalTaggingV1Options{} serviceClient, err := globaltaggingv1.NewGlobalTaggingV1UsingExternalConfig(serviceClientOptions) ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export GLOBAL_TAGGING_URL=<SERVICE_URL> export GLOBAL_TAGGING_AUTHTYPE=iam export GLOBAL_TAGGING_APIKEY=<API_KEY> ```  Example of constructing the service client ```java import com.ibm.cloud.platform_services.global_tagging.v1.GlobalTagging; ... GlobalTagging serviceClient = GlobalTagging.newInstance(); ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export GLOBAL_TAGGING_URL=<SERVICE_URL> export GLOBAL_TAGGING_AUTHTYPE=iam export GLOBAL_TAGGING_APIKEY=<API_KEY> ```  Example of constructing the service client ```javascript const GlobalTaggingV1 = require('@ibm-cloud/platform-services/global-tagging/v1'); ... const serviceClient = GlobalTaggingV1.newInstance({}); ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export GLOBAL_TAGGING_URL=<SERVICE_URL> export GLOBAL_TAGGING_AUTHTYPE=iam export GLOBAL_TAGGING_APIKEY=<API_KEY> ```  Example of constructing the service client ```python from ibm_platform_services import GlobalTaggingV1 ... global_tagging_service = GlobalTaggingV1.new_instance() ```  ## Auditing  You can monitor API activity within your account by using the IBM Cloud Activity Tracker. Whenever an API method is called, an event is generated that you can then track and audit from within Activity Tracker. The specific event type is listed for each individual method.  For more information about how to track tagging activity, see [Auditing events for account management](https://cloud.ibm.com/docs/activity-tracker?topic=activity-tracker-at_events_acc_mgt).  ## Error handling  The resource manager uses standard HTTP response codes to indicate whether a method completed successfully. A `200` type response always indicates success. A `400` type response is a failure, and a `500` type response is an internal system error.  | HTTP error code | Description | Recovery | |-----------------|-------------|----------| | `200` | Success | The request was successful. | | `400` | Bad Request | The input parameters in the request body are either incomplete or in the wrong format. Be sure to include all required parameters in your request. | | `401` | Unauthorized | You are not authorized to make this request. Log in to IBM Cloud and try again. If this error persists, contact the account owner to check your permissions. | | `404` | Not Found | The requested resource could not be found. | | `409` | Conflict | The entity is already in the requested state. | | `410` | Gone | The resource is valid but has been removed already in a previous call | | `500` | Internal Server Error | *offering_name* is currently unavailable. Your request could not be processed. Wait a few minutes and try again. |  ## Related APIs  After tagging resources, you can search for them by the tag name or resource groups or building even more complex search strings. For more information about advanced search capabilities that use the Lucene query syntax, see the [Global Search API](https://cloud.ibm.com/apidocs/search).

The version of the OpenAPI document: 1.2.0
Contact: michele.crudele@it.ibm.com
Generated by: https://openapi-generator.tech
Generator version: 7.23.0

=end

module IbmCloudGlobalTagging
  class Configuration
    # Defines url scheme
    attr_accessor :scheme

    # Defines url host
    attr_accessor :host

    # Defines url base path
    attr_accessor :base_path

    # Define server configuration index
    attr_accessor :server_index

    # Define server operation configuration index
    attr_accessor :server_operation_index

    # Default server variables
    attr_accessor :server_variables

    # Default server operation variables
    attr_accessor :server_operation_variables

    # Defines API keys used with API Key authentications.
    #
    # @return [Hash] key: parameter name, value: parameter value (API key)
    #
    # @example parameter name is "api_key", API key is "xxx" (e.g. "api_key=xxx" in query string)
    #   config.api_key['api_key'] = 'xxx'
    attr_accessor :api_key

    # Defines API key prefixes used with API Key authentications.
    #
    # @return [Hash] key: parameter name, value: API key prefix
    #
    # @example parameter name is "Authorization", API key prefix is "Token" (e.g. "Authorization: Token xxx" in headers)
    #   config.api_key_prefix['api_key'] = 'Token'
    attr_accessor :api_key_prefix

    # Defines the username used with HTTP basic authentication.
    #
    # @return [String]
    attr_accessor :username

    # Defines the password used with HTTP basic authentication.
    #
    # @return [String]
    attr_accessor :password

    # Defines the access token (Bearer) used with OAuth2.
    attr_accessor :access_token

    # Defines a Proc used to fetch or refresh access tokens (Bearer) used with OAuth2.
    # Overrides the access_token if set
    # @return [Proc]
    attr_accessor :access_token_getter

    # Set this to return data as binary instead of downloading a temp file. When enabled (set to true)
    # HTTP responses with return type `File` will be returned as a stream of binary data.
    # Default to false.
    attr_accessor :return_binary_data

    # Set this to enable/disable debugging. When enabled (set to true), HTTP request/response
    # details will be logged with `logger.debug` (see the `logger` attribute).
    # Default to false.
    #
    # @return [true, false]
    attr_accessor :debugging

    # Set this to ignore operation servers for the API client. This is useful when you need to
    # send requests to a different server than the one specified in the OpenAPI document.
    # Will default to the base url defined in the spec but can be overridden by setting
    # `scheme`, `host`, `base_path` directly.
    # Default to false.
    # @return [true, false]
    attr_accessor :ignore_operation_servers

    # Defines the logger used for debugging.
    # Default to `Rails.logger` (when in Rails) or logging to STDOUT.
    #
    # @return [#debug]
    attr_accessor :logger

    # Defines the temporary folder to store downloaded files
    # (for API endpoints that have file response).
    # Default to use `Tempfile`.
    #
    # @return [String]
    attr_accessor :temp_folder_path

    # The time limit for HTTP request in seconds.
    # Default to 0 (never times out).
    attr_accessor :timeout

    # Set this to false to skip client side validation in the operation.
    # Default to true.
    # @return [true, false]
    attr_accessor :client_side_validation

    ### TLS/SSL setting
    # Set this to false to skip verifying SSL certificate when calling API from https server.
    # Default to true.
    #
    # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
    #
    # @return [true, false]
    attr_accessor :verify_ssl

    ### TLS/SSL setting
    # Set this to false to skip verifying SSL host name
    # Default to true.
    #
    # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
    #
    # @return [true, false]
    attr_accessor :verify_ssl_host

    ### TLS/SSL setting
    # Set this to customize the certificate file to verify the peer.
    #
    # @return [String] the path to the certificate file
    #
    # @see The `cainfo` option of Typhoeus, `--cert` option of libcurl. Related source code:
    # https://github.com/typhoeus/typhoeus/blob/master/lib/typhoeus/easy_factory.rb#L145
    attr_accessor :ssl_ca_cert

    ### TLS/SSL setting
    # Client certificate file (for client certificate)
    attr_accessor :cert_file

    ### TLS/SSL setting
    # Client private key file (for client certificate)
    attr_accessor :key_file

    # Set this to customize parameters encoding of array parameter with multi collectionFormat.
    # Default to nil.
    #
    # @see The params_encoding option of Ethon. Related source code:
    # https://github.com/typhoeus/ethon/blob/master/lib/ethon/easy/queryable.rb#L96
    attr_accessor :params_encoding


    attr_accessor :inject_format

    attr_accessor :force_ending_format

    def initialize
      @scheme = 'https'
      @host = 'tags.global-search-tagging.cloud.ibm.com'
      @base_path = ''
      @server_index = nil
      @server_operation_index = {}
      @server_variables = {}
      @server_operation_variables = {}
      @api_key = {}
      @api_key_prefix = {}
      @client_side_validation = true
      @verify_ssl = true
      @verify_ssl_host = true
      @cert_file = nil
      @key_file = nil
      @timeout = 0
      @params_encoding = nil
      @debugging = false
      @ignore_operation_servers = false
      @inject_format = false
      @force_ending_format = false
      @logger = defined?(Rails) ? Rails.logger : Logger.new(STDOUT)

      yield(self) if block_given?
    end

    # The default Configuration object.
    def self.default
      @@default ||= Configuration.new
    end

    def configure
      yield(self) if block_given?
    end

    def scheme=(scheme)
      # remove :// from scheme
      @scheme = scheme.sub(/:\/\//, '')
    end

    def host=(host)
      # remove http(s):// and anything after a slash
      @host = host.sub(/https?:\/\//, '').split('/').first
    end

    def base_path=(base_path)
      # Add leading and trailing slashes to base_path
      @base_path = "/#{base_path}".gsub(/\/+/, '/')
      @base_path = '' if @base_path == '/'
    end

    # Returns base URL for specified operation based on server settings
    def base_url(operation = nil)
      return "#{scheme}://#{[host, base_path].join('/').gsub(/\/+/, '/')}".sub(/\/+\z/, '') if ignore_operation_servers
      if operation_server_settings.key?(operation) then
        index = server_operation_index.fetch(operation, server_index)
        server_url(index.nil? ? 0 : index, server_operation_variables.fetch(operation, server_variables), operation_server_settings[operation])
      else
        server_index.nil? ? "#{scheme}://#{[host, base_path].join('/').gsub(/\/+/, '/')}".sub(/\/+\z/, '') : server_url(server_index, server_variables, nil)
      end
    end

    # Gets API key (with prefix if set).
    # @param [String] param_name the parameter name of API key auth
    def api_key_with_prefix(param_name, param_alias = nil)
      key = @api_key[param_name]
      key = @api_key.fetch(param_alias, key) unless param_alias.nil?
      if @api_key_prefix[param_name]
        "#{@api_key_prefix[param_name]} #{key}"
      else
        key
      end
    end

    # Gets access_token using access_token_getter or uses the static access_token
    def access_token_with_refresh
      return access_token if access_token_getter.nil?
      access_token_getter.call
    end

    # Gets Basic Auth token string
    def basic_auth_token
      'Basic ' + ["#{username}:#{password}"].pack('m').delete("\r\n")
    end

    # Returns Auth Settings hash for api client.
    def auth_settings
      {
        'IAM' =>
          {
            type: 'api_key',
            in: 'header',
            key: 'Authorization',
            value: api_key_with_prefix('Authorization')
          },
      }
    end

    # Returns an array of Server setting
    def server_settings
      [
        {
          url: "https://tags.global-search-tagging.cloud.ibm.com",
          description: "No description provided",
        }
      ]
    end

    def operation_server_settings
      {
      }
    end

    # Returns URL based on server settings
    #
    # @param index array index of the server settings
    # @param variables hash of variable and the corresponding value
    def server_url(index, variables = {}, servers = nil)
      servers = server_settings if servers == nil

      # check array index out of bound
      if (index.nil? || index < 0 || index >= servers.size)
        fail ArgumentError, "Invalid index #{index} when selecting the server. Must not be nil and must be less than #{servers.size}"
      end

      server = servers[index]
      url = server[:url]

      return url unless server.key? :variables

      # go through variable and assign a value
      server[:variables].each do |name, variable|
        if variables.key?(name)
          if (!server[:variables][name].key?(:enum_values) || server[:variables][name][:enum_values].include?(variables[name]))
            url.gsub! "{" + name.to_s + "}", variables[name]
          else
            fail ArgumentError, "The variable `#{name}` in the server URL has invalid value #{variables[name]}. Must be #{server[:variables][name][:enum_values]}."
          end
        else
          # use default value
          url.gsub! "{" + name.to_s + "}", server[:variables][name][:default_value]
        end
      end

      url
    end


  end
end
