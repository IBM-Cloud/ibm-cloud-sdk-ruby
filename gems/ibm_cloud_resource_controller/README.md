# ibm_cloud_resource_controller

IbmCloudResourceController - the Ruby gem for the Resource Controller

## Introduction

The resource controller is the next-generation IBM Cloud® platform provisioning layer that manages the lifecycle of IBM Cloud resources in a customer account. A resource is an instance of a service like Cloudant, a Cloud Foundry application, a virtual machine, a container, a software image, or a data set.

The resource controller provides APIs to help you manage the following elements of your resource lifecycle:
* Catalog management
* Provisioning (creating an instance)
* Updating a resource instance
* Resource keys
* De-provisioning (deleting an instance)
* Dashboard SSO

Resources are provisioned globally in an account scope. The resource controller supports both synchronous and asynchronous provisioning of resources.

Resources are created by the resource controller within [resource groups](https://console.cloud.ibm.com/docs/overview/resource-groups.html#whatis). A resource group belongs to an account. All IBM Cloud resources must be provisioned within a resource group. If an account is suspended, the corresponding resource group is suspended as well, and all resources within the resource group are suspended.

Installing the Java SDK

Maven

```xml
<dependency>
 <groupId>com.ibm.cloud</groupId>
 <artifactId>resource-controller</artifactId>
 <version>{version}</version>
</dependency>
```

Gradle

```bash
'com.ibm.cloud:resource-controller:{version}'
```

Replace `{version}` in these examples with the release version.

View on GitHub

[https://github.com/IBM/platform-services-java-sdk](https://github.com/IBM/platform-services-java-sdk)

Installing the Go SDK

Go modules (recommended): Add the following import in your code, and then run `go build` or `go mod tidy`

```go
import (
 \"github.com/IBM/platform-services-go-sdk/resourcecontrollerv2\"
)
```

Go get

```bash
go get -u github.com/IBM/platform-services-go-sdk/resourcecontrollerv2
```

View on GitHub

[https://github.com/IBM/platform-services-go-sdk](https://github.com/IBM/platform-services-go-sdk)

Installation

```bash
npm install @ibm-cloud/platform-services
```

For more installation options, view this project in GitHub.
https://github.com/IBM/platform-services-node-sdk

Installation

```bash
pip install --upgrade \"ibm-platform-services\"
```

For more installation options, view this project in GitHub.
https://github.com/IBM/platform-services-python-sdk

### Resource instances

The resource controller can provision or create an instance. Provisioning reserves a resource on a service, and the reserved resource is a service instance. A resource instance can vary by service. Examples include a single database on a multi-tenant server, a dedicated cluster, or an account on a web application.

API endpoint

```bash
https://resource-controller.cloud.ibm.com
```

API endpoint

```bash
https://resource-controller.cloud.ibm.com
```

API endpoint

```bash
https://resource-controller.cloud.ibm.com
```

API endpoint

```bash
https://resource-controller.cloud.ibm.com
```

API endpoint

```bash
https://resource-controller.cloud.ibm.com
```

### Using the SDK

With the Java SDK, you can build a service client for the Resource Controller by implementing the `ResourceController` class within the `com.ibm.cloud.platform_services.resource_controller.v2` package. To construct the client, you can set your options programmatically, or you can define external configuration properties to be used by your application.

The examples that are provided on this page demonstrate how to build a service client by using these two options. For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).

With the Go SDK, you can build a service client for the Resource Controller by implementing the `ResourceControllerV2` class within the `resourcecontrollerv2` package. To construct the client, you can set your options programmatically, or you can define external configuration properties to be used by your application.

The examples that are provided on this page demonstrate how to build a service client by using these two options. For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).

With the Node.js SDK, you can build a service client for the Resource Controller by implementing the `ResourceControllerV2` class within the `resource-controller/v2` module. To construct the client, you can set your options programmatically, or you can define external configuration properties to be used by your application.

The examples that are provided on this page demonstrate how to build a service client by using these two options. For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).

With the Python SDK, you can build a service client for the Resource Controller by implementing the `ResourceControllerV2` class within the `ibm-platform-services` module. To construct the client, you can set your options programmatically, or you can define external configuration properties to be used by your application.

The examples that are provided on this page demonstrate how to build a service client by using these two options. For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).

## Endpoint URLs

The Resource Controller API uses the following global endpoint URL for all regions. When you call the API, add the path for each method to form the complete API endpoint for your requests.

```
https://resource-controller.cloud.ibm.com
```

