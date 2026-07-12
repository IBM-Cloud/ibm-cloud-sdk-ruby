=begin
#Global Tagging

### Introduction  You can manage your tags in IBM Cloud by using the Global Tagging API. With this API, you can create, delete, search, attach, or detach tags.   Tags are uniquely identified by a Cloud Resource Naming (CRN) identifier. Tags have a name, which must be unique within a billing account. You can make tags in `key:value` or `label` format.   SDKs for Java, Node, Python, and Go are available to make it easier to programmatically access the API from your code. The client libraries that are provided by the SDKs implement best practices for using the API and reduce the amount of code that you need to write. The tab for each language includes code examples that demonstrate how to use the client libraries. For more information about using the SDKs, see the [IBM Cloud SDK Common project](https://github.com/IBM/ibm-cloud-sdk-common) on GitHub.  Installing the Java SDK  Maven  ```xml <dependency>  <groupId>com.ibm.cloud</groupId>  <artifactId>global-tagging</artifactId>  <version>{version}</version> </dependency> ```  Gradle  ```bash compile 'com.ibm.cloud:global-tagging:{version}' ```  Replace `{version}` in these examples with the release version.  View on GitHub  [https://github.com/IBM/platform-services-java-sdk](https://github.com/IBM/platform-services-java-sdk)  Installing the Node SDK  ```bash npm install @ibm-cloud/platform-services ```  View on GitHub  [https://github.com/IBM/platform-services-node-sdk](https://github.com/IBM/platform-services-node-sdk)  Installing the Python SDK  ```bash pip install --upgrade \"ibm-platform-services\" ```  View on GitHub  [https://github.com/IBM/platform-services-python-sdk](https://github.com/IBM/platform-services-python-sdk)  Installing the Go SDK  Go modules (recommended): Add the following import in your code, and then run `go build` or `go mod tidy`  ```go import (  \"github.com/IBM/platform-services-go-sdk/globaltaggingv1\" ) ```  Go get  ```bash go get -u github.com/IBM/platform-services-go-sdk/globaltaggingv1 ```  View on GitHub  [https://github.com/IBM/platform-services-go-sdk](https://github.com/IBM/platform-services-go-sdk)  ### Types of tags  The Tagging API supports three types of tag: `service`, `user`, and `access`.    - Service tags are intended for services that want to attach a tag to a resource in an exclusive way: nobody else can go and detach it. A service tag is a privileged construct that only authorized services can manage. So, a regular user is not authorized to attach and detach service tags on a resource even if they have access to manage tags on the resource itself.      Service tags are supported only for resources that are onboarded to Global Search and Tagging, which means you cannot attach a service tag to a classic infrastructure (IMS) resource. Each resource can have a maximum of 1000 service tags.  - User tags are added by an authorized user in the account. Any user with the correct access role in an account can list and can delete both service and user tags in the account as long as they are not attached to any resource. Users can delete service tags because the operation is non-disruptive in that the tags aren't attached to any resource.     The Tagging API supports multiple services assigning a tag prefix at service registration time to avoid conflicts. So, a service tag name always has the form `service_prefix:tag_label`. Each resource can have maximum of 1000 user tags.  - Access management tags are used to manage access to resources, and they can be created in advance for use in access policies, which  control access to resources where those tags will be attached. Only the account administrator can create access management tags, and they can delete them only when the tags aren't attached to any resources in the account. Only the resource administrator can attach and detach access management tags on the resource itself.       The name of an access management tag must be in the form of a `key:value` pair, where `value` cannot contain the `:` character. Access management tags are supported only for IAM-managed resources, which means you cannot use them to manage access to classic infrastructure (IMS) and Cloud Foundry resources. Each resource can have a maximum of 250 access tags (which is the account limit).  ### Filtering tags  Global Search and Tagging stores the different type of tags attached to a resource within a different attribute of the resource document:    - Service tags are stored within `service_tags` attribute.   - User tags are stored within the `tags` attribute.   - Access management tags are stored within the `access_tags` attribute.    So, you can add filters to those attributes when [searching for resources](https://cloud.ibm.com/apidocs/search).    For example, the following filter matches all resources tagged with the *your_service:your_tag* service tag.    ``` service_tags:\"your_service:your_tag\" ```  The following filter matches all resources that are tagged with any service tag starting with *your_service:*.   ``` service_tags:your_service:* ```  The following filter matches all resources that are tagged with the *my_tag* user tag.    ``` tags: \"my_tag\" ```  Finally, the following filter matches all resources that are tagged with the *env:public* access management tag.  ``` access_tags: \"env:public\" ```  ## Endpoint URLs  The Global Tagging API uses the following public global endpoint URL. When you call the API, add the path for each method to form the complete API endpoint for your requests.  ``` https://tags.global-search-tagging.cloud.ibm.com ```  If you enabled service endpoints in your account, you can send API requests over the IBM Cloud® private network at the following base endpoint URLs. For more information, see [Enabling VRF and service endpoints](https://cloud.ibm.com/docs/account?topic=account-vrf-service-endpoint).  - Private endpoint URL for VPC infrastructure (Dallas, Washington, Sydney, London, Frankfurt, Madrid, San Paulo, Tokyo, Osaka, Toronto, Montreal, Chennai, Mumbai regions): `https://tags.private.global-search-tagging.cloud.ibm.com` - Private endpoint URL for classic infrastructure:    - Dallas `https://tags.private.us-south.global-search-tagging.cloud.ibm.com`    - Washington `https://tags.private.us-east.global-search-tagging.cloud.ibm.com`    - Sydney `https://tags.private.au-syd.global-search-tagging.cloud.ibm.com`    - London `https://tags.private.eu-gb.global-search-tagging.cloud.ibm.com`    - Frankfurt `https://tags.private.eu-de.global-search-tagging.cloud.ibm.com`  Example API request  ``` curl -X POST \"https://tags.global-search-tagging.cloud.ibm.com/v3/tags/attach\" --header \"Accept: application/json\" --header \"Content-Type: application/json\" --header \"Authorization: Bearer {IAM token}\" -d '{\"tag_names\": [\"{tagName}\"], \"resources\": [ { \"resource_id\": \"{resourceCRN}\" } ] }' ```  Replace `{IAM token}`, `{tagName}` and `{resourceCRN}` in this example with the values for your particular API call.  ## Authentication  Authorization to the Global Tagging API is enforced by using an IBM Cloud Identity and Access Management (IAM) access token. The token is used to determine the actions that a user or service ID has access to when they use the API.   Obtaining an IAM token for an authenticated user or service ID is described in the [IAM Identity Services API](https://cloud.ibm.com/apidocs/iam-identity-token-api) documentation.   To use the API, add a valid IAM token to the HTTP Authorization request header, for example, `--header \"Authorization: Bearer <TOKEN>\"`.  When you use the SDK, configure an IAM authenticator with the IAM API key. The authenticator automatically obtains the IAM access token for the API key and includes it with each request. You can construct an authenticator in either of two ways: - Programmatically by constructing an IAM authenticator instance and supplying your IAM API key  - By defining the API key in external configuration properties and then using the SDK authenticator factory to construct an IAM authenticator that uses the configured IAM API key  In this example of using external configuration properties, an IAM authenticator instance is created with the configured API key, and then the service client is constructed with this authenticator instance and the configured service URL.  For more information, see the Authentication section of the [IBM Cloud SDK Common](https://github.com/IBM/ibm-cloud-sdk-common/blob/main/README.md) documentation.  To call each method, you'll need to be assigned a role that includes the required IAM actions. Each method lists the associated action. For more information about IAM actions and how they map to roles, see [Assigning access to account management services](https://cloud.ibm.com/docs/account?topic=account-account-services).  To retrieve your access token:  ```bash curl -X POST \\   \"https://iam.cloud.ibm.com/identity/token\" \\   --header 'Content-Type: application/x-www-form-urlencoded' \\   --header 'Accept: application/json' \\   --data-urlencode 'grant_type=urn:ibm:params:oauth:grant-type:apikey' \\   --data-urlencode 'apikey=<API_KEY>' ```  Replace `<API_KEY>` with your IAM API key.  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export GLOBAL_TAGGING_URL=<SERVICE_URL> export GLOBAL_TAGGING_AUTHTYPE=iam export GLOBAL_TAGGING_APIKEY=<API_KEY> ```  Example of constructing the service client ```go import {     \"github.com/IBM/platform-services-go-sdk/globaltaggingv1\" } ... serviceClientOptions := &globaltaggingv1.GlobalTaggingV1Options{} serviceClient, err := globaltaggingv1.NewGlobalTaggingV1UsingExternalConfig(serviceClientOptions) ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export GLOBAL_TAGGING_URL=<SERVICE_URL> export GLOBAL_TAGGING_AUTHTYPE=iam export GLOBAL_TAGGING_APIKEY=<API_KEY> ```  Example of constructing the service client ```java import com.ibm.cloud.platform_services.global_tagging.v1.GlobalTagging; ... GlobalTagging serviceClient = GlobalTagging.newInstance(); ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export GLOBAL_TAGGING_URL=<SERVICE_URL> export GLOBAL_TAGGING_AUTHTYPE=iam export GLOBAL_TAGGING_APIKEY=<API_KEY> ```  Example of constructing the service client ```javascript const GlobalTaggingV1 = require('@ibm-cloud/platform-services/global-tagging/v1'); ... const serviceClient = GlobalTaggingV1.newInstance({}); ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export GLOBAL_TAGGING_URL=<SERVICE_URL> export GLOBAL_TAGGING_AUTHTYPE=iam export GLOBAL_TAGGING_APIKEY=<API_KEY> ```  Example of constructing the service client ```python from ibm_platform_services import GlobalTaggingV1 ... global_tagging_service = GlobalTaggingV1.new_instance() ```  ## Auditing  You can monitor API activity within your account by using the IBM Cloud Activity Tracker. Whenever an API method is called, an event is generated that you can then track and audit from within Activity Tracker. The specific event type is listed for each individual method.  For more information about how to track tagging activity, see [Auditing events for account management](https://cloud.ibm.com/docs/activity-tracker?topic=activity-tracker-at_events_acc_mgt).  ## Error handling  The resource manager uses standard HTTP response codes to indicate whether a method completed successfully. A `200` type response always indicates success. A `400` type response is a failure, and a `500` type response is an internal system error.  | HTTP error code | Description | Recovery | |-----------------|-------------|----------| | `200` | Success | The request was successful. | | `400` | Bad Request | The input parameters in the request body are either incomplete or in the wrong format. Be sure to include all required parameters in your request. | | `401` | Unauthorized | You are not authorized to make this request. Log in to IBM Cloud and try again. If this error persists, contact the account owner to check your permissions. | | `404` | Not Found | The requested resource could not be found. | | `409` | Conflict | The entity is already in the requested state. | | `410` | Gone | The resource is valid but has been removed already in a previous call | | `500` | Internal Server Error | *offering_name* is currently unavailable. Your request could not be processed. Wait a few minutes and try again. |  ## Related APIs  After tagging resources, you can search for them by the tag name or resource groups or building even more complex search strings. For more information about advanced search capabilities that use the Lucene query syntax, see the [Global Search API](https://cloud.ibm.com/apidocs/search).

