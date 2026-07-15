=begin
#Global Tagging

### Introduction  You can manage your tags in IBM Cloud by using the Global Tagging API. With this API, you can create, delete, search, attach, or detach tags.   Tags are uniquely identified by a Cloud Resource Naming (CRN) identifier. Tags have a name, which must be unique within a billing account. You can make tags in `key:value` or `label` format.   SDKs for Java, Node, Python, and Go are available to make it easier to programmatically access the API from your code. The client libraries that are provided by the SDKs implement best practices for using the API and reduce the amount of code that you need to write. The tab for each language includes code examples that demonstrate how to use the client libraries. For more information about using the SDKs, see the [IBM Cloud SDK Common project](https://github.com/IBM/ibm-cloud-sdk-common) on GitHub.  Installing the Java SDK  Maven  ```xml <dependency>  <groupId>com.ibm.cloud</groupId>  <artifactId>global-tagging</artifactId>  <version>{version}</version> </dependency> ```  Gradle  ```bash compile 'com.ibm.cloud:global-tagging:{version}' ```  Replace `{version}` in these examples with the release version.  View on GitHub  [https://github.com/IBM/platform-services-java-sdk](https://github.com/IBM/platform-services-java-sdk)  Installing the Node SDK  ```bash npm install @ibm-cloud/platform-services ```  View on GitHub  [https://github.com/IBM/platform-services-node-sdk](https://github.com/IBM/platform-services-node-sdk)  Installing the Python SDK  ```bash pip install --upgrade \"ibm-platform-services\" ```  View on GitHub  [https://github.com/IBM/platform-services-python-sdk](https://github.com/IBM/platform-services-python-sdk)  Installing the Go SDK  Go modules (recommended): Add the following import in your code, and then run `go build` or `go mod tidy`  ```go import (  \"github.com/IBM/platform-services-go-sdk/globaltaggingv1\" ) ```  Go get  ```bash go get -u github.com/IBM/platform-services-go-sdk/globaltaggingv1 ```  View on GitHub  [https://github.com/IBM/platform-services-go-sdk](https://github.com/IBM/platform-services-go-sdk)  ### Types of tags  The Tagging API supports three types of tag: `service`, `user`, and `access`.    - Service tags are intended for services that want to attach a tag to a resource in an exclusive way: nobody else can go and detach it. A service tag is a privileged construct that only authorized services can manage. So, a regular user is not authorized to attach and detach service tags on a resource even if they have access to manage tags on the resource itself.      Service tags are supported only for resources that are onboarded to Global Search and Tagging, which means you cannot attach a service tag to a classic infrastructure (IMS) resource. Each resource can have a maximum of 1000 service tags.  - User tags are added by an authorized user in the account. Any user with the correct access role in an account can list and can delete both service and user tags in the account as long as they are not attached to any resource. Users can delete service tags because the operation is non-disruptive in that the tags aren't attached to any resource.     The Tagging API supports multiple services assigning a tag prefix at service registration time to avoid conflicts. So, a service tag name always has the form `service_prefix:tag_label`. Each resource can have maximum of 1000 user tags.  - Access management tags are used to manage access to resources, and they can be created in advance for use in access policies, which  control access to resources where those tags will be attached. Only the account administrator can create access management tags, and they can delete them only when the tags aren't attached to any resources in the account. Only the resource administrator can attach and detach access management tags on the resource itself.       The name of an access management tag must be in the form of a `key:value` pair, where `value` cannot contain the `:` character. Access management tags are supported only for IAM-managed resources, which means you cannot use them to manage access to classic infrastructure (IMS) and Cloud Foundry resources. Each resource can have a maximum of 250 access tags (which is the account limit).  ### Filtering tags  Global Search and Tagging stores the different type of tags attached to a resource within a different attribute of the resource document:    - Service tags are stored within `service_tags` attribute.   - User tags are stored within the `tags` attribute.   - Access management tags are stored within the `access_tags` attribute.    So, you can add filters to those attributes when [searching for resources](https://cloud.ibm.com/apidocs/search).    For example, the following filter matches all resources tagged with the *your_service:your_tag* service tag.    ``` service_tags:\"your_service:your_tag\" ```  The following filter matches all resources that are tagged with any service tag starting with *your_service:*.   ``` service_tags:your_service:* ```  The following filter matches all resources that are tagged with the *my_tag* user tag.    ``` tags: \"my_tag\" ```  Finally, the following filter matches all resources that are tagged with the *env:public* access management tag.  ``` access_tags: \"env:public\" ```  ## Endpoint URLs  The Global Tagging API uses the following public global endpoint URL. When you call the API, add the path for each method to form the complete API endpoint for your requests.  ``` https://tags.global-search-tagging.cloud.ibm.com ```  If you enabled service endpoints in your account, you can send API requests over the IBM Cloud® private network at the following base endpoint URLs. For more information, see [Enabling VRF and service endpoints](https://cloud.ibm.com/docs/account?topic=account-vrf-service-endpoint).  - Private endpoint URL for VPC infrastructure (Dallas, Washington, Sydney, London, Frankfurt, Madrid, San Paulo, Tokyo, Osaka, Toronto, Montreal, Chennai, Mumbai regions): `https://tags.private.global-search-tagging.cloud.ibm.com` - Private endpoint URL for classic infrastructure:    - Dallas `https://tags.private.us-south.global-search-tagging.cloud.ibm.com`    - Washington `https://tags.private.us-east.global-search-tagging.cloud.ibm.com`    - Sydney `https://tags.private.au-syd.global-search-tagging.cloud.ibm.com`    - London `https://tags.private.eu-gb.global-search-tagging.cloud.ibm.com`    - Frankfurt `https://tags.private.eu-de.global-search-tagging.cloud.ibm.com`  Example API request  ``` curl -X POST \"https://tags.global-search-tagging.cloud.ibm.com/v3/tags/attach\" --header \"Accept: application/json\" --header \"Content-Type: application/json\" --header \"Authorization: Bearer {IAM token}\" -d '{\"tag_names\": [\"{tagName}\"], \"resources\": [ { \"resource_id\": \"{resourceCRN}\" } ] }' ```  Replace `{IAM token}`, `{tagName}` and `{resourceCRN}` in this example with the values for your particular API call.  ## Authentication  Authorization to the Global Tagging API is enforced by using an IBM Cloud Identity and Access Management (IAM) access token. The token is used to determine the actions that a user or service ID has access to when they use the API.   Obtaining an IAM token for an authenticated user or service ID is described in the [IAM Identity Services API](https://cloud.ibm.com/apidocs/iam-identity-token-api) documentation.   To use the API, add a valid IAM token to the HTTP Authorization request header, for example, `--header \"Authorization: Bearer <TOKEN>\"`.  When you use the SDK, configure an IAM authenticator with the IAM API key. The authenticator automatically obtains the IAM access token for the API key and includes it with each request. You can construct an authenticator in either of two ways: - Programmatically by constructing an IAM authenticator instance and supplying your IAM API key  - By defining the API key in external configuration properties and then using the SDK authenticator factory to construct an IAM authenticator that uses the configured IAM API key  In this example of using external configuration properties, an IAM authenticator instance is created with the configured API key, and then the service client is constructed with this authenticator instance and the configured service URL.  For more information, see the Authentication section of the [IBM Cloud SDK Common](https://github.com/IBM/ibm-cloud-sdk-common/blob/main/README.md) documentation.  To call each method, you'll need to be assigned a role that includes the required IAM actions. Each method lists the associated action. For more information about IAM actions and how they map to roles, see [Assigning access to account management services](https://cloud.ibm.com/docs/account?topic=account-account-services).  To retrieve your access token:  ```bash curl -X POST \\   \"https://iam.cloud.ibm.com/identity/token\" \\   --header 'Content-Type: application/x-www-form-urlencoded' \\   --header 'Accept: application/json' \\   --data-urlencode 'grant_type=urn:ibm:params:oauth:grant-type:apikey' \\   --data-urlencode 'apikey=<API_KEY>' ```  Replace `<API_KEY>` with your IAM API key.  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export GLOBAL_TAGGING_URL=<SERVICE_URL> export GLOBAL_TAGGING_AUTHTYPE=iam export GLOBAL_TAGGING_APIKEY=<API_KEY> ```  Example of constructing the service client ```go import {     \"github.com/IBM/platform-services-go-sdk/globaltaggingv1\" } ... serviceClientOptions := &globaltaggingv1.GlobalTaggingV1Options{} serviceClient, err := globaltaggingv1.NewGlobalTaggingV1UsingExternalConfig(serviceClientOptions) ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export GLOBAL_TAGGING_URL=<SERVICE_URL> export GLOBAL_TAGGING_AUTHTYPE=iam export GLOBAL_TAGGING_APIKEY=<API_KEY> ```  Example of constructing the service client ```java import com.ibm.cloud.platform_services.global_tagging.v1.GlobalTagging; ... GlobalTagging serviceClient = GlobalTagging.newInstance(); ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export GLOBAL_TAGGING_URL=<SERVICE_URL> export GLOBAL_TAGGING_AUTHTYPE=iam export GLOBAL_TAGGING_APIKEY=<API_KEY> ```  Example of constructing the service client ```javascript const GlobalTaggingV1 = require('@ibm-cloud/platform-services/global-tagging/v1'); ... const serviceClient = GlobalTaggingV1.newInstance({}); ```  Setting client options through external configuration  Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key ```sh export GLOBAL_TAGGING_URL=<SERVICE_URL> export GLOBAL_TAGGING_AUTHTYPE=iam export GLOBAL_TAGGING_APIKEY=<API_KEY> ```  Example of constructing the service client ```python from ibm_platform_services import GlobalTaggingV1 ... global_tagging_service = GlobalTaggingV1.new_instance() ```  ## Auditing  You can monitor API activity within your account by using the IBM Cloud Activity Tracker. Whenever an API method is called, an event is generated that you can then track and audit from within Activity Tracker. The specific event type is listed for each individual method.  For more information about how to track tagging activity, see [Auditing events for account management](https://cloud.ibm.com/docs/activity-tracker?topic=activity-tracker-at_events_acc_mgt).  ## Error handling  The resource manager uses standard HTTP response codes to indicate whether a method completed successfully. A `200` type response always indicates success. A `400` type response is a failure, and a `500` type response is an internal system error.  | HTTP error code | Description | Recovery | |-----------------|-------------|----------| | `200` | Success | The request was successful. | | `400` | Bad Request | The input parameters in the request body are either incomplete or in the wrong format. Be sure to include all required parameters in your request. | | `401` | Unauthorized | You are not authorized to make this request. Log in to IBM Cloud and try again. If this error persists, contact the account owner to check your permissions. | | `404` | Not Found | The requested resource could not be found. | | `409` | Conflict | The entity is already in the requested state. | | `410` | Gone | The resource is valid but has been removed already in a previous call | | `500` | Internal Server Error | *offering_name* is currently unavailable. Your request could not be processed. Wait a few minutes and try again. |  ## Related APIs  After tagging resources, you can search for them by the tag name or resource groups or building even more complex search strings. For more information about advanced search capabilities that use the Lucene query syntax, see the [Global Search API](https://cloud.ibm.com/apidocs/search).

The version of the OpenAPI document: 1.2.0
Contact: michele.crudele@it.ibm.com
Generated by: https://openapi-generator.tech
Generator version: 7.23.0

=end

require 'date'
require 'time'

module IbmCloudGlobalTagging
  # Results of an attach_tag or detach_tag request
  class TagResults < ApiModelBase
    # Array of results of an attach_tag or detach_tag request.
    attr_accessor :results

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'results' => :'results'
      }
    end

    # Returns attribute mapping this model knows about
    def self.acceptable_attribute_map
      attribute_map
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      acceptable_attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'results' => :'Array<TagResultsItem>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudGlobalTagging::TagResults` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudGlobalTagging::TagResults`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'results')
        if (value = attributes[:'results']).is_a?(Array)
          self.results = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          results == o.results
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [results].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

  end

end
