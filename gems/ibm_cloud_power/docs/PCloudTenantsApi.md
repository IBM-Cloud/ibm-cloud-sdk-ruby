# IbmCloudPower::PCloudTenantsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_tenants_get**](PCloudTenantsApi.md#pcloud_tenants_get) | **GET** /pcloud/v1/tenants/{tenant_id} | Get a tenant&#39;s current state or information |
| [**pcloud_tenants_put**](PCloudTenantsApi.md#pcloud_tenants_put) | **PUT** /pcloud/v1/tenants/{tenant_id} | Update a tenant |


## pcloud_tenants_get

> <Tenant> pcloud_tenants_get(tenant_id)

Get a tenant's current state or information

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudTenantsApi.new
tenant_id = 'tenant_id_example' # String | Tenant ID of a pcloud tenant

begin
  # Get a tenant's current state or information
  result = api_instance.pcloud_tenants_get(tenant_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudTenantsApi->pcloud_tenants_get: #{e}"
end
```

#### Using the pcloud_tenants_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tenant>, Integer, Hash)> pcloud_tenants_get_with_http_info(tenant_id)

```ruby
begin
  # Get a tenant's current state or information
  data, status_code, headers = api_instance.pcloud_tenants_get_with_http_info(tenant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tenant>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudTenantsApi->pcloud_tenants_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** | Tenant ID of a pcloud tenant |  |

### Return type

[**Tenant**](Tenant.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_tenants_put

> <Tenant> pcloud_tenants_put(tenant_id, body)

Update a tenant

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudTenantsApi.new
tenant_id = 'tenant_id_example' # String | Tenant ID of a pcloud tenant
body = IbmCloudPower::TenantUpdate.new # TenantUpdate | Parameters for updating a Tenant

begin
  # Update a tenant
  result = api_instance.pcloud_tenants_put(tenant_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudTenantsApi->pcloud_tenants_put: #{e}"
end
```

#### Using the pcloud_tenants_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tenant>, Integer, Hash)> pcloud_tenants_put_with_http_info(tenant_id, body)

```ruby
begin
  # Update a tenant
  data, status_code, headers = api_instance.pcloud_tenants_put_with_http_info(tenant_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tenant>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudTenantsApi->pcloud_tenants_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** | Tenant ID of a pcloud tenant |  |
| **body** | [**TenantUpdate**](TenantUpdate.md) | Parameters for updating a Tenant |  |

### Return type

[**Tenant**](Tenant.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