The version of the OpenAPI document: 1.2.0
Contact: michele.crudele@it.ibm.com
Generated by: https://openapi-generator.tech
Generator version: 7.23.0

=end

require 'date'
require 'json'
require 'logger'
require 'tempfile'
require 'time'
require 'typhoeus'


module IbmCloudGlobalTagging
  class ApiClient
    # The Configuration object holding settings to be used in the API client.
    attr_accessor :config

    # Defines the headers to be used in HTTP requests of all API calls by default.
    #
    # @return [Hash]
    attr_accessor :default_headers

    # Initializes the ApiClient
    # @option config [Configuration] Configuration for initializing the object, default to Configuration.default
    def initialize(config = Configuration.default)
      @config = config
      @user_agent = "OpenAPI-Generator/#{VERSION}/ruby"
      @default_headers = {
        'Content-Type' => 'application/json',
        'User-Agent' => @user_agent
      }
    end

    def self.default
      @@default ||= ApiClient.new
    end

    # Call an API with given options.
    #
    # @return [Array<(Object, Integer, Hash)>] an array of 3 elements:
    #   the data deserialized from response body (may be a Tempfile or nil), response status code and response headers.
    def call_api(http_method, path, opts = {})
      request = build_request(http_method, path, opts)
      tempfile = nil
      (download_file(request) { tempfile = _1 }) if opts[:return_type] == 'File'
      response = request.run

      if @config.debugging
        @config.logger.debug "HTTP response body ~BEGIN~\n#{response.body}\n~END~\n"
      end

      unless response.success?
        if response.timed_out?
          fail ApiError.new('Connection timed out')
        elsif response.code == 0
          # Errors from libcurl will be made visible here
          fail ApiError.new(:code => 0,
                            :message => response.return_message)
        else
          fail ApiError.new(:code => response.code,
                            :response_headers => response.headers,
                            :response_body => response.body),
               response.status_message
        end
      end

      if opts[:return_type] == 'File'
        data = tempfile
      elsif opts[:return_type]
        data = deserialize(response, opts[:return_type])
      else
        data = nil
      end
      return data, response.code, response.headers
    end

    # Builds the HTTP request
    #
    # @param [String] http_method HTTP method/verb (e.g. POST)
    # @param [String] path URL path (e.g. /account/new)
    # @option opts [Hash] :header_params Header parameters
    # @option opts [Hash] :query_params Query parameters
    # @option opts [Hash] :form_params Query parameters
    # @option opts [Object] :body HTTP body (JSON/XML)
    # @return [Typhoeus::Request] A Typhoeus Request
    def build_request(http_method, path, opts = {})
      url = build_request_url(path, opts)
      http_method = http_method.to_sym.downcase

      header_params = @default_headers.merge(opts[:header_params] || {})
      query_params = opts[:query_params] || {}
      form_params = opts[:form_params] || {}
      follow_location = opts[:follow_location] || true

      update_params_for_auth! header_params, query_params, opts[:auth_names]

      # set ssl_verifyhosts option based on @config.verify_ssl_host (true/false)
      _verify_ssl_host = @config.verify_ssl_host ? 2 : 0

      req_opts = {
        :method => http_method,
        :headers => header_params,
        :params => query_params,
        :params_encoding => @config.params_encoding,
        :timeout => @config.timeout,
        :ssl_verifypeer => @config.verify_ssl,
        :ssl_verifyhost => _verify_ssl_host,
        :sslcert => @config.cert_file,
        :sslkey => @config.key_file,
        :verbose => @config.debugging,
        :followlocation => follow_location
      }

      # set custom cert, if provided
      req_opts[:cainfo] = @config.ssl_ca_cert if @config.ssl_ca_cert

      if [:post, :patch, :put, :delete].include?(http_method)
        req_body = build_request_body(header_params, form_params, opts[:body])
        req_opts.update :body => req_body
        if @config.debugging
          @config.logger.debug "HTTP request body param ~BEGIN~\n#{req_body}\n~END~\n"
        end
      end

      Typhoeus::Request.new(url, req_opts)
    end

    # Builds the HTTP request body
    #
    # @param [Hash] header_params Header parameters
    # @param [Hash] form_params Query parameters
    # @param [Object] body HTTP body (JSON/XML)
    # @return [String] HTTP body data in the form of string
    def build_request_body(header_params, form_params, body)
      # http form
      if header_params['Content-Type'] == 'application/x-www-form-urlencoded' ||
          header_params['Content-Type'] == 'multipart/form-data'
        data = {}
        form_params.each do |key, value|
          case value
          when ::File, ::Array, nil
            # let typhoeus handle File, Array and nil parameters
            data[key] = value
          else
            data[key] = value.to_s
          end
        end
      elsif body
        data = body.is_a?(String) ? body : body.to_json
      else
        data = nil
      end
      data
    end

    # Save response body into a file in (the defined) temporary folder, using the filename
    # from the "Content-Disposition" header if provided, otherwise a random filename.
    # The response body is written to the file in chunks in order to handle files which
    # size is larger than maximum Ruby String or even larger than the maximum memory a Ruby
    # process can use.
    #
    # @see Configuration#temp_folder_path
    #
    # @return [Tempfile] the tempfile generated
    def download_file(request)
      tempfile = nil
      encoding = nil
      request.on_headers do |response|
        content_disposition = response.headers['Content-Disposition']
        if content_disposition && content_disposition =~ /filename=/i
          filename = content_disposition[/filename=['"]?([^'"\s]+)['"]?/, 1]
          prefix = sanitize_filename(filename)
        else
          prefix = 'download-'
        end
        prefix = prefix + '-' unless prefix.end_with?('-')
        encoding = response.body.encoding
        tempfile = Tempfile.open(prefix, @config.temp_folder_path, encoding: encoding)
      end
      request.on_body do |chunk|
        chunk.force_encoding(encoding)
        tempfile.write(chunk)
      end
      request.on_complete do
        if !tempfile
          fail ApiError.new("Failed to create the tempfile based on the HTTP response from the server: #{request.inspect}")
        end
        tempfile.close
        @config.logger.info "Temp file written to #{tempfile.path}, please copy the file to a proper folder "\
                            "with e.g. `FileUtils.cp(tempfile.path, '/new/file/path')` otherwise the temp file "\
                            "will be deleted automatically with GC. It's also recommended to delete the temp file "\
                            "explicitly with `tempfile.delete`"
        yield tempfile if block_given?
      end
    end

    # Check if the given MIME is a JSON MIME.
    # JSON MIME examples:
    #   application/json
    #   application/json; charset=UTF8
    #   APPLICATION/JSON
    #   */*
    # @param [String] mime MIME
    # @return [Boolean] True if the MIME is application/json
    def json_mime?(mime)
      (mime == '*/*') || !(mime =~ /^Application\/.*json(?!p)(;.*)?/i).nil?
    end

    # Deserialize the response to the given return type.
    #
    # @param [Response] response HTTP response
    # @param [String] return_type some examples: "User", "Array<User>", "Hash<String, Integer>"
    def deserialize(response, return_type)
      body = response.body
      return nil if body.nil? || body.empty?

      # return response body directly for String return type
      return body.to_s if return_type == 'String'

      # ensuring a default content type
      content_type = response.headers['Content-Type'] || 'application/json'

      fail "Content-Type is not supported: #{content_type}" unless json_mime?(content_type)

      begin
        data = JSON.parse("[#{body}]", :symbolize_names => true)[0]
      rescue JSON::ParserError => e
        if %w(String Date Time).include?(return_type)
          data = body
        else
          raise e
        end
      end

      convert_to_type data, return_type
    end

    # Convert data to the given return type.
    # @param [Object] data Data to be converted
    # @param [String] return_type Return type
    # @return [Mixed] Data in a particular type
    def convert_to_type(data, return_type)
      return nil if data.nil?
      case return_type
      when 'String'
        data.to_s
      when 'Integer'
        data.to_i
      when 'Float'
        data.to_f
      when 'Boolean'
        data == true
      when 'Time'
        # parse date time (expecting ISO 8601 format)
        Time.parse data
      when 'Date'
        # parse date time (expecting ISO 8601 format)
        Date.parse data
      when 'Object'
        # generic object (usually a Hash), return directly
        data
      when /\AArray<(.+)>\z/
        # e.g. Array<Pet>
        sub_type = $1
        data.map { |item| convert_to_type(item, sub_type) }
      when /\AHash\<String, (.+)\>\z/
        # e.g. Hash<String, Integer>
        sub_type = $1
        {}.tap do |hash|
          data.each { |k, v| hash[k] = convert_to_type(v, sub_type) }
        end
      else
        # models (e.g. Pet) or oneOf/anyOf
        klass = IbmCloudGlobalTagging.const_get(return_type)
        if klass.respond_to?(:openapi_one_of) || klass.respond_to?(:openapi_any_of)
          klass.build(data)
        else
          klass.build_from_hash(data)
        end
      end
    end

    # Sanitize filename by removing path.
    # e.g. ../../sun.gif becomes sun.gif
    #
    # @param [String] filename the filename to be sanitized
    # @return [String] the sanitized filename
    def sanitize_filename(filename)
      filename.split(/[\/\\]/).last
    end

    def build_request_url(path, opts = {})
      # Add leading and trailing slashes to path
      path = "/#{path}".gsub(/\/+/, '/')
      @config.base_url(opts[:operation]) + path
    end

    # Update header and query params based on authentication settings.
    #
    # @param [Hash] header_params Header parameters
    # @param [Hash] query_params Query parameters
    # @param [String] auth_names Authentication scheme name
    def update_params_for_auth!(header_params, query_params, auth_names)
      Array(auth_names).each do |auth_name|
        auth_setting = @config.auth_settings[auth_name]
        next unless auth_setting
        case auth_setting[:in]
        when 'header' then header_params[auth_setting[:key]] = auth_setting[:value]
        when 'query'  then query_params[auth_setting[:key]] = auth_setting[:value]
        else fail ArgumentError, 'Authentication token must be in `query` or `header`'
        end
      end
    end

    # Sets user agent in HTTP header
    #
    # @param [String] user_agent User agent (e.g. openapi-generator/ruby/1.0.0)
    def user_agent=(user_agent)
      @user_agent = user_agent
      @default_headers['User-Agent'] = @user_agent
    end

    # Return Accept header based on an array of accepts provided.
    # @param [Array] accepts array for Accept
    # @return [String] the Accept header (e.g. application/json)
    def select_header_accept(accepts)
      return nil if accepts.nil? || accepts.empty?
      # use JSON when present, otherwise use all of the provided
      json_accept = accepts.find { |s| json_mime?(s) }
      json_accept || accepts.join(',')
    end

    # Return Content-Type header based on an array of content types provided.
    # @param [Array] content_types array for Content-Type
    # @return [String] the Content-Type header  (e.g. application/json)
    def select_header_content_type(content_types)
      # return nil by default
      return if content_types.nil? || content_types.empty?
      # use JSON when present, otherwise use the first one
      json_content_type = content_types.find { |s| json_mime?(s) }
      json_content_type || content_types.first
    end

    # Convert object (array, hash, object, etc) to JSON string.
    # @param [Object] model object to be converted into JSON string
    # @return [String] JSON string representation of the object
    def object_to_http_body(model)
      return model if model.nil? || model.is_a?(String)
      local_body = nil
      if model.is_a?(Array)
        local_body = model.map { |m| object_to_hash(m) }
      else
        local_body = object_to_hash(model)
      end
      local_body.to_json
    end

    # Convert object(non-array) to hash.
    # @param [Object] obj object to be converted into JSON string
    # @return [String] JSON string representation of the object
    def object_to_hash(obj)
      if obj.respond_to?(:to_hash)
        obj.to_hash
      else
        obj
      end
    end

    # Build parameter value according to the given collection format.
    # @param [String] collection_format one of :csv, :ssv, :tsv, :pipes and :multi
    def build_collection_param(param, collection_format)
      case collection_format
      when :csv
        param.join(',')
      when :ssv
        param.join(' ')
      when :tsv
        param.join("\t")
      when :pipes
        param.join('|')
      when :multi
        # return the array directly as typhoeus will handle it as expected
        param
      else
        fail "unknown collection format: #{collection_format.inspect}"
      end
    end
  end
end
