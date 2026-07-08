# ibm_cloud_iam

IbmCloudIam - the Ruby gem for the IAM Identity Services

 

## Introduction

The IAM Identity Service API is used to manage service IDs, API key identities, trusted profiles, account security settings and to create IAM access tokens for a user or service ID.

With trusted profile templates and assignments you can centrally manage access for child accounts in your organization from the root enterprise account. Similarly with settings templates and assignments, you can centrally administer account security settings. For more information, see [Working with template versions](https://cloud.ibm.com/docs/secure-enterprise?topic=secure-enterprise-working-with-versions&interface=ui) and [Best practices for assigning access in an enterprise](https://cloud.ibm.com/docs/secure-enterprise?topic=secure-enterprise-access-enterprises).

SDKs for Java, Node, Python, and Go are available to make it easier to programmatically access the API from your code. The client libraries that are provided by the SDKs implement best practices for using the API and reduce the amount of code that you need to write. The tab for each language includes code examples that demonstrate how to use the client libraries. For more information about using the SDKs, see the [IBM Cloud SDK Common project](https://github.com/IBM/ibm-cloud-sdk-common) on GitHub.

Installing the Java SDK

Maven

```xml
<dependency>
 <groupId>com.ibm.cloud</groupId>
 <artifactId>iam-identity</artifactId>
 <version>{version}</version>
</dependency>
```

Gradle

```bash
compile 'com.ibm.cloud:iam-identity:{version}'
```

Replace `{version}` in these examples with the release version.

View on GitHub

[https://github.com/IBM/platform-services-java-sdk](https://github.com/IBM/platform-services-java-sdk)

Installing the Go SDK

Go modules (recommended): Add the following import in your code, and then run `go build` or `go mod tidy`

```go
import (
 \"github.com/IBM/platform-services-go-sdk/iamidentityv1\"
)
```

```bash
go get -u github.com/IBM/platform-services-go-sdk/iamidentityv1
```

View on GitHub

[https://github.com/IBM/platform-services-go-sdk](https://github.com/IBM/platform-services-go-sdk)

Installing the Node SDK

```bash
npm install @ibm-cloud/platform-services
```

View on GitHub

[https://github.com/IBM/platform-services-node-sdk](https://github.com/IBM/platform-services-node-sdk)

Installing the Python SDK

```bash
pip install --upgrade \"ibm-platform-services\"
```

View on GitHub

[https://github.com/IBM/platform-services-python-sdk](https://github.com/IBM/platform-services-python-sdk)

The examples that are provided on this page demonstrate how to use IAM Identity Service For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).

The examples that are provided on this page demonstrate how to use IAM Identity Service For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).

The examples that are provided on this page demonstrate how to use IAM Identity Service For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).

The examples that are provided on this page demonstrate how to use IAM Identity Service For more information and detailed examples, check out the [IBM Cloud SDK Common project on GitHub](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md).

## Endpoint URLs

The IAM Identity Services API uses the following public global endpoint URL. When you call the API, add the path for each method to form the complete API endpoint for your requests.

```bash
https://iam.cloud.ibm.com
```

Virtual private cloud (VPC) based access requires a virtual private endpoint gateway (VPE gateway). For more information , see [Creating an endpoint gateway](https://cloud.ibm.com/docs/vpc?topic=vpc-ordering-endpoint-gateway).

* Private endpoint URL for VPC infrastructure: `https://private.iam.cloud.ibm.com`. 

VPE gateway creation is supported in all datacenters (see https://cloud.ibm.com/docs/overview?topic=overview-locations#regions).

If you enabled service endpoints in your account, you can send API requests over the IBM Cloud® private network at the following base endpoint URLs. For more information, see [Enabling VRF and service endpoints](https://cloud.ibm.com/docs/account?topic=account-vrf-service-endpoint).

* Private endpoint URLs for classic infrastructure. Supported URLs: 

   * Sydney: `https://private.au-syd.iam.cloud.ibm.com`
   * Sao Paulo: `https://private.br-sao.iam.cloud.ibm.com`
   * Montreal: `https://private.ca-mon.iam.cloud.ibm.com`
   * Toronto: `https://private.ca-tor.iam.cloud.ibm.com`
   * Frankfurt DC: `https://private.eu-de.iam.cloud.ibm.com`
   * London: `https://private.eu-gb.iam.cloud.ibm.com`
   * Madrid: `https://private.eu-es.iam.cloud.ibm.com`
   * Tokyo: `https://private.jp-tok.iam.cloud.ibm.com`
   * Osaka: `https://private.jp-osa.iam.cloud.ibm.com`
   * Washington DC: `https://private.us-east.iam.cloud.ibm.com`
   * Dallas: `https://private.us-south.iam.cloud.ibm.com`

IAM is a global service and deployed to multiple MZRs world wide. IAM can be reached from all locations using the public global endpoint or using one of the private endpoints. Each request is sent to the closest region related to the client that invokes the call to IAM.

Example API request

```bash
curl -u \"apikey:{apikey}\" -X {request_method} \"https://iam.cloud.ibm.com/{method_endpoint}\"
```

Replace `{apikey}`, `{request_method}`, and `{method_endpoint}` in this example with the values for your particular API call.

## Authentication

Authorization to the Identity Services REST API is enforced by using an IBM Cloud Identity and Access Management (IAM) access token. The token is used to determine the actions that a user or service ID has access to when they use the API. 

You can generate an access token by first [creating an API key](https://cloud.ibm.com/docs/account?topic=account-iamtoken_from_apikey) and then exchanging your API key for an IBM Cloud IAM token. 

Don't have an API key? Try running `ibmcloud iam oauth-tokens` in the [IBM Cloud Shell](https://cloud.ibm.com/shell) to quickly generate a personal access token.

When you use the SDK, configure an IAM authenticator with the IAM API key. The authenticator automatically obtains the IAM access token for the API key and includes it with each request. You can construct an authenticator in either of two ways:
- Programmatically by constructing an IAM authenticator instance and supplying your IAM API key 
- By defining the API key in external configuration properties and then using the SDK authenticator factory to construct an IAM authenticator that uses the configured IAM API key

In this example of using external configuration properties, an IAM authenticator instance is created with the configured API key, and then the service client is constructed with this authenticator instance and the configured service URL.

For more information, see the Authentication section of the [IBM Cloud SDK Common](https://github.com/IBM/ibm-cloud-sdk-common/blob/main/README.md) documentation.

To call each method, you'll need to be assigned a role that includes the required IAM actions. Each method lists the associated action. For more information about IAM actions and how they map to roles, see [IAM Identity service](https://cloud.ibm.com/docs/account?topic=account-account-services#identity-service-account-management).

To retrieve your access token:

```bash
curl -X POST \\
  \"https://iam.cloud.ibm.com/identity/token\" \\
  --header 'Content-Type: application/x-www-form-urlencoded' \\
  --header 'Accept: application/json' \\
  --data-urlencode 'grant_type=urn:ibm:params:oauth:grant-type:apikey' \\
  --data-urlencode 'apikey=<API_KEY>'
```

Replace `<API_KEY>` with your IAM API key.

Setting client options through external configuration

Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key
```sh
export IAM_IDENTITY_URL=<SERVICE_URL>
export IAM_IDENTITY_AUTHTYPE=iam
export IAM_IDENTITY_APIKEY=<API_KEY>
```

Example of constructing the service client
```go
import {
    \"github.com/IBM/platform-services-go-sdk/iamidentityv1\"
}
...
serviceClientOptions := &iamidentityv1.IamIdentityV1Options{}
serviceClient, err := iamidentityv1.NewIamIdentityV1UsingExternalConfig(serviceClientOptions)
```

Setting client options through external configuration

Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key
```sh
export IAM_IDENTITY_URL=<SERVICE_URL>
export IAM_IDENTITY_AUTHTYPE=iam
export IAM_IDENTITY_APIKEY=<API_KEY>
```

Example of constructing the service client
```java
import com.ibm.cloud.platform_services.iam_identity.v1.IamIdentity;
...
IamIdentity serviceClient = IamIdentity.newInstance();
```

Setting client options through external configuration

Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key
```sh
export IAM_IDENTITY_URL=<SERVICE_URL>
export IAM_IDENTITY_AUTHTYPE=iam
export IAM_IDENTITY_APIKEY=<API_KEY>
```

Example of constructing the service client
```javascript
const IamIdentityV1 = require('@ibm-cloud/platform-services/iam-identity/v1');
...
const serviceClient = IamIdentityV1.newInstance({});
```

Setting client options through external configuration

Example environment variables, where `<SERVICE_URL>` is the endpoint URL and `<API_KEY>` is your IAM API key
```sh
export IAM_IDENTITY_URL=<SERVICE_URL>
export IAM_IDENTITY_AUTHTYPE=iam
export IAM_IDENTITY_APIKEY=<API_KEY>
```

Example of constructing the service client
```python
from ibm_platform_services import IamIdentityV1
...
service_client = IamIdentityV1.new_instance()
```

You authenticate to the API by using Cloud Identity and Access Management (IAM). You can pass either a bearer token in an authorization header or an [API key](https://cloud.ibm.com/docs/account?topic=account-manapikey).

The SDK provides initialization methods for each form of authentication.

- Use the API key to have the SDK manage the lifecycle of the access token. The SDK requests an access token, ensures that the access token is valid, includes the access token in each outgoing request, and refreshes it when it expires.
- Use the access token to manage the lifecycle yourself. Keep in mind that access tokens are valid for 1 hour, so you must refresh them regularly to maintain access.

For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).

For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).

For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).

For more information, see [IAM authentication with the SDK](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication).

## Auditing

You can monitor API activity within your account by using the IBM Cloud Logs service. Whenever an API method is called, an event is generated that you can then track and audit from within IBM Cloud Logs. The specific event type is listed for each individual method.

If an event is tracked for a method, you can find it listed with the method. For more information about how to track IAM activity, see [Activity tracking events for IAM](https://cloud.ibm.com/docs/account?topic=account-at_events_iam).

## Error handling

The IAM Token Service uses standard HTTP response codes to indicate whether a method completed successfully. A `200` response always indicates success. A `400` type response indicates that a parameter validation failed and can occur if required parameters are missing or if any parameter values are invalid. A `401` or `403` response indicates that the incoming request did not contain valid authentication information. A `500` type response indicates an internal server error that is seen in an unexpected error situation.

The Identity Services REST APIs return standard HTTP status codes to indicate the success or failure of a request. The format of the response is represented in JSON as follows:
```json
{
    \"trace\": \"9daee671-916a-4678-850b-10b911f0236d\",
    \"errors\": [
        {
            \"code\": \"invalid_access_token\",
            \"message\": \"The provided access token provided is invalid.\"
        }
    ]
    \"status_code\": 401
}
```
If an operation cannot be fulfilled, an appropriate 400 or 500 series HTTP response is returned from the server. The operations that are defined in the `Reference` section describe example errors that might be returned from a failed request. All responses from the Identity Services REST API are in JSON format.

The following table show the potential error codes the API might return.

| HTTP Error Code | Description | Recovery |
|-----------------|-------------|----------|
| `200` | Success | The request was successful. |
| `201` | Created | The resource was successfully created. |
| `204` | No Content | The request was successful. No response body is provided. |
| `400` | Bad Request | The input parameters in the request body are either incomplete or in the wrong format. Be sure to include all required parameters in your request. |
| `401` | Unauthorized | You are not authorized to make this request. The token is either missing or expired. Get a new valid token and try again.     |
| `403` | Forbidden | The supplied authentication is not authorized to perform the operation. If this error persists, contact the account owner to check your permissions. |
| `404` | Not Found | The requested resource can't be found. |
| `409` | Conflict | The entity is already in the requested state. |
| `429` | Too Many Requests | Too many requests have been made within a time window. Wait before calling the API again. |
| `500` | Internal error | Error that is seen in an unexpected error situation. |

## Additional headers

Some additional headers might be required to make successful requests to the API.
Those additional headers are:

An optional transaction ID can be passed to your request, which can be useful for tracking calls through multiple services using one identifier. The header key must be set to `Transaction-Id` and the value is anything that you choose.

If there is not a transaction ID that is passed in, then one is generated randomly.

## API Parameters
Some API parameter have additional details that need to be considered while using it in a request.
Those API parameters are as follow:

### Filtering list results

When listing service IDs, trusted profiles or API keys you can filter the result set by providing an optional `filter` parameter. The exact syntax of this parameter is described below. Query syntax will follow the SCIM query syntax with reduced operator support. The value must be URL encoded. Only the following operators are supported. 
* Supported attribute operators-
 - `sw` - starts with
 - `sw_ci` - starts with ingnore case - non SCIM standard
 - `ew` - ends with
 - `ew_ci` - ends with ingnore case - non SCIM standard
 - `co` - contains
 - `co_ci` - contains ingnore case - non SCIM standard
* Supported operators-
  - `and`
  - `or`
* Grouping operators-
  - `()`
* Data Values
  -`Text`
* Sample
  - `name co \"Foo\" and description sw \"Bar\"`

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Package version: 1.0.1
- Generator version: 7.23.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build ibm_cloud_iam.gemspec
```

Then either install the gem locally:

```shell
gem install ./ibm_cloud_iam-1.0.1.gem
```

(for development, run `gem install --dev ./ibm_cloud_iam-1.0.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'ibm_cloud_iam', '~> 1.0.1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'ibm_cloud_iam', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::APIKeysApi.new
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
create_api_key_request = IbmCloudIam::CreateApiKeyRequest.new({name: 'name_example', iam_id: 'iam_id_example'}) # CreateApiKeyRequest | Request to create an API key.
opts = {
  entity_lock: 'entity_lock_example', # String | Indicates if the API key is locked for further write operations. False by default.
  entity_disable: 'entity_disable_example' # String | Indicates if the API key is disabled. False by default.
}

begin
  #Create an API key
  result = api_instance.create_api_key(authorization, create_api_key_request, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Exception when calling APIKeysApi->create_api_key: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://iam.cloud.ibm.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*IbmCloudIam::APIKeysApi* | [**create_api_key**](docs/APIKeysApi.md#create_api_key) | **POST** /v1/apikeys | Create an API key
*IbmCloudIam::APIKeysApi* | [**delete_api_key**](docs/APIKeysApi.md#delete_api_key) | **DELETE** /v1/apikeys/{id} | Deletes an API key
*IbmCloudIam::APIKeysApi* | [**disable_api_key**](docs/APIKeysApi.md#disable_api_key) | **POST** /v1/apikeys/{id}/disable | Disable the API key
*IbmCloudIam::APIKeysApi* | [**enable_api_key**](docs/APIKeysApi.md#enable_api_key) | **DELETE** /v1/apikeys/{id}/disable | Enable the API key
*IbmCloudIam::APIKeysApi* | [**get_api_key**](docs/APIKeysApi.md#get_api_key) | **GET** /v1/apikeys/{id} | Get details of an API key
*IbmCloudIam::APIKeysApi* | [**get_api_keys_details**](docs/APIKeysApi.md#get_api_keys_details) | **GET** /v1/apikeys/details | Get details of an API key by its value.
*IbmCloudIam::APIKeysApi* | [**list_api_keys**](docs/APIKeysApi.md#list_api_keys) | **GET** /v1/apikeys | Get API keys for a given service or user IAM ID and account ID
*IbmCloudIam::APIKeysApi* | [**lock_api_key**](docs/APIKeysApi.md#lock_api_key) | **POST** /v1/apikeys/{id}/lock | Lock the API key
*IbmCloudIam::APIKeysApi* | [**unlock_api_key**](docs/APIKeysApi.md#unlock_api_key) | **DELETE** /v1/apikeys/{id}/lock | Unlock the API key
*IbmCloudIam::APIKeysApi* | [**update_api_key**](docs/APIKeysApi.md#update_api_key) | **PUT** /v1/apikeys/{id} | Updates an API key
*IbmCloudIam::AccountLimitsApi* | [**bulk_list_account_entity_consumption**](docs/AccountLimitsApi.md#bulk_list_account_entity_consumption) | **POST** /v1/accounts/{account_id}/limits/identity | Get account entity limits via POST request
*IbmCloudIam::AccountLimitsApi* | [**get_account_limits**](docs/AccountLimitsApi.md#get_account_limits) | **GET** /v1/accounts/{account_id}/limits/identity | Get account entity limits
*IbmCloudIam::AccountSettingsApi* | [**get_account_settings**](docs/AccountSettingsApi.md#get_account_settings) | **GET** /v1/accounts/{account_id}/settings/identity | Get account configurations
*IbmCloudIam::AccountSettingsApi* | [**get_effective_account_settings**](docs/AccountSettingsApi.md#get_effective_account_settings) | **GET** /v1/accounts/{account_id}/effective_settings/identity | Get effective account settings configuration
*IbmCloudIam::AccountSettingsApi* | [**update_account_settings**](docs/AccountSettingsApi.md#update_account_settings) | **PUT** /v1/accounts/{account_id}/settings/identity | Update account configurations
*IbmCloudIam::AccountSettingsForIdPApi* | [**add_id_p_setting**](docs/AccountSettingsForIdPApi.md#add_id_p_setting) | **POST** /v2/loginsettings/{account_id}/idps/{idp_id} | Add IdP Setting
*IbmCloudIam::AccountSettingsForIdPApi* | [**get_id_p_setting**](docs/AccountSettingsForIdPApi.md#get_id_p_setting) | **GET** /v2/loginsettings/{account_id}/idps/{idp_id} | Get IdP setting
*IbmCloudIam::AccountSettingsForIdPApi* | [**get_login_settings**](docs/AccountSettingsForIdPApi.md#get_login_settings) | **GET** /v2/loginsettings/{account_id} | Get account login settings
*IbmCloudIam::AccountSettingsForIdPApi* | [**list_id_p_settings**](docs/AccountSettingsForIdPApi.md#list_id_p_settings) | **GET** /v2/loginsettings/{account_id}/idps | List IdP Settings
*IbmCloudIam::AccountSettingsForIdPApi* | [**remove_id_p_setting**](docs/AccountSettingsForIdPApi.md#remove_id_p_setting) | **DELETE** /v2/loginsettings/{account_id}/idps/{idp_id} | Remove IdP Setting
*IbmCloudIam::AccountSettingsForIdPApi* | [**update_id_p_setting**](docs/AccountSettingsForIdPApi.md#update_id_p_setting) | **PUT** /v2/loginsettings/{account_id}/idps/{idp_id} | Update IdP Setting
*IbmCloudIam::AccountSettingsForIdPApi* | [**update_login_settings**](docs/AccountSettingsForIdPApi.md#update_login_settings) | **PUT** /v2/loginsettings/{account_id} | Update account login settings
*IbmCloudIam::AccountSettingsTemplateApi* | [**commit_account_settings_template**](docs/AccountSettingsTemplateApi.md#commit_account_settings_template) | **POST** /v1/account_settings_templates/{template_id}/versions/{version}/commit | Commit a template version
*IbmCloudIam::AccountSettingsTemplateApi* | [**create_account_settings_template**](docs/AccountSettingsTemplateApi.md#create_account_settings_template) | **POST** /v1/account_settings_templates | Create an account settings template
*IbmCloudIam::AccountSettingsTemplateApi* | [**create_account_settings_template_version**](docs/AccountSettingsTemplateApi.md#create_account_settings_template_version) | **POST** /v1/account_settings_templates/{template_id}/versions | Create a new version of an account settings template
*IbmCloudIam::AccountSettingsTemplateApi* | [**delete_account_settings_template_version**](docs/AccountSettingsTemplateApi.md#delete_account_settings_template_version) | **DELETE** /v1/account_settings_templates/{template_id}/versions/{version} | Delete version of an account settings template
*IbmCloudIam::AccountSettingsTemplateApi* | [**delete_all_versions_of_account_settings_template**](docs/AccountSettingsTemplateApi.md#delete_all_versions_of_account_settings_template) | **DELETE** /v1/account_settings_templates/{template_id} | Delete all versions of an account settings template
*IbmCloudIam::AccountSettingsTemplateApi* | [**get_account_settings_template_version**](docs/AccountSettingsTemplateApi.md#get_account_settings_template_version) | **GET** /v1/account_settings_templates/{template_id}/versions/{version} | Get version of an account settings template
*IbmCloudIam::AccountSettingsTemplateApi* | [**get_latest_account_settings_template_version**](docs/AccountSettingsTemplateApi.md#get_latest_account_settings_template_version) | **GET** /v1/account_settings_templates/{template_id} | Get latest version of an account settings template
*IbmCloudIam::AccountSettingsTemplateApi* | [**list_account_settings_templates**](docs/AccountSettingsTemplateApi.md#list_account_settings_templates) | **GET** /v1/account_settings_templates | List account settings templates
*IbmCloudIam::AccountSettingsTemplateApi* | [**list_versions_of_account_settings_template**](docs/AccountSettingsTemplateApi.md#list_versions_of_account_settings_template) | **GET** /v1/account_settings_templates/{template_id}/versions | List account settings template versions
*IbmCloudIam::AccountSettingsTemplateApi* | [**update_account_settings_template_version**](docs/AccountSettingsTemplateApi.md#update_account_settings_template_version) | **PUT** /v1/account_settings_templates/{template_id}/versions/{version} | Update version of an account settings template
*IbmCloudIam::AccountSettingsTemplateAssignmentsApi* | [**create_account_settings_assignment**](docs/AccountSettingsTemplateAssignmentsApi.md#create_account_settings_assignment) | **POST** /v1/account_settings_assignments/ | Create assignment
*IbmCloudIam::AccountSettingsTemplateAssignmentsApi* | [**delete_account_settings_assignment**](docs/AccountSettingsTemplateAssignmentsApi.md#delete_account_settings_assignment) | **DELETE** /v1/account_settings_assignments/{assignment_id} | Delete assignment
*IbmCloudIam::AccountSettingsTemplateAssignmentsApi* | [**get_account_settings_assignment**](docs/AccountSettingsTemplateAssignmentsApi.md#get_account_settings_assignment) | **GET** /v1/account_settings_assignments/{assignment_id} | Get assignment
*IbmCloudIam::AccountSettingsTemplateAssignmentsApi* | [**list_account_settings_assignments**](docs/AccountSettingsTemplateAssignmentsApi.md#list_account_settings_assignments) | **GET** /v1/account_settings_assignments/ | List assignments
*IbmCloudIam::AccountSettingsTemplateAssignmentsApi* | [**update_account_settings_assignment**](docs/AccountSettingsTemplateAssignmentsApi.md#update_account_settings_assignment) | **PATCH** /v1/account_settings_assignments/{assignment_id} | Update assignment
*IbmCloudIam::ActivitiesApi* | [**create_report**](docs/ActivitiesApi.md#create_report) | **POST** /v1/activity/accounts/{account_id}/report | Trigger activity report for the account
*IbmCloudIam::ActivitiesApi* | [**get_report**](docs/ActivitiesApi.md#get_report) | **GET** /v1/activity/accounts/{account_id}/report/{reference} | Get activity report for the account
*IbmCloudIam::IDPManagementApi* | [**create_idp**](docs/IDPManagementApi.md#create_idp) | **POST** /v1/idps/ | Create IdP
*IbmCloudIam::IDPManagementApi* | [**delete_idp**](docs/IDPManagementApi.md#delete_idp) | **DELETE** /v1/idps/{idp_id} | Delete IdP
*IbmCloudIam::IDPManagementApi* | [**export_saml_metadata**](docs/IDPManagementApi.md#export_saml_metadata) | **GET** /v1/idps/{idp_id}/saml/metadata | Export SAML IdP metadata
*IbmCloudIam::IDPManagementApi* | [**get_idp**](docs/IDPManagementApi.md#get_idp) | **GET** /v1/idps/{idp_id} | Get IdP
*IbmCloudIam::IDPManagementApi* | [**get_idp_test_result**](docs/IDPManagementApi.md#get_idp_test_result) | **GET** /v1/idps/{idp_id}/test | Get IdP test results
*IbmCloudIam::IDPManagementApi* | [**import_saml_idp_metadata**](docs/IDPManagementApi.md#import_saml_idp_metadata) | **PUT** /v1/idps/{idp_id}/saml/metadata | Import SAML IdP metadata
*IbmCloudIam::IDPManagementApi* | [**list_consumer_accounts**](docs/IDPManagementApi.md#list_consumer_accounts) | **GET** /v1/idps/{idp_id}/consumers | Get consumers of IdP
*IbmCloudIam::IDPManagementApi* | [**list_idps**](docs/IDPManagementApi.md#list_idps) | **GET** /v1/idps/ | List IdPs
*IbmCloudIam::IDPManagementApi* | [**test_idp**](docs/IDPManagementApi.md#test_idp) | **POST** /v1/idps/{idp_id}/test | Trigger IdP configuration test
*IbmCloudIam::IDPManagementApi* | [**update_idp**](docs/IDPManagementApi.md#update_idp) | **PUT** /v1/idps/{idp_id} | Update IdP
*IbmCloudIam::IdentityPreferencesApi* | [**delete_preferences_on_scope_account**](docs/IdentityPreferencesApi.md#delete_preferences_on_scope_account) | **DELETE** /v1/preferences/accounts/{account_id}/identities/{iam_id}/{service}/{preference_id} | Delete Identity Preference on scope account
*IbmCloudIam::IdentityPreferencesApi* | [**get_all_preferences_on_scope_account**](docs/IdentityPreferencesApi.md#get_all_preferences_on_scope_account) | **GET** /v1/preferences/accounts/{account_id}/identities/{iam_id} | Get all Identity Preferences on scope account
*IbmCloudIam::IdentityPreferencesApi* | [**get_preferences_on_scope_account**](docs/IdentityPreferencesApi.md#get_preferences_on_scope_account) | **GET** /v1/preferences/accounts/{account_id}/identities/{iam_id}/{service}/{preference_id} | Get Identity Preference on scope account
*IbmCloudIam::IdentityPreferencesApi* | [**update_preference_on_scope_account**](docs/IdentityPreferencesApi.md#update_preference_on_scope_account) | **PUT** /v1/preferences/accounts/{account_id}/identities/{iam_id}/{service}/{preference_id} | Update Identity Preference on scope account
*IbmCloudIam::MFAEnrollmentStatusApi* | [**create_mfa_report**](docs/MFAEnrollmentStatusApi.md#create_mfa_report) | **POST** /v1/mfa/accounts/{account_id}/report | Trigger MFA enrollment status report for the account
*IbmCloudIam::MFAEnrollmentStatusApi* | [**get_mfa_report**](docs/MFAEnrollmentStatusApi.md#get_mfa_report) | **GET** /v1/mfa/accounts/{account_id}/report/{reference} | Get MFA enrollment status report for the account
*IbmCloudIam::MFAEnrollmentStatusApi* | [**get_mfa_status**](docs/MFAEnrollmentStatusApi.md#get_mfa_status) | **GET** /v1/mfa/accounts/{account_id}/status | Get MFA enrollment status for a single user in the account.
*IbmCloudIam::ServiceIDGroupsApi* | [**create_service_id_group**](docs/ServiceIDGroupsApi.md#create_service_id_group) | **POST** /v1/serviceid_groups | Create a service ID group
*IbmCloudIam::ServiceIDGroupsApi* | [**delete_service_id_group**](docs/ServiceIDGroupsApi.md#delete_service_id_group) | **DELETE** /v1/serviceid_groups/{id} | Delete a service ID group
*IbmCloudIam::ServiceIDGroupsApi* | [**get_service_id_group**](docs/ServiceIDGroupsApi.md#get_service_id_group) | **GET** /v1/serviceid_groups/{id} | Get details of a service ID group
*IbmCloudIam::ServiceIDGroupsApi* | [**list_service_id_group**](docs/ServiceIDGroupsApi.md#list_service_id_group) | **GET** /v1/serviceid_groups | List service ID groups
*IbmCloudIam::ServiceIDGroupsApi* | [**update_service_id_group**](docs/ServiceIDGroupsApi.md#update_service_id_group) | **PUT** /v1/serviceid_groups/{id} | Update a service ID group
*IbmCloudIam::ServiceIDsApi* | [**create_service_id**](docs/ServiceIDsApi.md#create_service_id) | **POST** /v1/serviceids/ | Create a service ID
*IbmCloudIam::ServiceIDsApi* | [**delete_service_id**](docs/ServiceIDsApi.md#delete_service_id) | **DELETE** /v1/serviceids/{id} | Deletes a service ID and associated API keys
*IbmCloudIam::ServiceIDsApi* | [**get_service_id**](docs/ServiceIDsApi.md#get_service_id) | **GET** /v1/serviceids/{id} | Get details of a service ID
*IbmCloudIam::ServiceIDsApi* | [**list_service_ids**](docs/ServiceIDsApi.md#list_service_ids) | **GET** /v1/serviceids/ | List service IDs
*IbmCloudIam::ServiceIDsApi* | [**lock_service_id**](docs/ServiceIDsApi.md#lock_service_id) | **POST** /v1/serviceids/{id}/lock | Lock the service ID
*IbmCloudIam::ServiceIDsApi* | [**unlock_service_id**](docs/ServiceIDsApi.md#unlock_service_id) | **DELETE** /v1/serviceids/{id}/lock | Unlock the service ID
*IbmCloudIam::ServiceIDsApi* | [**update_service_id**](docs/ServiceIDsApi.md#update_service_id) | **PUT** /v1/serviceids/{id} | Update service ID
*IbmCloudIam::TokenRetrievalApi* | [**get_token_api_key**](docs/TokenRetrievalApi.md#get_token_api_key) | **POST** /identity/token#apikey | Create an IAM access token for a user or service ID using an API key
*IbmCloudIam::TokenRetrievalApi* | [**get_token_api_key_delegated_refresh_token**](docs/TokenRetrievalApi.md#get_token_api_key_delegated_refresh_token) | **POST** /identity/token#apikey-delegated-refresh-token | Create an IAM access token and delegated refresh token for a user or service ID
*IbmCloudIam::TokenRetrievalApi* | [**get_token_assume**](docs/TokenRetrievalApi.md#get_token_assume) | **POST** /identity/token#assume | Create an IAM access token for a Trusted Profile based on the provided entity. Provided entity can be a identity based token which can be a user token, service id token or a cookie.
*IbmCloudIam::TokenRetrievalApi* | [**get_token_cr_token**](docs/TokenRetrievalApi.md#get_token_cr_token) | **POST** /identity/token#cr-token | Create an IAM access token for a Trusted Profile based on the provided Compute Resource token
*IbmCloudIam::TokenRetrievalApi* | [**get_token_iam_authz**](docs/TokenRetrievalApi.md#get_token_iam_authz) | **POST** /identity/token#iam-authz | Create an IAM access token based on an authorization policy
*IbmCloudIam::TokenRetrievalApi* | [**get_token_password**](docs/TokenRetrievalApi.md#get_token_password) | **POST** /identity/token#password | Create an IAM access token for a user using username / password credentials and an optional account identifier
*IbmCloudIam::TrustedProfileTemplateApi* | [**commit_profile_template**](docs/TrustedProfileTemplateApi.md#commit_profile_template) | **POST** /v1/profile_templates/{template_id}/versions/{version}/commit | Commit a template version
*IbmCloudIam::TrustedProfileTemplateApi* | [**create_profile_template**](docs/TrustedProfileTemplateApi.md#create_profile_template) | **POST** /v1/profile_templates | Create a trusted profile template
*IbmCloudIam::TrustedProfileTemplateApi* | [**create_profile_template_version**](docs/TrustedProfileTemplateApi.md#create_profile_template_version) | **POST** /v1/profile_templates/{template_id}/versions | Create new version of a trusted profile template
*IbmCloudIam::TrustedProfileTemplateApi* | [**delete_all_versions_of_profile_template**](docs/TrustedProfileTemplateApi.md#delete_all_versions_of_profile_template) | **DELETE** /v1/profile_templates/{template_id} | Delete all versions of a trusted profile template
*IbmCloudIam::TrustedProfileTemplateApi* | [**delete_profile_template_version**](docs/TrustedProfileTemplateApi.md#delete_profile_template_version) | **DELETE** /v1/profile_templates/{template_id}/versions/{version} | Delete version of trusted profile template
*IbmCloudIam::TrustedProfileTemplateApi* | [**get_latest_profile_template_version**](docs/TrustedProfileTemplateApi.md#get_latest_profile_template_version) | **GET** /v1/profile_templates/{template_id} | Get latest version of a trusted profile template
*IbmCloudIam::TrustedProfileTemplateApi* | [**get_profile_template_version**](docs/TrustedProfileTemplateApi.md#get_profile_template_version) | **GET** /v1/profile_templates/{template_id}/versions/{version} | Get version of trusted profile template
*IbmCloudIam::TrustedProfileTemplateApi* | [**list_profile_templates**](docs/TrustedProfileTemplateApi.md#list_profile_templates) | **GET** /v1/profile_templates | List trusted profile templates
*IbmCloudIam::TrustedProfileTemplateApi* | [**list_versions_of_profile_template**](docs/TrustedProfileTemplateApi.md#list_versions_of_profile_template) | **GET** /v1/profile_templates/{template_id}/versions | List trusted profile template versions
*IbmCloudIam::TrustedProfileTemplateApi* | [**update_profile_template_version**](docs/TrustedProfileTemplateApi.md#update_profile_template_version) | **PUT** /v1/profile_templates/{template_id}/versions/{version} | Update version of trusted profile template
*IbmCloudIam::TrustedProfileTemplateAssignmentsApi* | [**create_trusted_profile_assignment**](docs/TrustedProfileTemplateAssignmentsApi.md#create_trusted_profile_assignment) | **POST** /v1/profile_assignments/ | Create assignment
*IbmCloudIam::TrustedProfileTemplateAssignmentsApi* | [**delete_trusted_profile_assignment**](docs/TrustedProfileTemplateAssignmentsApi.md#delete_trusted_profile_assignment) | **DELETE** /v1/profile_assignments/{assignment_id} | Delete assignment
*IbmCloudIam::TrustedProfileTemplateAssignmentsApi* | [**get_trusted_profile_assignment**](docs/TrustedProfileTemplateAssignmentsApi.md#get_trusted_profile_assignment) | **GET** /v1/profile_assignments/{assignment_id} | Get assignment
*IbmCloudIam::TrustedProfileTemplateAssignmentsApi* | [**list_trusted_profile_assignments**](docs/TrustedProfileTemplateAssignmentsApi.md#list_trusted_profile_assignments) | **GET** /v1/profile_assignments/ | List assignments
*IbmCloudIam::TrustedProfileTemplateAssignmentsApi* | [**update_trusted_profile_assignment**](docs/TrustedProfileTemplateAssignmentsApi.md#update_trusted_profile_assignment) | **PATCH** /v1/profile_assignments/{assignment_id} | Update assignment
*IbmCloudIam::TrustedProfilesApi* | [**create_claim_rule**](docs/TrustedProfilesApi.md#create_claim_rule) | **POST** /v1/profiles/{profile-id}/rules | Create claim rule for a trusted profile
*IbmCloudIam::TrustedProfilesApi* | [**create_link**](docs/TrustedProfilesApi.md#create_link) | **POST** /v1/profiles/{profile-id}/links | Create link to a trusted profile
*IbmCloudIam::TrustedProfilesApi* | [**create_profile**](docs/TrustedProfilesApi.md#create_profile) | **POST** /v1/profiles | Create a trusted profile
*IbmCloudIam::TrustedProfilesApi* | [**delete_claim_rule**](docs/TrustedProfilesApi.md#delete_claim_rule) | **DELETE** /v1/profiles/{profile-id}/rules/{rule-id} | Delete a claim rule
*IbmCloudIam::TrustedProfilesApi* | [**delete_link**](docs/TrustedProfilesApi.md#delete_link) | **DELETE** /v1/profiles/{profile-id}/links/{link-id} | Delete link to a trusted profile
*IbmCloudIam::TrustedProfilesApi* | [**delete_link_by_parameters**](docs/TrustedProfilesApi.md#delete_link_by_parameters) | **DELETE** /v1/profiles/{profile-id}/links | Delete compute resource link to profile by given parameters.
*IbmCloudIam::TrustedProfilesApi* | [**delete_profile**](docs/TrustedProfilesApi.md#delete_profile) | **DELETE** /v1/profiles/{profile-id} | Delete a trusted profile
*IbmCloudIam::TrustedProfilesApi* | [**delete_profile_identity**](docs/TrustedProfilesApi.md#delete_profile_identity) | **DELETE** /v1/profiles/{profile-id}/identities/{identity-type}/{identifier-id} | Delete the identity that can assume the trusted profile
*IbmCloudIam::TrustedProfilesApi* | [**get_claim_rule**](docs/TrustedProfilesApi.md#get_claim_rule) | **GET** /v1/profiles/{profile-id}/rules/{rule-id} | Get a claim rule for a trusted profile
*IbmCloudIam::TrustedProfilesApi* | [**get_link**](docs/TrustedProfilesApi.md#get_link) | **GET** /v1/profiles/{profile-id}/links/{link-id} | Get link to a trusted profile
*IbmCloudIam::TrustedProfilesApi* | [**get_profile**](docs/TrustedProfilesApi.md#get_profile) | **GET** /v1/profiles/{profile-id} | Get a trusted profile
*IbmCloudIam::TrustedProfilesApi* | [**get_profile_identities**](docs/TrustedProfilesApi.md#get_profile_identities) | **GET** /v1/profiles/{profile-id}/identities | Get a list of identities that can assume the trusted profile
*IbmCloudIam::TrustedProfilesApi* | [**get_profile_identity**](docs/TrustedProfilesApi.md#get_profile_identity) | **GET** /v1/profiles/{profile-id}/identities/{identity-type}/{identifier-id} | Get the identity that can assume the trusted profile
*IbmCloudIam::TrustedProfilesApi* | [**list_claim_rules**](docs/TrustedProfilesApi.md#list_claim_rules) | **GET** /v1/profiles/{profile-id}/rules | List claim rules for a trusted profile
*IbmCloudIam::TrustedProfilesApi* | [**list_links**](docs/TrustedProfilesApi.md#list_links) | **GET** /v1/profiles/{profile-id}/links | List links to a trusted profile
*IbmCloudIam::TrustedProfilesApi* | [**list_profiles**](docs/TrustedProfilesApi.md#list_profiles) | **GET** /v1/profiles | List trusted profiles
*IbmCloudIam::TrustedProfilesApi* | [**set_profile_identities**](docs/TrustedProfilesApi.md#set_profile_identities) | **PUT** /v1/profiles/{profile-id}/identities | Update the list of identities that can assume the trusted profile
*IbmCloudIam::TrustedProfilesApi* | [**set_profile_identity**](docs/TrustedProfilesApi.md#set_profile_identity) | **POST** /v1/profiles/{profile-id}/identities/{identity-type} | Add a specific identity that can assume the trusted profile
*IbmCloudIam::TrustedProfilesApi* | [**update_claim_rule**](docs/TrustedProfilesApi.md#update_claim_rule) | **PUT** /v1/profiles/{profile-id}/rules/{rule-id} | Update claim rule for a trusted profile
*IbmCloudIam::TrustedProfilesApi* | [**update_profile**](docs/TrustedProfilesApi.md#update_profile) | **PUT** /v1/profiles/{profile-id} | Update a trusted profile


## Documentation for Models

 - [IbmCloudIam::AccessGroupCount](docs/AccessGroupCount.md)
 - [IbmCloudIam::AccountBasedMfaEnrollment](docs/AccountBasedMfaEnrollment.md)
 - [IbmCloudIam::AccountIdpSettings](docs/AccountIdpSettings.md)
 - [IbmCloudIam::AccountLoginSettings](docs/AccountLoginSettings.md)
 - [IbmCloudIam::AccountSettingsAssignedTemplatesSection](docs/AccountSettingsAssignedTemplatesSection.md)
 - [IbmCloudIam::AccountSettingsEffectiveSection](docs/AccountSettingsEffectiveSection.md)
 - [IbmCloudIam::AccountSettingsMeta](docs/AccountSettingsMeta.md)
 - [IbmCloudIam::AccountSettingsRequest](docs/AccountSettingsRequest.md)
 - [IbmCloudIam::AccountSettingsResponse](docs/AccountSettingsResponse.md)
 - [IbmCloudIam::AccountSettingsTemplateList](docs/AccountSettingsTemplateList.md)
 - [IbmCloudIam::AccountSettingsTemplateRequest](docs/AccountSettingsTemplateRequest.md)
 - [IbmCloudIam::AccountSettingsTemplateResponse](docs/AccountSettingsTemplateResponse.md)
 - [IbmCloudIam::AccountSettingsUserDomainRestriction](docs/AccountSettingsUserDomainRestriction.md)
 - [IbmCloudIam::AccountSettingsUserMFAResponse](docs/AccountSettingsUserMFAResponse.md)
 - [IbmCloudIam::ActionControls](docs/ActionControls.md)
 - [IbmCloudIam::ActionControlsIdentities](docs/ActionControlsIdentities.md)
 - [IbmCloudIam::Activity](docs/Activity.md)
 - [IbmCloudIam::AddAccountIdpSettingRequest](docs/AddAccountIdpSettingRequest.md)
 - [IbmCloudIam::ApiKey](docs/ApiKey.md)
 - [IbmCloudIam::ApiKeyInsideCreateServiceIdRequest](docs/ApiKeyInsideCreateServiceIdRequest.md)
 - [IbmCloudIam::ApiKeyList](docs/ApiKeyList.md)
 - [IbmCloudIam::ApikeyActivity](docs/ApikeyActivity.md)
 - [IbmCloudIam::ApikeyActivityServiceid](docs/ApikeyActivityServiceid.md)
 - [IbmCloudIam::ApikeyActivityUser](docs/ApikeyActivityUser.md)
 - [IbmCloudIam::AssignedTemplatesAccountSettings](docs/AssignedTemplatesAccountSettings.md)
 - [IbmCloudIam::CommonAccountSettingsRequest](docs/CommonAccountSettingsRequest.md)
 - [IbmCloudIam::CommonAccountSettingsResponse](docs/CommonAccountSettingsResponse.md)
 - [IbmCloudIam::ConsumersResponse](docs/ConsumersResponse.md)
 - [IbmCloudIam::ConsumersResponseConsumersInner](docs/ConsumersResponseConsumersInner.md)
 - [IbmCloudIam::CreateApiKeyRequest](docs/CreateApiKeyRequest.md)
 - [IbmCloudIam::CreateIdpRequest](docs/CreateIdpRequest.md)
 - [IbmCloudIam::CreateIdpRequestProperties](docs/CreateIdpRequestProperties.md)
 - [IbmCloudIam::CreateIdpRequestPropertiesIdp](docs/CreateIdpRequestPropertiesIdp.md)
 - [IbmCloudIam::CreateIdpRequestPropertiesSp](docs/CreateIdpRequestPropertiesSp.md)
 - [IbmCloudIam::CreateIdpRequestPropertiesSpAuthnContext](docs/CreateIdpRequestPropertiesSpAuthnContext.md)
 - [IbmCloudIam::CreateIdpRequestSecrets](docs/CreateIdpRequestSecrets.md)
 - [IbmCloudIam::CreateIdpRequestSecretsIdp](docs/CreateIdpRequestSecretsIdp.md)
 - [IbmCloudIam::CreateIdpRequestSecretsIdpSigningInner](docs/CreateIdpRequestSecretsIdpSigningInner.md)
 - [IbmCloudIam::CreateIdpRequestSecretsSp](docs/CreateIdpRequestSecretsSp.md)
 - [IbmCloudIam::CreateIdpRequestSecretsSpSigningInner](docs/CreateIdpRequestSecretsSpSigningInner.md)
 - [IbmCloudIam::CreateProfileLinkRequest](docs/CreateProfileLinkRequest.md)
 - [IbmCloudIam::CreateProfileLinkRequestLink](docs/CreateProfileLinkRequestLink.md)
 - [IbmCloudIam::CreateServiceIdGroupRequest](docs/CreateServiceIdGroupRequest.md)
 - [IbmCloudIam::CreateServiceIdRequest](docs/CreateServiceIdRequest.md)
 - [IbmCloudIam::CreateTemplateAssignmentRequest](docs/CreateTemplateAssignmentRequest.md)
 - [IbmCloudIam::CreateTrustedProfileRequest](docs/CreateTrustedProfileRequest.md)
 - [IbmCloudIam::EffectiveAccountSettingsResponse](docs/EffectiveAccountSettingsResponse.md)
 - [IbmCloudIam::EnityHistoryRecord](docs/EnityHistoryRecord.md)
 - [IbmCloudIam::EntityActivity](docs/EntityActivity.md)
 - [IbmCloudIam::Error](docs/Error.md)
 - [IbmCloudIam::ExceptionResponse](docs/ExceptionResponse.md)
 - [IbmCloudIam::ExceptionResponseContext](docs/ExceptionResponseContext.md)
 - [IbmCloudIam::IdBasedMfaEnrollment](docs/IdBasedMfaEnrollment.md)
 - [IbmCloudIam::IdentityCount](docs/IdentityCount.md)
 - [IbmCloudIam::IdentityLimitsUsageRequest](docs/IdentityLimitsUsageRequest.md)
 - [IbmCloudIam::IdentityLimitsUsageResponse](docs/IdentityLimitsUsageResponse.md)
 - [IbmCloudIam::IdentityLimitsUsageResponseApikeysPerIdentity](docs/IdentityLimitsUsageResponseApikeysPerIdentity.md)
 - [IbmCloudIam::IdentityLimitsUsageResponseClaimRulesPerGroup](docs/IdentityLimitsUsageResponseClaimRulesPerGroup.md)
 - [IbmCloudIam::IdentityLimitsUsageResponseClaimRulesPerProfile](docs/IdentityLimitsUsageResponseClaimRulesPerProfile.md)
 - [IbmCloudIam::IdentityLimitsUsageResponseServiceidsPerGroup](docs/IdentityLimitsUsageResponseServiceidsPerGroup.md)
 - [IbmCloudIam::IdentityLimitsUsageResponseTemplateVersionsPerTemplate](docs/IdentityLimitsUsageResponseTemplateVersionsPerTemplate.md)
 - [IbmCloudIam::IdentityPreferenceResponse](docs/IdentityPreferenceResponse.md)
 - [IbmCloudIam::IdentityPreferencesResponse](docs/IdentityPreferencesResponse.md)
 - [IbmCloudIam::Idp](docs/Idp.md)
 - [IbmCloudIam::LimitCount](docs/LimitCount.md)
 - [IbmCloudIam::ListIdPSettings200Response](docs/ListIdPSettings200Response.md)
 - [IbmCloudIam::ListIdps200Response](docs/ListIdps200Response.md)
 - [IbmCloudIam::MFARequirementsResponse](docs/MFARequirementsResponse.md)
 - [IbmCloudIam::MfaEnrollmentTypeStatus](docs/MfaEnrollmentTypeStatus.md)
 - [IbmCloudIam::MfaOptions](docs/MfaOptions.md)
 - [IbmCloudIam::OidcExceptionResponse](docs/OidcExceptionResponse.md)
 - [IbmCloudIam::PolicyTemplateReference](docs/PolicyTemplateReference.md)
 - [IbmCloudIam::ProfileClaimRule](docs/ProfileClaimRule.md)
 - [IbmCloudIam::ProfileClaimRuleConditions](docs/ProfileClaimRuleConditions.md)
 - [IbmCloudIam::ProfileClaimRuleList](docs/ProfileClaimRuleList.md)
 - [IbmCloudIam::ProfileClaimRuleRequest](docs/ProfileClaimRuleRequest.md)
 - [IbmCloudIam::ProfileCount](docs/ProfileCount.md)
 - [IbmCloudIam::ProfileIdentitiesResponse](docs/ProfileIdentitiesResponse.md)
 - [IbmCloudIam::ProfileIdentitiesUpdateRequest](docs/ProfileIdentitiesUpdateRequest.md)
 - [IbmCloudIam::ProfileIdentityRequest](docs/ProfileIdentityRequest.md)
 - [IbmCloudIam::ProfileIdentityResponse](docs/ProfileIdentityResponse.md)
 - [IbmCloudIam::ProfileLink](docs/ProfileLink.md)
 - [IbmCloudIam::ProfileLinkLink](docs/ProfileLinkLink.md)
 - [IbmCloudIam::ProfileLinkList](docs/ProfileLinkList.md)
 - [IbmCloudIam::Report](docs/Report.md)
 - [IbmCloudIam::ReportMfaEnrollmentStatus](docs/ReportMfaEnrollmentStatus.md)
 - [IbmCloudIam::ReportReference](docs/ReportReference.md)
 - [IbmCloudIam::ResponseContext](docs/ResponseContext.md)
 - [IbmCloudIam::RetrictActions](docs/RetrictActions.md)
 - [IbmCloudIam::SamlMetadataImportResponse](docs/SamlMetadataImportResponse.md)
 - [IbmCloudIam::ServiceId](docs/ServiceId.md)
 - [IbmCloudIam::ServiceIdGroup](docs/ServiceIdGroup.md)
 - [IbmCloudIam::ServiceIdGroupCount](docs/ServiceIdGroupCount.md)
 - [IbmCloudIam::ServiceIdGroupList](docs/ServiceIdGroupList.md)
 - [IbmCloudIam::ServiceIdList](docs/ServiceIdList.md)
 - [IbmCloudIam::ShareScope](docs/ShareScope.md)
 - [IbmCloudIam::TemplateAccountSettings](docs/TemplateAccountSettings.md)
 - [IbmCloudIam::TemplateAccountSettingsAllOfRestrictUserDomains](docs/TemplateAccountSettingsAllOfRestrictUserDomains.md)
 - [IbmCloudIam::TemplateAssignmentListResponse](docs/TemplateAssignmentListResponse.md)
 - [IbmCloudIam::TemplateAssignmentResource](docs/TemplateAssignmentResource.md)
 - [IbmCloudIam::TemplateAssignmentResourceError](docs/TemplateAssignmentResourceError.md)
 - [IbmCloudIam::TemplateAssignmentResponse](docs/TemplateAssignmentResponse.md)
 - [IbmCloudIam::TemplateAssignmentResponseResource](docs/TemplateAssignmentResponseResource.md)
 - [IbmCloudIam::TemplateAssignmentResponseResourceDetail](docs/TemplateAssignmentResponseResourceDetail.md)
 - [IbmCloudIam::TemplateCount](docs/TemplateCount.md)
 - [IbmCloudIam::TemplateProfileComponentRequest](docs/TemplateProfileComponentRequest.md)
 - [IbmCloudIam::TemplateProfileComponentResponse](docs/TemplateProfileComponentResponse.md)
 - [IbmCloudIam::TestResult](docs/TestResult.md)
 - [IbmCloudIam::TestResultStepsInner](docs/TestResultStepsInner.md)
 - [IbmCloudIam::TestTriggerResponse](docs/TestTriggerResponse.md)
 - [IbmCloudIam::TokenResponse](docs/TokenResponse.md)
 - [IbmCloudIam::TrustedProfile](docs/TrustedProfile.md)
 - [IbmCloudIam::TrustedProfileTemplateClaimRule](docs/TrustedProfileTemplateClaimRule.md)
 - [IbmCloudIam::TrustedProfileTemplateList](docs/TrustedProfileTemplateList.md)
 - [IbmCloudIam::TrustedProfileTemplateRequest](docs/TrustedProfileTemplateRequest.md)
 - [IbmCloudIam::TrustedProfileTemplateResponse](docs/TrustedProfileTemplateResponse.md)
 - [IbmCloudIam::TrustedProfilesList](docs/TrustedProfilesList.md)
 - [IbmCloudIam::UpdateAccountIdpSettingRequest](docs/UpdateAccountIdpSettingRequest.md)
 - [IbmCloudIam::UpdateAccountLoginSettings](docs/UpdateAccountLoginSettings.md)
 - [IbmCloudIam::UpdateApiKeyRequest](docs/UpdateApiKeyRequest.md)
 - [IbmCloudIam::UpdateIdPRequest](docs/UpdateIdPRequest.md)
 - [IbmCloudIam::UpdateIdPRequestProperties](docs/UpdateIdPRequestProperties.md)
 - [IbmCloudIam::UpdateIdPRequestPropertiesIdp](docs/UpdateIdPRequestPropertiesIdp.md)
 - [IbmCloudIam::UpdateIdPRequestSecrets](docs/UpdateIdPRequestSecrets.md)
 - [IbmCloudIam::UpdateIdPRequestSecretsIdp](docs/UpdateIdPRequestSecretsIdp.md)
 - [IbmCloudIam::UpdatePreferenceRequest](docs/UpdatePreferenceRequest.md)
 - [IbmCloudIam::UpdateServiceIdGroupRequest](docs/UpdateServiceIdGroupRequest.md)
 - [IbmCloudIam::UpdateServiceIdRequest](docs/UpdateServiceIdRequest.md)
 - [IbmCloudIam::UpdateTemplateAssignmentRequest](docs/UpdateTemplateAssignmentRequest.md)
 - [IbmCloudIam::UpdateTrustedProfileRequest](docs/UpdateTrustedProfileRequest.md)
 - [IbmCloudIam::UserActivity](docs/UserActivity.md)
 - [IbmCloudIam::UserMFAResolved](docs/UserMFAResolved.md)
 - [IbmCloudIam::UserMfa](docs/UserMfa.md)
 - [IbmCloudIam::UserMfaEnrollments](docs/UserMfaEnrollments.md)
 - [IbmCloudIam::UserReportMfaEnrollmentStatus](docs/UserReportMfaEnrollmentStatus.md)
 - [IbmCloudIam::UserVisbilityRetrictActions](docs/UserVisbilityRetrictActions.md)
 - [IbmCloudIam::UserVisbilityRetrictActionsForTemplate](docs/UserVisbilityRetrictActionsForTemplate.md)


## Documentation for Authorization

Endpoints do not require authorization.

