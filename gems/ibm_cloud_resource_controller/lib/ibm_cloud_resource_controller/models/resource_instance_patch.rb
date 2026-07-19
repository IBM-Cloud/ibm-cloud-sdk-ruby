=begin
#Resource Controller

### Introduction  The resource controller is the next-generation IBM Cloud® platform provisioning layer that manages the lifecycle of IBM Cloud resources in a customer account. A resource is an instance of a service like Cloudant, a Cloud Foundry application, a virtual machine, a container, a software image, or a data set.  The resource controller provides APIs to help you manage the following elements of your resource lifecycle: * Catalog management * Provisioning (creating an instance) * Updating a resource instance * Resource keys * De-provisioning (deleting an instance) * Dashboard SSO  Resources are provisioned globally in an account scope. The resource controller supports both synchronous and asynchronous provisioning of resources.  Resources are created by the resource controller within [resource groups](https://console.cloud.ibm.com/docs/overview/resource-groups.html#whatis). A resource group belongs to an account. All IBM Cloud resources must be provisioned within a resource group. If an account is suspended, the corresponding resource group is suspended as well, and all resources within the resource group are suspended.  Installing the Java SDK  Maven  ```xml <dependency>  <groupId>com.ibm.cloud</groupId>  <artifactId>resource-controller</artifactId>  <version>{version}</version> </dependency> ```  Gradle  ```bash 'com.ibm.cloud:resource-controller:{version}' ```  Replace `{version}` in these examples with the release version.  View on GitHub  [https://github.com/IBM/platform-services-java-sdk](https://github.com/IBM/platform-services-java-sdk)  Installing the Go SDK  Go modules (recommended): Add the following import in your code, and then run `go build` or `go mod tidy`  ```go import (  \"github.com/IBM/platform-services-go-sdk/resourcecontrollerv2\" ) ```  Go get  ```bash go get -u github.com/IBM/platform-services-go-sdk/resourcecontrollerv2 ```  View on GitHub  [https://github.com/IBM/platform-services-go-sdk](https://github.com/IBM/platform-services-go-sdk)  Installation  ```bash npm install @ibm-cloud/platform-services ```  For more installation options, view this project in GitHub. https://github.com/IBM/platform-services-node-sdk  Installation  ```bash pip install --upgrade \"ibm-platform-services\" ```  For more installation options, view this project in GitHub. https://github.com/IBM/platform-services-python-sdk  ### Resource instances  The resource controller can provision or create an instance. Provisioning reserves a resource on a service, and the reserved resource is a service instance. A resource instance can vary by service. Examples include a single database on a multi-tenant server, a dedicated cluster, or an account on a web application.  API endpoint  ```bash https://resource-controller.cloud.ibm.com ```  API endpoint  ```bash https://resource-controller.cloud.ibm.com ```  API endpoint  ```bash https://resource-controller.cloud.ibm.com ```  API endpoint  ```bash https://resource-controller.cloud.ibm.com ```  API endpoint  ```bash https://resource-controller.cloud.ibm.com ```  ### Using the SDK  With the Java SDK, you can build a service client for the Resource Controller by implementing the `ResourceController` class within the `com.ibm.cloud.platform_services.resource_controller.v2` package. To construct the client, you can set your options programmatically, or you can define external configuration properties to be used by your application.  The examples that are provided on this page demonstrate how to build a service client by using these two options. For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  With the Go SDK, you can build a service client for the Resource Controller by implementing the `ResourceControllerV2` class within the `resourcecontrollerv2` package. To construct the client, you can set your options programmatically, or you can define external configuration properties to be used by your application.  The examples that are provided on this page demonstrate how to build a service client by using these two options. For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  With the Node.js SDK, you can build a service client for the Resource Controller by implementing the `ResourceControllerV2` class within the `resource-controller/v2` module. To construct the client, you can set your options programmatically, or you can define external configuration properties to be used by your application.  The examples that are provided on this page demonstrate how to build a service client by using these two options. For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  With the Python SDK, you can build a service client for the Resource Controller by implementing the `ResourceControllerV2` class within the `ibm-platform-services` module. To construct the client, you can set your options programmatically, or you can define external configuration properties to be used by your application.  The examples that are provided on this page demonstrate how to build a service client by using these two options. For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  ## Endpoint URLs  The Resource Controller API uses the following global endpoint URL for all regions. When you call the API, add the path for each method to form the complete API endpoint for your requests.  ``` https://resource-controller.cloud.ibm.com ```  If you enabled service endpoints in your account, you can send API requests over the IBM Cloud private network at the following base endpoint URLs. For more information, see [Enabling VRF and service endpoints](https://cloud.ibm.com/docs/account?topic=account-vrf-service-endpoint).  * Private endpoint URL for VPC infrastructure (only available in US regions): `https://private.resource-controller.cloud.ibm.com` * Private endpoint URLs for classic and non-US region VPC infrastructure:    * Dallas: `https://private.us-south.resource-controller.cloud.ibm.com`    * Washington DC: `https://private.us-east.resource-controller.cloud.ibm.com`  Example API request ``` curl -X {request_method} \"https://resource-controller.cloud.ibm.com/{method_endpoint}\" ``` Replace `{request_method}` and `{method_endpoint}` in this example with the values for your particular API call.  ## Authentication  To work with the API, you must use an IBM Cloud Identity and Access Management (IAM) access token. The token is used to determine the actions that a user or service ID has access to when they use the API.  Obtaining an IAM token for an authenticated user or service ID is described in the [IAM Identity Services API](https://cloud.ibm.com/apidocs/iam-identity-token-api) documentation.  To use the API, add a valid IAM token to the HTTP Authorization request header, for example, `-H 'Authorization: Bearer <TOKEN>'`.  When you use the SDK, configure an IAM authenticator with the IAM API key. The authenticator automatically obtains the IAM access token for the API key and includes it with each request. You can construct an authenticator in either of two ways: - Programmatically by constructing an IAM authenticator instance and supplying your IAM API key - By defining the API key in external configuration properties and then using the SDK authenticator factory to construct an IAM authenticator that uses the configured IAM API key  In this example of using external configuration properties, an IAM authenticator instance is created with the configured API key, and then the service client is constructed with this authenticator instance and the configured service URL.  For more information, see the Authentication section of the [IBM Cloud SDK Common](https://github.com/IBM/ibm-cloud-sdk-common/blob/main/README.md) documentation.  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  To retrieve your access token:  ```bash curl -X POST https://iam.cloud.ibm.com/identity/token   -H \"Content-Type: application/x-www-form-urlencoded\"   -H \"Accept: application/json\"   -d \"grant_type=urn%3Aibm%3Aparams%3Aoauth%3Agrant-type%3Aapikey&apikey=<API_KEY>\" ```  Replace `<API_KEY>` with your service credentials. Then, use the full `IAM token` value that is prefixed by the _Bearer_ token type to authenticate your API requests.  To retrieve your instance ID:  ```bash ibmcloud resource service-instance <instance_name> --id ```  Replace `<instance_name>` with the `name` that you assigned to your service instance.  Setting client options through external configuration  Example environment variables, where `<API_KEY>` is your IAM API key ```sh export RESOURCE_CONTROLLER_APIKEY=<API_KEY> ```  Example of constructing the service client ```java import com.ibm.cloud.platform_services.resource_controller.v2.ResourceController; ... ResourceController resourceControllerService = ResourceController.newInstance(); ```  Setting client options through external configuration  Example environment variables, where `<API_KEY>` is your IAM API key ```sh export RESOURCE_CONTROLLER_APIKEY=<API_KEY> ```  Example of constructing the service client ```go import {     \"github.com/IBM/platform-services-go-sdk/resourcecontrollerv2\" } ... resourceControllerServiceOptions := &resourcecontrollerv2.ResourceControllerV2Options{} resourceControllerService, err := resourcecontrollerv2.NewResourceControllerV2UsingExternalConfig(resourceControllerServiceOptions) ```  Setting client options through external configuration  Example environment variables, where `<API_KEY>` is your IAM API key ```sh export RESOURCE_CONTROLLER_APIKEY=<API_KEY> ```  Example of constructing the service client ```python from ibm_platform_services import ResourceControllerV2 ... resource_controller_service = ResourceControllerV2.new_instance() ```  Setting client options through external configuration  Example environment variables, where `<API_KEY>` is your IAM API key ```sh export RESOURCE_CONTROLLER_APIKEY=<API_KEY> ```  Example of constructing the service client ```javascript const ResourceControllerV2 = require('ibm-platform-services/resource-controller/v2'); ... const resourceControllerService = ResourceControllerV2.newInstance({}); ```  ## Error handling  This API uses standard HTTP response codes to indicate whether a method completed successfully. A `200` response indicates success. A `400` type response indicates a failure, and a `500` type response indicates an internal system error.  Additionally, each response includes a `Transaction-Id` header that can be referenced when you contact [IBM Cloud support](https://www.ibm.com/cloud/support).  | HTTP Error Code | Description           | Recovery | |-----------------|-----------------------|----------| | `200`           | Success               | The request was successful. | | `400`           | Bad Request           | The input parameters in the request body are either incomplete or in the wrong format. Be sure to include all required parameters in your request. | | `401`           | Unauthorized          | You are not authorized to make this request. Log in to IBM Cloud and try again. If this error persists, contact the account owner to check your permissions. | | `403`           | Forbidden             | The supplied authentication is not authorized to access '{namespace}'. | | `404`           | Not Found             | The requested resource could not be found. | | `409`           | Conflict              | The entity is already in the requested state. | | `410`           | Gone                  | The resource is valid but was removed in a previous call. | | `500`           | Internal Server Error | *Offering_name* is unavailable. Your request could not be processed. Wait a few minutes and try again. |  ## Auditing  You can monitor API activity within your account by using the IBM Cloud Logs service. Whenever an API method is called, an event is generated that you can then track and audit from within IBM Cloud Logs. The specific event type is listed for each individual method.  For more information about how to track Account and Billing activity, see [Activity tracking events for account management](https://cloud.ibm.com/docs/account?topic=account-at_events_am).  ## Pagination  Some API requests might return a large number of results. To avoid performance issues, these results are returned one page at a time, with a limited number of results on each page. GET requests for the following resources use pagination:     * /v2/resource_instances    * /v2/resource_keys  The default page and max size is 100 objects. To use a different page size, use the `limit` query parameter.  For any request that uses pagination, the response includes a `next_url` object that specifies pagination information. `next_url` is the URL for requesting the next page of results. The `next_url` property is null if there are no more results, and retains the same `limit` parameter that is used for the initial request.  ## Rate limiting  Rate limits for API requests are enforced on a per-caller basis. If the number of requests for a particular method and endpoint reaches the request limit within the specified time window, no further requests are accepted until the timer expires. After the timer expires, a new time window begins with the next accepted request.  The response to each HTTP request includes headers you can use to determine whether you are close to the rate limit:     * X-RateLimit-Reset: the time the current timer expires (in UNIX epoch time)    * X-RateLimit-Remaining: the number of remaining requests in the current time window    * X-RateLimit-Limit: the total number of requests allowed within the time window  An HTTP status code of 429 indicates that the rate limit was exceeded.  The number of allowed requests, and the length of the time window, vary by method and endpoint. The reference information for each endpoint specifies the rate limit that applies.  ## Related APIs  When you work with the resource controller endpoints, it might be helpful to be aware of the IBM Cloud OSB APIs used to create your service broker.  * [IBM Cloud Open Service Broker](https://cloud.ibm.com/apidocs/resource-controller/ibm-cloud-osb-api) * [IBM Cloud Resource Manager](https://cloud.ibm.com/apidocs/resource-controller/resource-manager)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.23.0

