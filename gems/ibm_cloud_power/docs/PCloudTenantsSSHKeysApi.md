# IbmCloudPower::PCloudTenantsSSHKeysApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_tenants_sshkeys_delete**](PCloudTenantsSSHKeysApi.md#pcloud_tenants_sshkeys_delete) | **DELETE** /pcloud/v1/tenants/{tenant_id}/sshkeys/{sshkey_name} | Delete a tenant&#39;s SSH key |
| [**pcloud_tenants_sshkeys_get**](PCloudTenantsSSHKeysApi.md#pcloud_tenants_sshkeys_get) | **GET** /pcloud/v1/tenants/{tenant_id}/sshkeys/{sshkey_name} | Get a tenant&#39;s SSH Key by name |
| [**pcloud_tenants_sshkeys_getall**](PCloudTenantsSSHKeysApi.md#pcloud_tenants_sshkeys_getall) | **GET** /pcloud/v1/tenants/{tenant_id}/sshkeys | List a tenant&#39;s SSH Keys |
| [**pcloud_tenants_sshkeys_post**](PCloudTenantsSSHKeysApi.md#pcloud_tenants_sshkeys_post) | **POST** /pcloud/v1/tenants/{tenant_id}/sshkeys | Add a new SSH key to the tenant |
| [**pcloud_tenants_sshkeys_put**](PCloudTenantsSSHKeysApi.md#pcloud_tenants_sshkeys_put) | **PUT** /pcloud/v1/tenants/{tenant_id}/sshkeys/{sshkey_name} | Update an SSH Key |


## pcloud_tenants_sshkeys_delete

> Object pcloud_tenants_sshkeys_delete(tenant_id, sshkey_name)

Delete a tenant's SSH key

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudTenantsSSHKeysApi.new
tenant_id = 'tenant_id_example' # String | Tenant ID of a pcloud tenant
sshkey_name = 'sshkey_name_example' # String | SSH key name for a pcloud tenant

begin
  # Delete a tenant's SSH key
  result = api_instance.pcloud_tenants_sshkeys_delete(tenant_id, sshkey_name)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudTenantsSSHKeysApi->pcloud_tenants_sshkeys_delete: #{e}"
end
```

#### Using the pcloud_tenants_sshkeys_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_tenants_sshkeys_delete_with_http_info(tenant_id, sshkey_name)

```ruby
begin
  # Delete a tenant's SSH key
  data, status_code, headers = api_instance.pcloud_tenants_sshkeys_delete_with_http_info(tenant_id, sshkey_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudTenantsSSHKeysApi->pcloud_tenants_sshkeys_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** | Tenant ID of a pcloud tenant |  |
| **sshkey_name** | **String** | SSH key name for a pcloud tenant |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## pcloud_tenants_sshkeys_get

> <SSHKey> pcloud_tenants_sshkeys_get(tenant_id, sshkey_name)

Get a tenant's SSH Key by name

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudTenantsSSHKeysApi.new
tenant_id = 'tenant_id_example' # String | Tenant ID of a pcloud tenant
sshkey_name = 'sshkey_name_example' # String | SSH key name for a pcloud tenant

begin
  # Get a tenant's SSH Key by name
  result = api_instance.pcloud_tenants_sshkeys_get(tenant_id, sshkey_name)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudTenantsSSHKeysApi->pcloud_tenants_sshkeys_get: #{e}"
end
```

#### Using the pcloud_tenants_sshkeys_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SSHKey>, Integer, Hash)> pcloud_tenants_sshkeys_get_with_http_info(tenant_id, sshkey_name)

```ruby
begin
  # Get a tenant's SSH Key by name
  data, status_code, headers = api_instance.pcloud_tenants_sshkeys_get_with_http_info(tenant_id, sshkey_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SSHKey>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudTenantsSSHKeysApi->pcloud_tenants_sshkeys_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** | Tenant ID of a pcloud tenant |  |
| **sshkey_name** | **String** | SSH key name for a pcloud tenant |  |

### Return type

[**SSHKey**](SSHKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_tenants_sshkeys_getall

> <SSHKeys> pcloud_tenants_sshkeys_getall(tenant_id)

List a tenant's SSH Keys

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudTenantsSSHKeysApi.new
tenant_id = 'tenant_id_example' # String | Tenant ID of a pcloud tenant

begin
  # List a tenant's SSH Keys
  result = api_instance.pcloud_tenants_sshkeys_getall(tenant_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudTenantsSSHKeysApi->pcloud_tenants_sshkeys_getall: #{e}"
end
```

#### Using the pcloud_tenants_sshkeys_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SSHKeys>, Integer, Hash)> pcloud_tenants_sshkeys_getall_with_http_info(tenant_id)

```ruby
begin
  # List a tenant's SSH Keys
  data, status_code, headers = api_instance.pcloud_tenants_sshkeys_getall_with_http_info(tenant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SSHKeys>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudTenantsSSHKeysApi->pcloud_tenants_sshkeys_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** | Tenant ID of a pcloud tenant |  |

### Return type

[**SSHKeys**](SSHKeys.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_tenants_sshkeys_post

> <SSHKey> pcloud_tenants_sshkeys_post(tenant_id, body)

Add a new SSH key to the tenant

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudTenantsSSHKeysApi.new
tenant_id = 'tenant_id_example' # String | Tenant ID of a pcloud tenant
body = IbmCloudPower::SSHKey.new({name: 'name_example', ssh_key: 'ssh_key_example'}) # SSHKey | Parameters for the creation of a new SSH key

begin
  # Add a new SSH key to the tenant
  result = api_instance.pcloud_tenants_sshkeys_post(tenant_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudTenantsSSHKeysApi->pcloud_tenants_sshkeys_post: #{e}"
end
```

#### Using the pcloud_tenants_sshkeys_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SSHKey>, Integer, Hash)> pcloud_tenants_sshkeys_post_with_http_info(tenant_id, body)

```ruby
begin
  # Add a new SSH key to the tenant
  data, status_code, headers = api_instance.pcloud_tenants_sshkeys_post_with_http_info(tenant_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SSHKey>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudTenantsSSHKeysApi->pcloud_tenants_sshkeys_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** | Tenant ID of a pcloud tenant |  |
| **body** | [**SSHKey**](SSHKey.md) | Parameters for the creation of a new SSH key |  |

### Return type

[**SSHKey**](SSHKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_tenants_sshkeys_put

> <SSHKey> pcloud_tenants_sshkeys_put(tenant_id, sshkey_name, body)

Update an SSH Key

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudTenantsSSHKeysApi.new
tenant_id = 'tenant_id_example' # String | Tenant ID of a pcloud tenant
sshkey_name = 'sshkey_name_example' # String | SSH key name for a pcloud tenant
body = IbmCloudPower::SSHKey.new({name: 'name_example', ssh_key: 'ssh_key_example'}) # SSHKey | Parameters for updating a Tenant's SSH Key

begin
  # Update an SSH Key
  result = api_instance.pcloud_tenants_sshkeys_put(tenant_id, sshkey_name, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudTenantsSSHKeysApi->pcloud_tenants_sshkeys_put: #{e}"
end
```

#### Using the pcloud_tenants_sshkeys_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SSHKey>, Integer, Hash)> pcloud_tenants_sshkeys_put_with_http_info(tenant_id, sshkey_name, body)

```ruby
begin
  # Update an SSH Key
  data, status_code, headers = api_instance.pcloud_tenants_sshkeys_put_with_http_info(tenant_id, sshkey_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SSHKey>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudTenantsSSHKeysApi->pcloud_tenants_sshkeys_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** | Tenant ID of a pcloud tenant |  |
| **sshkey_name** | **String** | SSH key name for a pcloud tenant |  |
| **body** | [**SSHKey**](SSHKey.md) | Parameters for updating a Tenant&#39;s SSH Key |  |

### Return type

[**SSHKey**](SSHKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