If you enabled service endpoints in your account, you can send API requests over the IBM Cloud private network at the following base endpoint URLs. For more information, see [Enabling VRF and service endpoints](https://cloud.ibm.com/docs/account?topic=account-vrf-service-endpoint).

* Private endpoint URL for VPC infrastructure (only available in US regions): `https://private.resource-controller.cloud.ibm.com`
* Private endpoint URLs for classic and non-US region VPC infrastructure:
   * Dallas: `https://private.us-south.resource-controller.cloud.ibm.com`
   * Washington DC: `https://private.us-east.resource-controller.cloud.ibm.com`

Example API request
```
curl -X {request_method} \"https://resource-controller.cloud.ibm.com/{method_endpoint}\"
```
Replace `{request_method}` and `{method_endpoint}` in this example with the values for your particular API call.

## Authentication

To work with the API, you must use an IBM Cloud Identity and Access Management (IAM) access token. The token is used to determine the actions that a user or service ID has access to when they use the API.

Obtaining an IAM token for an authenticated user or service ID is described in the [IAM Identity Services API](https://cloud.ibm.com/apidocs/iam-identity-token-api) documentation.

To use the API, add a valid IAM token to the HTTP Authorization request header, for example, `-H 'Authorization: Bearer <TOKEN>'`.

When you use the SDK, configure an IAM authenticator with the IAM API key. The authenticator automatically obtains the IAM access token for the API key and includes it with each request. You can construct an authenticator in either of two ways:
- Programmatically by constructing an IAM authenticator instance and supplying your IAM API key
- By defining the API key in external configuration properties and then using the SDK authenticator factory to construct an IAM authenticator that uses the configured IAM API key

In this example of using external configuration properties, an IAM authenticator instance is created with the configured API key, and then the service client is constructed with this authenticator instance and the configured service URL.

For more information, see the Authentication section of the [IBM Cloud SDK Common](https://github.com/IBM/ibm-cloud-sdk-common/blob/main/README.md) documentation.

For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).

For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).

For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).

For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).

To retrieve your access token:

```bash
curl -X POST
https://iam.cloud.ibm.com/identity/token
  -H \"Content-Type: application/x-www-form-urlencoded\"
  -H \"Accept: application/json\"
  -d \"grant_type=urn%3Aibm%3Aparams%3Aoauth%3Agrant-type%3Aapikey&apikey=<API_KEY>\"
```

Replace `<API_KEY>` with your service credentials. Then, use the full `IAM token` value that is prefixed by the _Bearer_ token type to authenticate your API requests.

To retrieve your instance ID:

```bash
ibmcloud resource service-instance <instance_name> --id
```

Replace `<instance_name>` with the `name` that you assigned to your service instance.

Setting client options through external configuration

Example environment variables, where `<API_KEY>` is your IAM API key
```sh
export RESOURCE_CONTROLLER_APIKEY=<API_KEY>
```

Example of constructing the service client
```java
import com.ibm.cloud.platform_services.resource_controller.v2.ResourceController;
...
ResourceController resourceControllerService = ResourceController.newInstance();
```

Setting client options through external configuration

Example environment variables, where `<API_KEY>` is your IAM API key
```sh
export RESOURCE_CONTROLLER_APIKEY=<API_KEY>
```

Example of constructing the service client
```go
import {
    \"github.com/IBM/platform-services-go-sdk/resourcecontrollerv2\"
}
...
resourceControllerServiceOptions := &resourcecontrollerv2.ResourceControllerV2Options{}
resourceControllerService, err := resourcecontrollerv2.NewResourceControllerV2UsingExternalConfig(resourceControllerServiceOptions)
```

Setting client options through external configuration

Example environment variables, where `<API_KEY>` is your IAM API key
```sh
export RESOURCE_CONTROLLER_APIKEY=<API_KEY>
```

Example of constructing the service client
```python
from ibm_platform_services import ResourceControllerV2
...
resource_controller_service = ResourceControllerV2.new_instance()
```

Setting client options through external configuration

Example environment variables, where `<API_KEY>` is your IAM API key
```sh
export RESOURCE_CONTROLLER_APIKEY=<API_KEY>
```

Example of constructing the service client
```javascript
const ResourceControllerV2 = require('ibm-platform-services/resource-controller/v2');
...
const resourceControllerService = ResourceControllerV2.newInstance({});
```

## Error handling

This API uses standard HTTP response codes to indicate whether a method completed successfully. A `200` response indicates success. A `400` type response indicates a failure, and a `500` type response indicates an internal system error.

