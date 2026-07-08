# IbmCloudIam::IDPManagementApi

All URIs are relative to *https://iam.cloud.ibm.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_idp**](IDPManagementApi.md#create_idp) | **POST** /v1/idps/ | Create IdP |
| [**delete_idp**](IDPManagementApi.md#delete_idp) | **DELETE** /v1/idps/{idp_id} | Delete IdP |
| [**export_saml_metadata**](IDPManagementApi.md#export_saml_metadata) | **GET** /v1/idps/{idp_id}/saml/metadata | Export SAML IdP metadata |
| [**get_idp**](IDPManagementApi.md#get_idp) | **GET** /v1/idps/{idp_id} | Get IdP |
| [**get_idp_test_result**](IDPManagementApi.md#get_idp_test_result) | **GET** /v1/idps/{idp_id}/test | Get IdP test results |
| [**import_saml_idp_metadata**](IDPManagementApi.md#import_saml_idp_metadata) | **PUT** /v1/idps/{idp_id}/saml/metadata | Import SAML IdP metadata |
| [**list_consumer_accounts**](IDPManagementApi.md#list_consumer_accounts) | **GET** /v1/idps/{idp_id}/consumers | Get consumers of IdP |
| [**list_idps**](IDPManagementApi.md#list_idps) | **GET** /v1/idps/ | List IdPs |
| [**test_idp**](IDPManagementApi.md#test_idp) | **POST** /v1/idps/{idp_id}/test | Trigger IdP configuration test |
| [**update_idp**](IDPManagementApi.md#update_idp) | **PUT** /v1/idps/{idp_id} | Update IdP |


## create_idp

> <Idp> create_idp(authorization, create_idp_request, opts)

Create IdP

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IDPManagementApi.new
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
create_idp_request = IbmCloudIam::CreateIdpRequest.new({account_id: 'account_id_example', name: 'name_example', type: 'ldap'}) # CreateIdpRequest | Request to create idp
opts = {
  automation: 'automation_example' # String | boolean to flag if IdP is created via automation
}

begin
  # Create IdP
  result = api_instance.create_idp(authorization, create_idp_request, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IDPManagementApi->create_idp: #{e}"
end
```

#### Using the create_idp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Idp>, Integer, Hash)> create_idp_with_http_info(authorization, create_idp_request, opts)

```ruby
begin
  # Create IdP
  data, status_code, headers = api_instance.create_idp_with_http_info(authorization, create_idp_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Idp>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IDPManagementApi->create_idp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. |  |
| **create_idp_request** | [**CreateIdpRequest**](CreateIdpRequest.md) | Request to create idp |  |
| **automation** | **String** | boolean to flag if IdP is created via automation | [optional] |

### Return type

[**Idp**](Idp.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_idp

> delete_idp(idp_id, authorization)

Delete IdP

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IDPManagementApi.new
idp_id = 'idp_id_example' # String | ID of the IDP
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.

begin
  # Delete IdP
  api_instance.delete_idp(idp_id, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IDPManagementApi->delete_idp: #{e}"
end
```

#### Using the delete_idp_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_idp_with_http_info(idp_id, authorization)

```ruby
begin
  # Delete IdP
  data, status_code, headers = api_instance.delete_idp_with_http_info(idp_id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IDPManagementApi->delete_idp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idp_id** | **String** | ID of the IDP |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## export_saml_metadata

> String export_saml_metadata(idp_id, opts)

Export SAML IdP metadata

Returns the Service Provider (SP) SAML metadata document for the specified Identity Provider.  The generated metadata contains the SP entity ID, signing certificate, supported NameID formats, and Assertion Consumer Service endpoints derived from the Identity Provider configuration. 

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IDPManagementApi.new
idp_id = 'idp_id_example' # String | ID of the IDP
opts = {
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
}

begin
  # Export SAML IdP metadata
  result = api_instance.export_saml_metadata(idp_id, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IDPManagementApi->export_saml_metadata: #{e}"
end
```

#### Using the export_saml_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> export_saml_metadata_with_http_info(idp_id, opts)

```ruby
begin
  # Export SAML IdP metadata
  data, status_code, headers = api_instance.export_saml_metadata_with_http_info(idp_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IDPManagementApi->export_saml_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idp_id** | **String** | ID of the IDP |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. | [optional] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/xml


## get_idp

> <Idp> get_idp(idp_id, authorization, opts)

Get IdP

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IDPManagementApi.new
idp_id = 'idp_id_example' # String | ID of the IDP
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
opts = {
  include_history: 'include_history_example' # String | include history of the idp
}

begin
  # Get IdP
  result = api_instance.get_idp(idp_id, authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IDPManagementApi->get_idp: #{e}"
end
```

#### Using the get_idp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Idp>, Integer, Hash)> get_idp_with_http_info(idp_id, authorization, opts)

```ruby
begin
  # Get IdP
  data, status_code, headers = api_instance.get_idp_with_http_info(idp_id, authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Idp>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IDPManagementApi->get_idp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idp_id** | **String** | ID of the IDP |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. |  |
| **include_history** | **String** | include history of the idp | [optional] |

### Return type

[**Idp**](Idp.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_idp_test_result

> <TestResult> get_idp_test_result(idp_id, opts)

Get IdP test results

Get IDP test record.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IDPManagementApi.new
idp_id = 'idp_id_example' # String | ID of the IDP
opts = {
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
}

begin
  # Get IdP test results
  result = api_instance.get_idp_test_result(idp_id, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IDPManagementApi->get_idp_test_result: #{e}"
end
```

#### Using the get_idp_test_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TestResult>, Integer, Hash)> get_idp_test_result_with_http_info(idp_id, opts)

```ruby
begin
  # Get IdP test results
  data, status_code, headers = api_instance.get_idp_test_result_with_http_info(idp_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TestResult>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IDPManagementApi->get_idp_test_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idp_id** | **String** | ID of the IDP |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. | [optional] |

### Return type

[**TestResult**](TestResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## import_saml_idp_metadata

> <SamlMetadataImportResponse> import_saml_idp_metadata(idp_id, body, opts)

Import SAML IdP metadata

Import a metadata.xml originating from the federated SAML Identity Provider

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IDPManagementApi.new
idp_id = 'idp_id_example' # String | ID of the IDP
body = File.new('/path/to/some/file') # File | 
opts = {
  authorization: 'authorization_example', # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
  parse_only: true # Boolean | If true, validates and parses the metadata without updating the Identity Provider. 
}

begin
  # Import SAML IdP metadata
  result = api_instance.import_saml_idp_metadata(idp_id, body, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IDPManagementApi->import_saml_idp_metadata: #{e}"
end
```

#### Using the import_saml_idp_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SamlMetadataImportResponse>, Integer, Hash)> import_saml_idp_metadata_with_http_info(idp_id, body, opts)

```ruby
begin
  # Import SAML IdP metadata
  data, status_code, headers = api_instance.import_saml_idp_metadata_with_http_info(idp_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SamlMetadataImportResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IDPManagementApi->import_saml_idp_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idp_id** | **String** | ID of the IDP |  |
| **body** | **File** |  |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. | [optional] |
| **parse_only** | **Boolean** | If true, validates and parses the metadata without updating the Identity Provider.  | [optional][default to false] |

### Return type

[**SamlMetadataImportResponse**](SamlMetadataImportResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: text/xml
- **Accept**: application/json


## list_consumer_accounts

> <ConsumersResponse> list_consumer_accounts(idp_id, authorization)

Get consumers of IdP

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IDPManagementApi.new
idp_id = 'idp_id_example' # String | ID of the IDP
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.

begin
  # Get consumers of IdP
  result = api_instance.list_consumer_accounts(idp_id, authorization)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IDPManagementApi->list_consumer_accounts: #{e}"
end
```

#### Using the list_consumer_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConsumersResponse>, Integer, Hash)> list_consumer_accounts_with_http_info(idp_id, authorization)

```ruby
begin
  # Get consumers of IdP
  data, status_code, headers = api_instance.list_consumer_accounts_with_http_info(idp_id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConsumersResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IDPManagementApi->list_consumer_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idp_id** | **String** | ID of the IDP |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. |  |

### Return type

[**ConsumersResponse**](ConsumersResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_idps

> <ListIdps200Response> list_idps(account_id, authorization, opts)

List IdPs

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IDPManagementApi.new
account_id = 'account_id_example' # String | Account id to query
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
opts = {
  include_history: 'include_history_example' # String | include history of the idp
}

begin
  # List IdPs
  result = api_instance.list_idps(account_id, authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IDPManagementApi->list_idps: #{e}"
end
```

#### Using the list_idps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListIdps200Response>, Integer, Hash)> list_idps_with_http_info(account_id, authorization, opts)

```ruby
begin
  # List IdPs
  data, status_code, headers = api_instance.list_idps_with_http_info(account_id, authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListIdps200Response>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IDPManagementApi->list_idps_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account id to query |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. |  |
| **include_history** | **String** | include history of the idp | [optional] |

### Return type

[**ListIdps200Response**](ListIdps200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## test_idp

> <TestTriggerResponse> test_idp(idp_id, authorization)

Trigger IdP configuration test

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IDPManagementApi.new
idp_id = 'idp_id_example' # String | ID of the IDP
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.

begin
  # Trigger IdP configuration test
  result = api_instance.test_idp(idp_id, authorization)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IDPManagementApi->test_idp: #{e}"
end
```

#### Using the test_idp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TestTriggerResponse>, Integer, Hash)> test_idp_with_http_info(idp_id, authorization)

```ruby
begin
  # Trigger IdP configuration test
  data, status_code, headers = api_instance.test_idp_with_http_info(idp_id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TestTriggerResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IDPManagementApi->test_idp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idp_id** | **String** | ID of the IDP |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. |  |

### Return type

[**TestTriggerResponse**](TestTriggerResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_idp

> <Idp> update_idp(idp_id, if_match, authorization, update_id_p_request, opts)

Update IdP

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IDPManagementApi.new
idp_id = 'idp_id_example' # String | ID of the IDP
if_match = 'if_match_example' # String | Version of the account IdP settings to be updated. Specify the version that you retrieved as entity_tag (ETag header) when reading the account. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
update_id_p_request = IbmCloudIam::UpdateIdPRequest.new # UpdateIdPRequest | Request to update idp
opts = {
  force_share_scope_update: true # Boolean | Enforces sharescope update even if active consumers are removed from the share scope
}

begin
  # Update IdP
  result = api_instance.update_idp(idp_id, if_match, authorization, update_id_p_request, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IDPManagementApi->update_idp: #{e}"
end
```

#### Using the update_idp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Idp>, Integer, Hash)> update_idp_with_http_info(idp_id, if_match, authorization, update_id_p_request, opts)

```ruby
begin
  # Update IdP
  data, status_code, headers = api_instance.update_idp_with_http_info(idp_id, if_match, authorization, update_id_p_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Idp>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IDPManagementApi->update_idp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idp_id** | **String** | ID of the IDP |  |
| **if_match** | **String** | Version of the account IdP settings to be updated. Specify the version that you retrieved as entity_tag (ETag header) when reading the account. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. |  |
| **update_id_p_request** | [**UpdateIdPRequest**](UpdateIdPRequest.md) | Request to update idp |  |
| **force_share_scope_update** | **Boolean** | Enforces sharescope update even if active consumers are removed from the share scope | [optional] |

### Return type

[**Idp**](Idp.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