=end

require 'date'
require 'time'

module IbmCloudResourceController
  # Updated property values for a resource instance.
  class ResourceInstancePatch < ApiModelBase
    # The new name of the instance.
    attr_accessor :name

    # The new configuration options for the instance.<br><br>Set the `onetime_credentials` property to specify whether newly created resource key credentials can be retrieved by using the get resource key or the get a list of all of the resource keys requests.
    attr_accessor :parameters

    # The unique ID of the plan associated with the offering. This value is provided by and stored in the global catalog.
    attr_accessor :resource_plan_id

    # A boolean that dictates if the resource instance should be deleted (cleaned up) during the processing of a region instance delete call.
    attr_accessor :allow_cleanup

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'parameters' => :'parameters',
        :'resource_plan_id' => :'resource_plan_id',
        :'allow_cleanup' => :'allow_cleanup'
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
        :'name' => :'String',
        :'parameters' => :'Hash<String, Object>',
        :'resource_plan_id' => :'String',
        :'allow_cleanup' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudResourceController::ResourceInstancePatch` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudResourceController::ResourceInstancePatch`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'parameters')
        if (value = attributes[:'parameters']).is_a?(Hash)
          self.parameters = value
        end
      end

      if attributes.key?(:'resource_plan_id')
        self.resource_plan_id = attributes[:'resource_plan_id']
      end

      if attributes.key?(:'allow_cleanup')
        self.allow_cleanup = attributes[:'allow_cleanup']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      pattern = Regexp.new(/^([\p{L}\p{N}._: -]{1,256})$/)
      if !@name.nil? && @name !~ pattern
        invalid_properties.push("invalid value for \"name\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[\w! "#$%&'()*+\-.:;<=>\[\]^_{|}]+$/)
      if !@resource_plan_id.nil? && @resource_plan_id !~ pattern
        invalid_properties.push("invalid value for \"resource_plan_id\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@name.nil? && @name !~ Regexp.new(/^([\p{L}\p{N}._: -]{1,256})$/)
      return false if !@resource_plan_id.nil? && @resource_plan_id !~ Regexp.new(/^[\w! "#$%&'()*+\-.:;<=>\[\]^_{|}]+$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      pattern = Regexp.new(/^([\p{L}\p{N}._: -]{1,256})$/)
      if name !~ pattern
        fail ArgumentError, "invalid value for \"name\", must conform to the pattern #{pattern}."
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] resource_plan_id Value to be assigned
    def resource_plan_id=(resource_plan_id)
      if resource_plan_id.nil?
        fail ArgumentError, 'resource_plan_id cannot be nil'
      end

      pattern = Regexp.new(/^[\w! "#$%&'()*+\-.:;<=>\[\]^_{|}]+$/)
      if resource_plan_id !~ pattern
        fail ArgumentError, "invalid value for \"resource_plan_id\", must conform to the pattern #{pattern}."
      end

      @resource_plan_id = resource_plan_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          parameters == o.parameters &&
          resource_plan_id == o.resource_plan_id &&
          allow_cleanup == o.allow_cleanup
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, parameters, resource_plan_id, allow_cleanup].hash
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
