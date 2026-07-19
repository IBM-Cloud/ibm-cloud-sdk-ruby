=begin
#Resource Controller

### Introduction  The resource controller is the next-generation IBM Cloud® platform provisioning layer that manages the lifecycle of IBM Cloud resources in a customer account. A resource is an instance of a service like Cloudant, a Cloud Foundry application, a virtual machine, a container, a software image, or a data set.  The resource controller provides APIs to help you manage the following elements of your resource lifecycle: * Catalog management * Provisioning (creating an instance) * Updating a resource instance * Resource keys * De-provisioning (deleting an instance) * Dashboard SSO  Resources are provisioned globally in an account scope. The resource controller supports both synchronous and asynchronous provisioning of resources.  Resources are created by the resource controller within [resource groups](https://console.cloud.ibm.com/docs/overview/resource-groups.html#whatis). A resource group belongs to an account. All IBM Cloud resources must be provisioned within a resource group. If an account is suspended, the corresponding resource group is suspended as well, and all resources within the resource group are suspended.  Installing the Java SDK  Maven  ```xml <dependency>  <groupId>com.ibm.cloud</groupId>  <artifactId>resource-controller</artifactId>  <version>{version}</version> </dependency> ```  Gradle  ```bash 'com.ibm.cloud:resource-controller:{version}' ```  Replace `{version}` in these examples with the release version.  View on GitHub  [https://github.com/IBM/platform-services-java-sdk](https://github.com/IBM/platform-services-java-sdk)  Installing the Go SDK  Go modules (recommended): Add the following import in your code, and then run `go build` or `go mod tidy`  ```go import (  \"github.com/IBM/platform-services-go-sdk/resourcecontrollerv2\" ) ```  Go get  ```bash go get -u github.com/IBM/platform-services-go-sdk/resourcecontrollerv2 ```  View on GitHub  [https://github.com/IBM/platform-services-go-sdk](https://github.com/IBM/platform-services-go-sdk)  Installation  ```bash npm install @ibm-cloud/platform-services ```  For more installation options, view this project in GitHub. https://github.com/IBM/platform-services-node-sdk  Installation  ```bash pip install --upgrade \"ibm-platform-services\" ```  For more installation options, view this project in GitHub. https://github.com/IBM/platform-services-python-sdk  ### Resource instances  The resource controller can provision or create an instance. Provisioning reserves a resource on a service, and the reserved resource is a service instance. A resource instance can vary by service. Examples include a single database on a multi-tenant server, a dedicated cluster, or an account on a web application.  API endpoint  ```bash https://resource-controller.cloud.ibm.com ```  API endpoint  ```bash https://resource-controller.cloud.ibm.com ```  API endpoint  ```bash https://resource-controller.cloud.ibm.com ```  API endpoint  ```bash https://resource-controller.cloud.ibm.com ```  API endpoint  ```bash https://resource-controller.cloud.ibm.com ```  ### Using the SDK  With the Java SDK, you can build a service client for the Resource Controller by implementing the `ResourceController` class within the `com.ibm.cloud.platform_services.resource_controller.v2` package. To construct the client, you can set your options programmatically, or you can define external configuration properties to be used by your application.  The examples that are provided on this page demonstrate how to build a service client by using these two options. For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  With the Go SDK, you can build a service client for the Resource Controller by implementing the `ResourceControllerV2` class within the `resourcecontrollerv2` package. To construct the client, you can set your options programmatically, or you can define external configuration properties to be used by your application.  The examples that are provided on this page demonstrate how to build a service client by using these two options. For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  With the Node.js SDK, you can build a service client for the Resource Controller by implementing the `ResourceControllerV2` class within the `resource-controller/v2` module. To construct the client, you can set your options programmatically, or you can define external configuration properties to be used by your application.  The examples that are provided on this page demonstrate how to build a service client by using these two options. For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  With the Python SDK, you can build a service client for the Resource Controller by implementing the `ResourceControllerV2` class within the `ibm-platform-services` module. To construct the client, you can set your options programmatically, or you can define external configuration properties to be used by your application.  The examples that are provided on this page demonstrate how to build a service client by using these two options. For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).  ## Endpoint URLs  The Resource Controller API uses the following global endpoint URL for all regions. When you call the API, add the path for each method to form the complete API endpoint for your requests.  ``` https://resource-controller.cloud.ibm.com ```  If you enabled service endpoints in your account, you can send API requests over the IBM Cloud private network at the following base endpoint URLs. For more information, see [Enabling VRF and service endpoints](https://cloud.ibm.com/docs/account?topic=account-vrf-service-endpoint).  * Private endpoint URL for VPC infrastructure (only available in US regions): `https://private.resource-controller.cloud.ibm.com` * Private endpoint URLs for classic and non-US region VPC infrastructure:    * Dallas: `https://private.us-south.resource-controller.cloud.ibm.com`    * Washington DC: `https://private.us-east.resource-controller.cloud.ibm.com`  Example API request ``` curl -X {request_method} \"https://resource-controller.cloud.ibm.com/{method_endpoint}\" ``` Replace `{request_method}` and `{method_endpoint}` in this example with the values for your particular API call.  ## Authentication  To work with the API, you must use an IBM Cloud Identity and Access Management (IAM) access token. The token is used to determine the actions that a user or service ID has access to when they use the API.  Obtaining an IAM token for an authenticated user or service ID is described in the [IAM Identity Services API](https://cloud.ibm.com/apidocs/iam-identity-token-api) documentation.  To use the API, add a valid IAM token to the HTTP Authorization request header, for example, `-H 'Authorization: Bearer <TOKEN>'`.  When you use the SDK, configure an IAM authenticator with the IAM API key. The authenticator automatically obtains the IAM access token for the API key and includes it with each request. You can construct an authenticator in either of two ways: - Programmatically by constructing an IAM authenticator instance and supplying your IAM API key - By defining the API key in external configuration properties and then using the SDK authenticator factory to construct an IAM authenticator that uses the configured IAM API key  In this example of using external configuration properties, an IAM authenticator instance is created with the configured API key, and then the service client is constructed with this authenticator instance and the configured service URL.  For more information, see the Authentication section of the [IBM Cloud SDK Common](https://github.com/IBM/ibm-cloud-sdk-common/blob/main/README.md) documentation.  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).  To retrieve your access token:  ```bash curl -X POST https://iam.cloud.ibm.com/identity/token   -H \"Content-Type: application/x-www-form-urlencoded\"   -H \"Accept: application/json\"   -d \"grant_type=urn%3Aibm%3Aparams%3Aoauth%3Agrant-type%3Aapikey&apikey=<API_KEY>\" ```  Replace `<API_KEY>` with your service credentials. Then, use the full `IAM token` value that is prefixed by the _Bearer_ token type to authenticate your API requests.  To retrieve your instance ID:  ```bash ibmcloud resource service-instance <instance_name> --id ```  Replace `<instance_name>` with the `name` that you assigned to your service instance.  Setting client options through external configuration  Example environment variables, where `<API_KEY>` is your IAM API key ```sh export RESOURCE_CONTROLLER_APIKEY=<API_KEY> ```  Example of constructing the service client ```java import com.ibm.cloud.platform_services.resource_controller.v2.ResourceController; ... ResourceController resourceControllerService = ResourceController.newInstance(); ```  Setting client options through external configuration  Example environment variables, where `<API_KEY>` is your IAM API key ```sh export RESOURCE_CONTROLLER_APIKEY=<API_KEY> ```  Example of constructing the service client ```go import {     \"github.com/IBM/platform-services-go-sdk/resourcecontrollerv2\" } ... resourceControllerServiceOptions := &resourcecontrollerv2.ResourceControllerV2Options{} resourceControllerService, err := resourcecontrollerv2.NewResourceControllerV2UsingExternalConfig(resourceControllerServiceOptions) ```  Setting client options through external configuration  Example environment variables, where `<API_KEY>` is your IAM API key ```sh export RESOURCE_CONTROLLER_APIKEY=<API_KEY> ```  Example of constructing the service client ```python from ibm_platform_services import ResourceControllerV2 ... resource_controller_service = ResourceControllerV2.new_instance() ```  Setting client options through external configuration  Example environment variables, where `<API_KEY>` is your IAM API key ```sh export RESOURCE_CONTROLLER_APIKEY=<API_KEY> ```  Example of constructing the service client ```javascript const ResourceControllerV2 = require('ibm-platform-services/resource-controller/v2'); ... const resourceControllerService = ResourceControllerV2.newInstance({}); ```  ## Error handling  This API uses standard HTTP response codes to indicate whether a method completed successfully. A `200` response indicates success. A `400` type response indicates a failure, and a `500` type response indicates an internal system error.  Additionally, each response includes a `Transaction-Id` header that can be referenced when you contact [IBM Cloud support](https://www.ibm.com/cloud/support).  | HTTP Error Code | Description           | Recovery | |-----------------|-----------------------|----------| | `200`           | Success               | The request was successful. | | `400`           | Bad Request           | The input parameters in the request body are either incomplete or in the wrong format. Be sure to include all required parameters in your request. | | `401`           | Unauthorized          | You are not authorized to make this request. Log in to IBM Cloud and try again. If this error persists, contact the account owner to check your permissions. | | `403`           | Forbidden             | The supplied authentication is not authorized to access '{namespace}'. | | `404`           | Not Found             | The requested resource could not be found. | | `409`           | Conflict              | The entity is already in the requested state. | | `410`           | Gone                  | The resource is valid but was removed in a previous call. | | `500`           | Internal Server Error | *Offering_name* is unavailable. Your request could not be processed. Wait a few minutes and try again. |  ## Auditing  You can monitor API activity within your account by using the IBM Cloud Logs service. Whenever an API method is called, an event is generated that you can then track and audit from within IBM Cloud Logs. The specific event type is listed for each individual method.  For more information about how to track Account and Billing activity, see [Activity tracking events for account management](https://cloud.ibm.com/docs/account?topic=account-at_events_am).  ## Pagination  Some API requests might return a large number of results. To avoid performance issues, these results are returned one page at a time, with a limited number of results on each page. GET requests for the following resources use pagination:     * /v2/resource_instances    * /v2/resource_keys  The default page and max size is 100 objects. To use a different page size, use the `limit` query parameter.  For any request that uses pagination, the response includes a `next_url` object that specifies pagination information. `next_url` is the URL for requesting the next page of results. The `next_url` property is null if there are no more results, and retains the same `limit` parameter that is used for the initial request.  ## Rate limiting  Rate limits for API requests are enforced on a per-caller basis. If the number of requests for a particular method and endpoint reaches the request limit within the specified time window, no further requests are accepted until the timer expires. After the timer expires, a new time window begins with the next accepted request.  The response to each HTTP request includes headers you can use to determine whether you are close to the rate limit:     * X-RateLimit-Reset: the time the current timer expires (in UNIX epoch time)    * X-RateLimit-Remaining: the number of remaining requests in the current time window    * X-RateLimit-Limit: the total number of requests allowed within the time window  An HTTP status code of 429 indicates that the rate limit was exceeded.  The number of allowed requests, and the length of the time window, vary by method and endpoint. The reference information for each endpoint specifies the rate limit that applies.  ## Related APIs  When you work with the resource controller endpoints, it might be helpful to be aware of the IBM Cloud OSB APIs used to create your service broker.  * [IBM Cloud Open Service Broker](https://cloud.ibm.com/apidocs/resource-controller/ibm-cloud-osb-api) * [IBM Cloud Resource Manager](https://cloud.ibm.com/apidocs/resource-controller/resource-manager)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.23.0

