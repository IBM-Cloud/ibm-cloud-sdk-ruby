# IbmCloudPower::PCloudTenantsSSHKeysApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pcloud_tenants_sshkeys_delete**](PCloudTenantsSSHKeysApi.md#pcloud_tenants_sshkeys_delete) | **DELETE** /pcloud/v1/tenants/{tenant_id}/sshkeys/{sshkey_name} | Delete a tenant&#39;s SSH key
[**pcloud_tenants_sshkeys_get**](PCloudTenantsSSHKeysApi.md#pcloud_tenants_sshkeys_get) | **GET** /pcloud/v1/tenants/{tenant_id}/sshkeys/{sshkey_name} | Get a tenant&#39;s SSH Key by name
[**pcloud_tenants_sshkeys_getall**](PCloudTenantsSSHKeysApi.md#pcloud_tenants_sshkeys_getall) | **GET** /pcloud/v1/tenants/{tenant_id}/sshkeys | List a tenant&#39;s SSH Keys
[**pcloud_tenants_sshkeys_post**](PCloudTenantsSSHKeysApi.md#pcloud_tenants_sshkeys_post) | **POST** /pcloud/v1/tenants/{tenant_id}/sshkeys | Add a new SSH key to the tenant
[**pcloud_tenants_sshkeys_put**](PCloudTenantsSSHKeysApi.md#pcloud_tenants_sshkeys_put) | **PUT** /pcloud/v1/tenants/{tenant_id}/sshkeys/{sshkey_name} | Update an SSH Key



## pcloud_tenants_sshkeys_delete

> Object pcloud_tenants_sshkeys_delete(tenant_id, sshkey_name)

Delete a tenant's SSH key

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudTenantsSSHKeysApi.new
tenant_id = 'tenant_id_example' # String | Tenant ID of a pcloud tenant
sshkey_name = 'sshkey_name_example' # String | SSH key name for a pcloud tenant

begin
  #Delete a tenant's SSH key
  result = api_instance.pcloud_tenants_sshkeys_delete(tenant_id, sshkey_name)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudTenantsSSHKeysApi->pcloud_tenants_sshkeys_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenant_id** | **String**| Tenant ID of a pcloud tenant | 
 **sshkey_name** | **String**| SSH key name for a pcloud tenant | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## pcloud_tenants_sshkeys_get

> SSHKey pcloud_tenants_sshkeys_get(tenant_id, sshkey_name)

Get a tenant's SSH Key by name

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudTenantsSSHKeysApi.new
tenant_id = 'tenant_id_example' # String | Tenant ID of a pcloud tenant
sshkey_name = 'sshkey_name_example' # String | SSH key name for a pcloud tenant

begin
  #Get a tenant's SSH Key by name
  result = api_instance.pcloud_tenants_sshkeys_get(tenant_id, sshkey_name)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudTenantsSSHKeysApi->pcloud_tenants_sshkeys_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenant_id** | **String**| Tenant ID of a pcloud tenant | 
 **sshkey_name** | **String**| SSH key name for a pcloud tenant | 

### Return type

[**SSHKey**](SSHKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_tenants_sshkeys_getall

> SSHKeys pcloud_tenants_sshkeys_getall(tenant_id)

List a tenant's SSH Keys

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudTenantsSSHKeysApi.new
tenant_id = 'tenant_id_example' # String | Tenant ID of a pcloud tenant

begin
  #List a tenant's SSH Keys
  result = api_instance.pcloud_tenants_sshkeys_getall(tenant_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudTenantsSSHKeysApi->pcloud_tenants_sshkeys_getall: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenant_id** | **String**| Tenant ID of a pcloud tenant | 

### Return type

[**SSHKeys**](SSHKeys.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_tenants_sshkeys_post

> SSHKey pcloud_tenants_sshkeys_post(tenant_id, body)

Add a new SSH key to the tenant

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudTenantsSSHKeysApi.new
tenant_id = 'tenant_id_example' # String | Tenant ID of a pcloud tenant
body = IbmCloudPower::SSHKey.new # SSHKey | Parameters for the creation of a new SSH key

begin
  #Add a new SSH key to the tenant
  result = api_instance.pcloud_tenants_sshkeys_post(tenant_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudTenantsSSHKeysApi->pcloud_tenants_sshkeys_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenant_id** | **String**| Tenant ID of a pcloud tenant | 
 **body** | [**SSHKey**](SSHKey.md)| Parameters for the creation of a new SSH key | 

### Return type

[**SSHKey**](SSHKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_tenants_sshkeys_put

> SSHKey pcloud_tenants_sshkeys_put(tenant_id, sshkey_name, body)

Update an SSH Key

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudTenantsSSHKeysApi.new
tenant_id = 'tenant_id_example' # String | Tenant ID of a pcloud tenant
sshkey_name = 'sshkey_name_example' # String | SSH key name for a pcloud tenant
body = IbmCloudPower::SSHKey.new # SSHKey | Parameters for updating a Tenant's SSH Key

begin
  #Update an SSH Key
  result = api_instance.pcloud_tenants_sshkeys_put(tenant_id, sshkey_name, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudTenantsSSHKeysApi->pcloud_tenants_sshkeys_put: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenant_id** | **String**| Tenant ID of a pcloud tenant | 
 **sshkey_name** | **String**| SSH key name for a pcloud tenant | 
 **body** | [**SSHKey**](SSHKey.md)| Parameters for updating a Tenant&#39;s SSH Key | 

### Return type

[**SSHKey**](SSHKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

