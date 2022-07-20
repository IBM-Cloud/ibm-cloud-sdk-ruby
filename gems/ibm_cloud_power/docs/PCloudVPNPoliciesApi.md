# IbmCloudPower::PCloudVPNPoliciesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_ikepolicies_delete**](PCloudVPNPoliciesApi.md#pcloud_ikepolicies_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/ike-policies/{ike_policy_id} | Delete IKE Policy |
| [**pcloud_ikepolicies_get**](PCloudVPNPoliciesApi.md#pcloud_ikepolicies_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/ike-policies/{ike_policy_id} | Get the specified IKE Policy |
| [**pcloud_ikepolicies_getall**](PCloudVPNPoliciesApi.md#pcloud_ikepolicies_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/ike-policies | Get all IKE Policies |
| [**pcloud_ikepolicies_post**](PCloudVPNPoliciesApi.md#pcloud_ikepolicies_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/ike-policies | Add IKE Policy |
| [**pcloud_ikepolicies_put**](PCloudVPNPoliciesApi.md#pcloud_ikepolicies_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/ike-policies/{ike_policy_id} | Update IKE Policy |
| [**pcloud_ipsecpolicies_delete**](PCloudVPNPoliciesApi.md#pcloud_ipsecpolicies_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/ipsec-policies/{ipsec_policy_id} | Delete IPSec Policy |
| [**pcloud_ipsecpolicies_get**](PCloudVPNPoliciesApi.md#pcloud_ipsecpolicies_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/ipsec-policies/{ipsec_policy_id} | Get the specified IPSec Policy |
| [**pcloud_ipsecpolicies_getall**](PCloudVPNPoliciesApi.md#pcloud_ipsecpolicies_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/ipsec-policies | Get all IPSec Policies |
| [**pcloud_ipsecpolicies_post**](PCloudVPNPoliciesApi.md#pcloud_ipsecpolicies_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/ipsec-policies | Add IPSec Policy |
| [**pcloud_ipsecpolicies_put**](PCloudVPNPoliciesApi.md#pcloud_ipsecpolicies_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/ipsec-policies/{ipsec_policy_id} | Update IPSec Policy |


## pcloud_ikepolicies_delete

> Object pcloud_ikepolicies_delete(cloud_instance_id, ike_policy_id)

Delete IKE Policy

Delete an IKE Policy (by its unique identifier)

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNPoliciesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
ike_policy_id = 'ike_policy_id_example' # String | ID of a IKE Policy

begin
  # Delete IKE Policy
  result = api_instance.pcloud_ikepolicies_delete(cloud_instance_id, ike_policy_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNPoliciesApi->pcloud_ikepolicies_delete: #{e}"
end
```

#### Using the pcloud_ikepolicies_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_ikepolicies_delete_with_http_info(cloud_instance_id, ike_policy_id)

```ruby
begin
  # Delete IKE Policy
  data, status_code, headers = api_instance.pcloud_ikepolicies_delete_with_http_info(cloud_instance_id, ike_policy_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNPoliciesApi->pcloud_ikepolicies_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **ike_policy_id** | **String** | ID of a IKE Policy |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_ikepolicies_get

> <IKEPolicy> pcloud_ikepolicies_get(cloud_instance_id, ike_policy_id)

Get the specified IKE Policy

Get an IKE Policy (by its unique identifier)

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNPoliciesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
ike_policy_id = 'ike_policy_id_example' # String | ID of a IKE Policy

begin
  # Get the specified IKE Policy
  result = api_instance.pcloud_ikepolicies_get(cloud_instance_id, ike_policy_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNPoliciesApi->pcloud_ikepolicies_get: #{e}"
end
```

#### Using the pcloud_ikepolicies_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IKEPolicy>, Integer, Hash)> pcloud_ikepolicies_get_with_http_info(cloud_instance_id, ike_policy_id)

```ruby
begin
  # Get the specified IKE Policy
  data, status_code, headers = api_instance.pcloud_ikepolicies_get_with_http_info(cloud_instance_id, ike_policy_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IKEPolicy>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNPoliciesApi->pcloud_ikepolicies_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **ike_policy_id** | **String** | ID of a IKE Policy |  |

### Return type

[**IKEPolicy**](IKEPolicy.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_ikepolicies_getall

> <IKEPolicies> pcloud_ikepolicies_getall(cloud_instance_id)

Get all IKE Policies

List all IKE Policies with all attributes

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNPoliciesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # Get all IKE Policies
  result = api_instance.pcloud_ikepolicies_getall(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNPoliciesApi->pcloud_ikepolicies_getall: #{e}"
end
```

#### Using the pcloud_ikepolicies_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IKEPolicies>, Integer, Hash)> pcloud_ikepolicies_getall_with_http_info(cloud_instance_id)

```ruby
begin
  # Get all IKE Policies
  data, status_code, headers = api_instance.pcloud_ikepolicies_getall_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IKEPolicies>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNPoliciesApi->pcloud_ikepolicies_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**IKEPolicies**](IKEPolicies.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_ikepolicies_post

> <IKEPolicy> pcloud_ikepolicies_post(cloud_instance_id, body)

Add IKE Policy

Add a new IKE Policy

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNPoliciesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::IKEPolicyCreate.new({authentication: 'sha1', dh_group: 1, encryption: '3des-cbc', key_lifetime: 28800, name: 'ikePolicy1', preshared_key: 'preshared_key_example', version: 1}) # IKEPolicyCreate | Parameters for the creation of a new IKE Policy

begin
  # Add IKE Policy
  result = api_instance.pcloud_ikepolicies_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNPoliciesApi->pcloud_ikepolicies_post: #{e}"
end
```

#### Using the pcloud_ikepolicies_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IKEPolicy>, Integer, Hash)> pcloud_ikepolicies_post_with_http_info(cloud_instance_id, body)

```ruby
begin
  # Add IKE Policy
  data, status_code, headers = api_instance.pcloud_ikepolicies_post_with_http_info(cloud_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IKEPolicy>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNPoliciesApi->pcloud_ikepolicies_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **body** | [**IKEPolicyCreate**](IKEPolicyCreate.md) | Parameters for the creation of a new IKE Policy |  |

### Return type

[**IKEPolicy**](IKEPolicy.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_ikepolicies_put

> <IKEPolicy> pcloud_ikepolicies_put(cloud_instance_id, ike_policy_id, body)

Update IKE Policy

update an IKE Policy (by its unique identifier)

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNPoliciesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
ike_policy_id = 'ike_policy_id_example' # String | ID of a IKE Policy
body = IbmCloudPower::IKEPolicyUpdate.new # IKEPolicyUpdate | Parameters for updating IKE Policy

begin
  # Update IKE Policy
  result = api_instance.pcloud_ikepolicies_put(cloud_instance_id, ike_policy_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNPoliciesApi->pcloud_ikepolicies_put: #{e}"
end
```

#### Using the pcloud_ikepolicies_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IKEPolicy>, Integer, Hash)> pcloud_ikepolicies_put_with_http_info(cloud_instance_id, ike_policy_id, body)

```ruby
begin
  # Update IKE Policy
  data, status_code, headers = api_instance.pcloud_ikepolicies_put_with_http_info(cloud_instance_id, ike_policy_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IKEPolicy>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNPoliciesApi->pcloud_ikepolicies_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **ike_policy_id** | **String** | ID of a IKE Policy |  |
| **body** | [**IKEPolicyUpdate**](IKEPolicyUpdate.md) | Parameters for updating IKE Policy |  |

### Return type

[**IKEPolicy**](IKEPolicy.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_ipsecpolicies_delete

> Object pcloud_ipsecpolicies_delete(cloud_instance_id, ipsec_policy_id)

Delete IPSec Policy

Delete an IPSec Policy (by its unique identifier)

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNPoliciesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
ipsec_policy_id = 'ipsec_policy_id_example' # String | ID of a IPSec Policy

begin
  # Delete IPSec Policy
  result = api_instance.pcloud_ipsecpolicies_delete(cloud_instance_id, ipsec_policy_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNPoliciesApi->pcloud_ipsecpolicies_delete: #{e}"
end
```

#### Using the pcloud_ipsecpolicies_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_ipsecpolicies_delete_with_http_info(cloud_instance_id, ipsec_policy_id)

```ruby
begin
  # Delete IPSec Policy
  data, status_code, headers = api_instance.pcloud_ipsecpolicies_delete_with_http_info(cloud_instance_id, ipsec_policy_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNPoliciesApi->pcloud_ipsecpolicies_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **ipsec_policy_id** | **String** | ID of a IPSec Policy |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_ipsecpolicies_get

> <IPSecPolicy> pcloud_ipsecpolicies_get(cloud_instance_id, ipsec_policy_id)

Get the specified IPSec Policy

Get an IPSec Policy (by its unique identifier)

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNPoliciesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
ipsec_policy_id = 'ipsec_policy_id_example' # String | ID of a IPSec Policy

begin
  # Get the specified IPSec Policy
  result = api_instance.pcloud_ipsecpolicies_get(cloud_instance_id, ipsec_policy_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNPoliciesApi->pcloud_ipsecpolicies_get: #{e}"
end
```

#### Using the pcloud_ipsecpolicies_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IPSecPolicy>, Integer, Hash)> pcloud_ipsecpolicies_get_with_http_info(cloud_instance_id, ipsec_policy_id)

```ruby
begin
  # Get the specified IPSec Policy
  data, status_code, headers = api_instance.pcloud_ipsecpolicies_get_with_http_info(cloud_instance_id, ipsec_policy_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IPSecPolicy>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNPoliciesApi->pcloud_ipsecpolicies_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **ipsec_policy_id** | **String** | ID of a IPSec Policy |  |

### Return type

[**IPSecPolicy**](IPSecPolicy.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_ipsecpolicies_getall

> <IPSecPolicies> pcloud_ipsecpolicies_getall(cloud_instance_id)

Get all IPSec Policies

Get all IPSec Policies with all their attributes

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNPoliciesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # Get all IPSec Policies
  result = api_instance.pcloud_ipsecpolicies_getall(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNPoliciesApi->pcloud_ipsecpolicies_getall: #{e}"
end
```

#### Using the pcloud_ipsecpolicies_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IPSecPolicies>, Integer, Hash)> pcloud_ipsecpolicies_getall_with_http_info(cloud_instance_id)

```ruby
begin
  # Get all IPSec Policies
  data, status_code, headers = api_instance.pcloud_ipsecpolicies_getall_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IPSecPolicies>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNPoliciesApi->pcloud_ipsecpolicies_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**IPSecPolicies**](IPSecPolicies.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_ipsecpolicies_post

> <IPSecPolicy> pcloud_ipsecpolicies_post(cloud_instance_id, body)

Add IPSec Policy

Add a new IPSec Policy

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNPoliciesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::IPSecPolicyCreate.new({authentication: 'hmac-md5-96', dh_group: 1, encryption: '3des-cbc', key_lifetime: 28800, name: 'ipSecPolicy2', pfs: true}) # IPSecPolicyCreate | Parameters for the creation of a new IPSec Policy

begin
  # Add IPSec Policy
  result = api_instance.pcloud_ipsecpolicies_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNPoliciesApi->pcloud_ipsecpolicies_post: #{e}"
end
```

#### Using the pcloud_ipsecpolicies_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IPSecPolicy>, Integer, Hash)> pcloud_ipsecpolicies_post_with_http_info(cloud_instance_id, body)

```ruby
begin
  # Add IPSec Policy
  data, status_code, headers = api_instance.pcloud_ipsecpolicies_post_with_http_info(cloud_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IPSecPolicy>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNPoliciesApi->pcloud_ipsecpolicies_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **body** | [**IPSecPolicyCreate**](IPSecPolicyCreate.md) | Parameters for the creation of a new IPSec Policy |  |

### Return type

[**IPSecPolicy**](IPSecPolicy.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_ipsecpolicies_put

> <IPSecPolicy> pcloud_ipsecpolicies_put(cloud_instance_id, ipsec_policy_id, body)

Update IPSec Policy

update an IPSec Policy

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNPoliciesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
ipsec_policy_id = 'ipsec_policy_id_example' # String | ID of a IPSec Policy
body = IbmCloudPower::IPSecPolicyUpdate.new # IPSecPolicyUpdate | Parameters for the update of an IPSec Policy

begin
  # Update IPSec Policy
  result = api_instance.pcloud_ipsecpolicies_put(cloud_instance_id, ipsec_policy_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNPoliciesApi->pcloud_ipsecpolicies_put: #{e}"
end
```

#### Using the pcloud_ipsecpolicies_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IPSecPolicy>, Integer, Hash)> pcloud_ipsecpolicies_put_with_http_info(cloud_instance_id, ipsec_policy_id, body)

```ruby
begin
  # Update IPSec Policy
  data, status_code, headers = api_instance.pcloud_ipsecpolicies_put_with_http_info(cloud_instance_id, ipsec_policy_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IPSecPolicy>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNPoliciesApi->pcloud_ipsecpolicies_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **ipsec_policy_id** | **String** | ID of a IPSec Policy |  |
| **body** | [**IPSecPolicyUpdate**](IPSecPolicyUpdate.md) | Parameters for the update of an IPSec Policy |  |

### Return type

[**IPSecPolicy**](IPSecPolicy.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