=end

require 'spec_helper'
require 'json'

# Unit tests for IbmCloudResourceController::ResourceInstancesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ResourceInstancesApi' do
  before do
    # run before each test
    @api_instance = IbmCloudResourceController::ResourceInstancesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ResourceInstancesApi' do
    it 'should create an instance of ResourceInstancesApi' do
      expect(@api_instance).to be_instance_of(IbmCloudResourceController::ResourceInstancesApi)
    end
  end

  # unit tests for cancel_lastop_resource_instance
  # Cancel the in progress last operation of the resource instance
  # Cancel the in progress last operation of the resource instance. This is applicable for instances where the in progress last operation is &#x60;cancelable&#x60;.
  # @param id The resource instance URL-encoded CRN or GUID.
  # @param [Hash] opts the optional parameters
  # @return [ResourceInstance]
  describe 'cancel_lastop_resource_instance test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_resource_instance
  # Create (provision) a new resource instance
  # When you provision a service you get an instance of that service. An instance represents the resource with which you create, and additionally, represents a chargeable record of which billing can occur.
  # @param resource_instance_post 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :entity_lock Indicates if the resource instance is locked for further update or delete operations. It does not affect actions performed on child resources like keys. False by default.
  # @return [ResourceInstance]
  describe 'create_resource_instance test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_resource_instance
  # Delete a resource instance
  # Delete a resource instance by URL-encoded CRN or GUID. If the resource instance has any resource keys associated with it, use the &#x60;recursive&#x3D;true&#x60; parameter to delete it.
  # @param id The resource instance URL-encoded CRN or GUID.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :recursive Will delete keys associated with the instance.
  # @return [nil]
  describe 'delete_resource_instance test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_resource_instance
  # Get a resource instance
  # Retrieve a resource instance by URL-encoded CRN or GUID. Find more details on a particular instance, like when it was provisioned and who provisioned it.
  # @param id The resource instance URL-encoded CRN or GUID.
  # @param [Hash] opts the optional parameters
  # @return [ResourceInstance]
  describe 'get_resource_instance test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_resource_instances
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
  # @option opts [Integer] :limit Limit on how many items should be returned. The number of items returned may be less than the specified limit if the caller lacks sufficient access to retrieve certain resource instances.
  # @option opts [String] :start An optional token that indicates the beginning of the page of results to be returned. Any additional query parameters are ignored if a page token is present. If omitted, the first page of results is returned. This value is obtained from the &#39;start&#39; query parameter in the &#39;next_url&#39; field of the operation response.
  # @option opts [String] :state The state of the instance. If not specified, instances in state &#x60;active&#x60;, &#x60;inactive&#x60;, &#x60;failed&#x60;, &#x60;provisioning&#x60; and &#x60;pre_provisioning&#x60; are returned.
  # @option opts [String] :updated_from Start date inclusive filter.
  # @option opts [String] :updated_to End date inclusive filter.
  # @option opts [String] :sort Optional sort property, valid values are &#x60;name&#x60;, &#x60;created_at&#x60; and &#x60;updated_at&#x60;. If specified, the items are sorted by the value of this property.
  # @option opts [String] :order Optional sort order, valid values are &#x60;asc&#x60; and &#x60;desc&#x60;.
  # @return [ResourceInstancesList]
  describe 'list_resource_instances test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_resource_keys_for_instance
  # Get a list of all the resource keys for the instance.
  # You may have many resource keys for one resource instance. For example, you may have a different resource key for each user or each role.
  # @param id The resource instance URL-encoded CRN or GUID.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Limit on how many items should be returned. The number of items returned may be less than the specified limit if the caller lacks sufficient access to retrieve certain resource keys.
  # @option opts [String] :start An optional token that indicates the beginning of the page of results to be returned. Any additional query parameters are ignored if a page token is present. If omitted, the first page of results is returned. This value is obtained from the &#39;start&#39; query parameter in the &#39;next_url&#39; field of the operation response.
  # @option opts [String] :sort Optional sort property, valid values are &#x60;name&#x60;, &#x60;created_at&#x60; and &#x60;updated_at&#x60;. If specified, the items are sorted by the value of this property.
  # @option opts [String] :order Optional sort order, valid values are &#x60;asc&#x60; and &#x60;desc&#x60;.
  # @return [ResourceKeysList]
  describe 'list_resource_keys_for_instance test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for lock_resource_instance
  # Lock a resource instance
  # Locks a resource instance. A locked instance can not be updated or deleted. It does not affect actions performed on child resources like keys.
  # @param id The resource instance URL-encoded CRN or GUID.
  # @param [Hash] opts the optional parameters
  # @return [ResourceInstance]
  describe 'lock_resource_instance test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for unlock_resource_instance
  # Unlock a resource instance
  # Unlock a resource instance to update or delete it. Unlocking a resource instance does not affect child resources like keys.
  # @param id The resource instance URL-encoded CRN or GUID.
  # @param [Hash] opts the optional parameters
  # @return [ResourceInstance]
  describe 'unlock_resource_instance test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_resource_instance
  # Update a resource instance
  # Use the resource instance URL-encoded CRN or GUID to make updates to the resource instance, like changing the name or plan.
  # @param id The resource instance URL-encoded CRN or GUID.
  # @param resource_instance_patch 
  # @param [Hash] opts the optional parameters
  # @return [ResourceInstance]
  describe 'update_resource_instance test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