Additionally, each response includes a `Transaction-Id` header that can be referenced when you contact [IBM Cloud support](https://www.ibm.com/cloud/support).

| HTTP Error Code | Description           | Recovery |
|-----------------|-----------------------|----------|
| `200`           | Success               | The request was successful. |
| `400`           | Bad Request           | The input parameters in the request body are either incomplete or in the wrong format. Be sure to include all required parameters in your request. |
| `401`           | Unauthorized          | You are not authorized to make this request. Log in to IBM Cloud and try again. If this error persists, contact the account owner to check your permissions. |
| `403`           | Forbidden             | The supplied authentication is not authorized to access '{namespace}'. |
| `404`           | Not Found             | The requested resource could not be found. |
| `409`           | Conflict              | The entity is already in the requested state. |
| `410`           | Gone                  | The resource is valid but was removed in a previous call. |
| `500`           | Internal Server Error | *Offering_name* is unavailable. Your request could not be processed. Wait a few minutes and try again. |

## Auditing

You can monitor API activity within your account by using the IBM Cloud Logs service. Whenever an API method is called, an event is generated that you can then track and audit from within IBM Cloud Logs. The specific event type is listed for each individual method.

For more information about how to track Account and Billing activity, see [Activity tracking events for account management](https://cloud.ibm.com/docs/account?topic=account-at_events_am).

## Pagination

Some API requests might return a large number of results. To avoid performance issues, these results are returned one page at a time, with a limited number of results on each page. GET requests for the following resources use pagination:

   * /v2/resource_instances
   * /v2/resource_keys

The default page and max size is 100 objects. To use a different page size, use the `limit` query parameter.

For any request that uses pagination, the response includes a `next_url` object that specifies pagination information. `next_url` is the URL for requesting the next page of results. The `next_url` property is null if there are no more results, and retains the same `limit` parameter that is used for the initial request.

## Rate limiting

Rate limits for API requests are enforced on a per-caller basis. If the number of requests for a particular method and endpoint reaches the request limit within the specified time window, no further requests are accepted until the timer expires. After the timer expires, a new time window begins with the next accepted request.

The response to each HTTP request includes headers you can use to determine whether you are close to the rate limit:

   * X-RateLimit-Reset: the time the current timer expires (in UNIX epoch time)
   * X-RateLimit-Remaining: the number of remaining requests in the current time window
   * X-RateLimit-Limit: the total number of requests allowed within the time window

An HTTP status code of 429 indicates that the rate limit was exceeded.

The number of allowed requests, and the length of the time window, vary by method and endpoint. The reference information for each endpoint specifies the rate limit that applies.

## Related APIs

When you work with the resource controller endpoints, it might be helpful to be aware of the IBM Cloud OSB APIs used to create your service broker.

* [IBM Cloud Open Service Broker](https://cloud.ibm.com/apidocs/resource-controller/ibm-cloud-osb-api)
* [IBM Cloud Resource Manager](https://cloud.ibm.com/apidocs/resource-controller/resource-manager)

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.0
- Package version: 2.0.3
- Generator version: 7.23.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build ibm_cloud_resource_controller.gemspec
```

Then either install the gem locally:

```shell
gem install ./ibm_cloud_resource_controller-2.0.3.gem
```

(for development, run `gem install --dev ./ibm_cloud_resource_controller-2.0.3.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'ibm_cloud_resource_controller', '~> 2.0.3'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'ibm_cloud_resource_controller', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'ibm_cloud_resource_controller'

# Setup authorization
IbmCloudResourceController.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudResourceController::ResourceInstancesApi.new
id = 'id_example' # String | The resource instance URL-encoded CRN or GUID.

begin
  #Cancel the in progress last operation of the resource instance
  result = api_instance.cancel_lastop_resource_instance(id)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceInstancesApi->cancel_lastop_resource_instance: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://resource-controller.cloud.ibm.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*IbmCloudResourceController::ResourceInstancesApi* | [**cancel_lastop_resource_instance**](docs/ResourceInstancesApi.md#cancel_lastop_resource_instance) | **DELETE** /v2/resource_instances/{id}/last_operation | Cancel the in progress last operation of the resource instance
*IbmCloudResourceController::ResourceInstancesApi* | [**create_resource_instance**](docs/ResourceInstancesApi.md#create_resource_instance) | **POST** /v2/resource_instances | Create (provision) a new resource instance
*IbmCloudResourceController::ResourceInstancesApi* | [**delete_resource_instance**](docs/ResourceInstancesApi.md#delete_resource_instance) | **DELETE** /v2/resource_instances/{id} | Delete a resource instance
*IbmCloudResourceController::ResourceInstancesApi* | [**get_resource_instance**](docs/ResourceInstancesApi.md#get_resource_instance) | **GET** /v2/resource_instances/{id} | Get a resource instance
*IbmCloudResourceController::ResourceInstancesApi* | [**list_resource_instances**](docs/ResourceInstancesApi.md#list_resource_instances) | **GET** /v2/resource_instances | Get a list of all resource instances
*IbmCloudResourceController::ResourceInstancesApi* | [**list_resource_keys_for_instance**](docs/ResourceInstancesApi.md#list_resource_keys_for_instance) | **GET** /v2/resource_instances/{id}/resource_keys | Get a list of all the resource keys for the instance.
*IbmCloudResourceController::ResourceInstancesApi* | [**lock_resource_instance**](docs/ResourceInstancesApi.md#lock_resource_instance) | **POST** /v2/resource_instances/{id}/lock | Lock a resource instance
*IbmCloudResourceController::ResourceInstancesApi* | [**unlock_resource_instance**](docs/ResourceInstancesApi.md#unlock_resource_instance) | **DELETE** /v2/resource_instances/{id}/lock | Unlock a resource instance
*IbmCloudResourceController::ResourceInstancesApi* | [**update_resource_instance**](docs/ResourceInstancesApi.md#update_resource_instance) | **PATCH** /v2/resource_instances/{id} | Update a resource instance
*IbmCloudResourceController::ResourceKeysApi* | [**create_resource_key**](docs/ResourceKeysApi.md#create_resource_key) | **POST** /v2/resource_keys | Create a new resource key
*IbmCloudResourceController::ResourceKeysApi* | [**delete_resource_key**](docs/ResourceKeysApi.md#delete_resource_key) | **DELETE** /v2/resource_keys/{id} | Delete a resource key
*IbmCloudResourceController::ResourceKeysApi* | [**get_resource_key**](docs/ResourceKeysApi.md#get_resource_key) | **GET** /v2/resource_keys/{id} | Get resource key
*IbmCloudResourceController::ResourceKeysApi* | [**list_resource_keys**](docs/ResourceKeysApi.md#list_resource_keys) | **GET** /v2/resource_keys | Get a list of all of the resource keys
*IbmCloudResourceController::ResourceKeysApi* | [**update_resource_key**](docs/ResourceKeysApi.md#update_resource_key) | **PATCH** /v2/resource_keys/{id} | Update a resource key
*IbmCloudResourceController::ResourceReclamationsApi* | [**list_reclamations**](docs/ResourceReclamationsApi.md#list_reclamations) | **GET** /v1/reclamations | Get a list of all reclamations
*IbmCloudResourceController::ResourceReclamationsApi* | [**run_reclamation_action**](docs/ResourceReclamationsApi.md#run_reclamation_action) | **POST** /v1/reclamations/{id}/actions/{action_name} | Perform a reclamation action


## Documentation for Models

 - [IbmCloudResourceController::Credentials](docs/Credentials.md)
 - [IbmCloudResourceController::ErrorReport](docs/ErrorReport.md)
 - [IbmCloudResourceController::LastOperation](docs/LastOperation.md)
 - [IbmCloudResourceController::PlanHistoryItem](docs/PlanHistoryItem.md)
 - [IbmCloudResourceController::Reclamation](docs/Reclamation.md)
 - [IbmCloudResourceController::ReclamationActionsPost](docs/ReclamationActionsPost.md)
 - [IbmCloudResourceController::ReclamationsList](docs/ReclamationsList.md)
 - [IbmCloudResourceController::ResourceInstance](docs/ResourceInstance.md)
 - [IbmCloudResourceController::ResourceInstancePatch](docs/ResourceInstancePatch.md)
 - [IbmCloudResourceController::ResourceInstancePost](docs/ResourceInstancePost.md)
 - [IbmCloudResourceController::ResourceInstancesList](docs/ResourceInstancesList.md)
 - [IbmCloudResourceController::ResourceKey](docs/ResourceKey.md)
 - [IbmCloudResourceController::ResourceKeyPatch](docs/ResourceKeyPatch.md)
 - [IbmCloudResourceController::ResourceKeyPost](docs/ResourceKeyPost.md)
 - [IbmCloudResourceController::ResourceKeyPostParameters](docs/ResourceKeyPostParameters.md)
 - [IbmCloudResourceController::ResourceKeysList](docs/ResourceKeysList.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### IAM


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

