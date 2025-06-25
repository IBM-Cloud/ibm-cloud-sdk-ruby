# IbmCloudPower::PCloudVirtualSerialNumberApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_pvminstances_virtualserialnumber_delete**](PCloudVirtualSerialNumberApi.md#pcloud_pvminstances_virtualserialnumber_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/virtual-serial-number | Unassign Virtual Serial Number from a PVM Instance |
| [**pcloud_pvminstances_virtualserialnumber_get**](PCloudVirtualSerialNumberApi.md#pcloud_pvminstances_virtualserialnumber_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/virtual-serial-number | Get a PVM Instance&#39;s Virtual Serial Number Information |
| [**pcloud_pvminstances_virtualserialnumber_post**](PCloudVirtualSerialNumberApi.md#pcloud_pvminstances_virtualserialnumber_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/virtual-serial-number | Assign Virtual Serial Number to a PVM Instance |
| [**pcloud_pvminstances_virtualserialnumber_put**](PCloudVirtualSerialNumberApi.md#pcloud_pvminstances_virtualserialnumber_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/virtual-serial-number | Update a Virtual Serial Number |
| [**pcloud_virtualserialnumber_delete**](PCloudVirtualSerialNumberApi.md#pcloud_virtualserialnumber_delete) | **DELETE** /v1/virtual-serial-number/{virtual_serial_number} | Unreserve a retained Virtual Serial Number |
| [**pcloud_virtualserialnumber_get**](PCloudVirtualSerialNumberApi.md#pcloud_virtualserialnumber_get) | **GET** /v1/virtual-serial-number/{virtual_serial_number} | Get information for a Virtual Serial Number |
| [**pcloud_virtualserialnumber_getall**](PCloudVirtualSerialNumberApi.md#pcloud_virtualserialnumber_getall) | **GET** /v1/virtual-serial-number | List all utilized and retained VSNs |
| [**pcloud_virtualserialnumber_put**](PCloudVirtualSerialNumberApi.md#pcloud_virtualserialnumber_put) | **PUT** /v1/virtual-serial-number/{virtual_serial_number} | Update Description of a Reserved Virtual Serial Number |


## pcloud_pvminstances_virtualserialnumber_delete

> Object pcloud_pvminstances_virtualserialnumber_delete(cloud_instance_id, pvm_instance_id, opts)

Unassign Virtual Serial Number from a PVM Instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVirtualSerialNumberApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
opts = {
  body: IbmCloudPower::DeleteServerVirtualSerialNumber.new # DeleteServerVirtualSerialNumber | Parameters to unassign a Virtual Serial Number attached to a PVM Instance
}

begin
  # Unassign Virtual Serial Number from a PVM Instance
  result = api_instance.pcloud_pvminstances_virtualserialnumber_delete(cloud_instance_id, pvm_instance_id, opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVirtualSerialNumberApi->pcloud_pvminstances_virtualserialnumber_delete: #{e}"
end
```

#### Using the pcloud_pvminstances_virtualserialnumber_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_pvminstances_virtualserialnumber_delete_with_http_info(cloud_instance_id, pvm_instance_id, opts)

```ruby
begin
  # Unassign Virtual Serial Number from a PVM Instance
  data, status_code, headers = api_instance.pcloud_pvminstances_virtualserialnumber_delete_with_http_info(cloud_instance_id, pvm_instance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVirtualSerialNumberApi->pcloud_pvminstances_virtualserialnumber_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **body** | [**DeleteServerVirtualSerialNumber**](DeleteServerVirtualSerialNumber.md) | Parameters to unassign a Virtual Serial Number attached to a PVM Instance | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_virtualserialnumber_get

> <VirtualSerialNumber> pcloud_pvminstances_virtualserialnumber_get(cloud_instance_id, pvm_instance_id)

Get a PVM Instance's Virtual Serial Number Information

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVirtualSerialNumberApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID

begin
  # Get a PVM Instance's Virtual Serial Number Information
  result = api_instance.pcloud_pvminstances_virtualserialnumber_get(cloud_instance_id, pvm_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVirtualSerialNumberApi->pcloud_pvminstances_virtualserialnumber_get: #{e}"
end
```

#### Using the pcloud_pvminstances_virtualserialnumber_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualSerialNumber>, Integer, Hash)> pcloud_pvminstances_virtualserialnumber_get_with_http_info(cloud_instance_id, pvm_instance_id)

```ruby
begin
  # Get a PVM Instance's Virtual Serial Number Information
  data, status_code, headers = api_instance.pcloud_pvminstances_virtualserialnumber_get_with_http_info(cloud_instance_id, pvm_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualSerialNumber>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVirtualSerialNumberApi->pcloud_pvminstances_virtualserialnumber_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |

### Return type

[**VirtualSerialNumber**](VirtualSerialNumber.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_pvminstances_virtualserialnumber_post

> <VirtualSerialNumber> pcloud_pvminstances_virtualserialnumber_post(cloud_instance_id, pvm_instance_id, body)

Assign Virtual Serial Number to a PVM Instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVirtualSerialNumberApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
body = IbmCloudPower::AddServerVirtualSerialNumber.new({serial: 'serial_example'}) # AddServerVirtualSerialNumber | Parameters to assign Virtual Serial Number to a PVM Instance

begin
  # Assign Virtual Serial Number to a PVM Instance
  result = api_instance.pcloud_pvminstances_virtualserialnumber_post(cloud_instance_id, pvm_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVirtualSerialNumberApi->pcloud_pvminstances_virtualserialnumber_post: #{e}"
end
```

#### Using the pcloud_pvminstances_virtualserialnumber_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualSerialNumber>, Integer, Hash)> pcloud_pvminstances_virtualserialnumber_post_with_http_info(cloud_instance_id, pvm_instance_id, body)

```ruby
begin
  # Assign Virtual Serial Number to a PVM Instance
  data, status_code, headers = api_instance.pcloud_pvminstances_virtualserialnumber_post_with_http_info(cloud_instance_id, pvm_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualSerialNumber>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVirtualSerialNumberApi->pcloud_pvminstances_virtualserialnumber_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **body** | [**AddServerVirtualSerialNumber**](AddServerVirtualSerialNumber.md) | Parameters to assign Virtual Serial Number to a PVM Instance |  |

### Return type

[**VirtualSerialNumber**](VirtualSerialNumber.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_virtualserialnumber_put

> <VirtualSerialNumber> pcloud_pvminstances_virtualserialnumber_put(cloud_instance_id, pvm_instance_id, body)

Update a Virtual Serial Number

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVirtualSerialNumberApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
body = IbmCloudPower::UpdateServerVirtualSerialNumber.new # UpdateServerVirtualSerialNumber | Parameters to update a Virtual Serial Number description

begin
  # Update a Virtual Serial Number
  result = api_instance.pcloud_pvminstances_virtualserialnumber_put(cloud_instance_id, pvm_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVirtualSerialNumberApi->pcloud_pvminstances_virtualserialnumber_put: #{e}"
end
```

#### Using the pcloud_pvminstances_virtualserialnumber_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualSerialNumber>, Integer, Hash)> pcloud_pvminstances_virtualserialnumber_put_with_http_info(cloud_instance_id, pvm_instance_id, body)

```ruby
begin
  # Update a Virtual Serial Number
  data, status_code, headers = api_instance.pcloud_pvminstances_virtualserialnumber_put_with_http_info(cloud_instance_id, pvm_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualSerialNumber>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVirtualSerialNumberApi->pcloud_pvminstances_virtualserialnumber_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **body** | [**UpdateServerVirtualSerialNumber**](UpdateServerVirtualSerialNumber.md) | Parameters to update a Virtual Serial Number description |  |

### Return type

[**VirtualSerialNumber**](VirtualSerialNumber.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_virtualserialnumber_delete

> Object pcloud_virtualserialnumber_delete(virtual_serial_number)

Unreserve a retained Virtual Serial Number

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVirtualSerialNumberApi.new
virtual_serial_number = 'virtual_serial_number_example' # String | Virtual Serial Number

begin
  # Unreserve a retained Virtual Serial Number
  result = api_instance.pcloud_virtualserialnumber_delete(virtual_serial_number)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVirtualSerialNumberApi->pcloud_virtualserialnumber_delete: #{e}"
end
```

#### Using the pcloud_virtualserialnumber_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_virtualserialnumber_delete_with_http_info(virtual_serial_number)

```ruby
begin
  # Unreserve a retained Virtual Serial Number
  data, status_code, headers = api_instance.pcloud_virtualserialnumber_delete_with_http_info(virtual_serial_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVirtualSerialNumberApi->pcloud_virtualserialnumber_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **virtual_serial_number** | **String** | Virtual Serial Number |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_virtualserialnumber_get

> <VirtualSerialNumber> pcloud_virtualserialnumber_get(virtual_serial_number)

Get information for a Virtual Serial Number

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVirtualSerialNumberApi.new
virtual_serial_number = 'virtual_serial_number_example' # String | Virtual Serial Number

begin
  # Get information for a Virtual Serial Number
  result = api_instance.pcloud_virtualserialnumber_get(virtual_serial_number)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVirtualSerialNumberApi->pcloud_virtualserialnumber_get: #{e}"
end
```

#### Using the pcloud_virtualserialnumber_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualSerialNumber>, Integer, Hash)> pcloud_virtualserialnumber_get_with_http_info(virtual_serial_number)

```ruby
begin
  # Get information for a Virtual Serial Number
  data, status_code, headers = api_instance.pcloud_virtualserialnumber_get_with_http_info(virtual_serial_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualSerialNumber>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVirtualSerialNumberApi->pcloud_virtualserialnumber_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **virtual_serial_number** | **String** | Virtual Serial Number |  |

### Return type

[**VirtualSerialNumber**](VirtualSerialNumber.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_virtualserialnumber_getall

> <Array<VirtualSerialNumber>> pcloud_virtualserialnumber_getall(opts)

List all utilized and retained VSNs

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVirtualSerialNumberApi.new
opts = {
  pvm_instance_id: 'pvm_instance_id_example' # String | PVM Instance ID
}

begin
  # List all utilized and retained VSNs
  result = api_instance.pcloud_virtualserialnumber_getall(opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVirtualSerialNumberApi->pcloud_virtualserialnumber_getall: #{e}"
end
```

#### Using the pcloud_virtualserialnumber_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<VirtualSerialNumber>>, Integer, Hash)> pcloud_virtualserialnumber_getall_with_http_info(opts)

```ruby
begin
  # List all utilized and retained VSNs
  data, status_code, headers = api_instance.pcloud_virtualserialnumber_getall_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<VirtualSerialNumber>>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVirtualSerialNumberApi->pcloud_virtualserialnumber_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pvm_instance_id** | **String** | PVM Instance ID | [optional] |

### Return type

[**Array&lt;VirtualSerialNumber&gt;**](VirtualSerialNumber.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_virtualserialnumber_put

> <GetServerVirtualSerialNumber> pcloud_virtualserialnumber_put(virtual_serial_number, body)

Update Description of a Reserved Virtual Serial Number

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVirtualSerialNumberApi.new
virtual_serial_number = 'virtual_serial_number_example' # String | Virtual Serial Number
body = IbmCloudPower::UpdateVirtualSerialNumber.new({description: 'description_example'}) # UpdateVirtualSerialNumber | Parameters to edit description of a reserved Virtual Serial Number

begin
  # Update Description of a Reserved Virtual Serial Number
  result = api_instance.pcloud_virtualserialnumber_put(virtual_serial_number, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVirtualSerialNumberApi->pcloud_virtualserialnumber_put: #{e}"
end
```

#### Using the pcloud_virtualserialnumber_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetServerVirtualSerialNumber>, Integer, Hash)> pcloud_virtualserialnumber_put_with_http_info(virtual_serial_number, body)

```ruby
begin
  # Update Description of a Reserved Virtual Serial Number
  data, status_code, headers = api_instance.pcloud_virtualserialnumber_put_with_http_info(virtual_serial_number, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetServerVirtualSerialNumber>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVirtualSerialNumberApi->pcloud_virtualserialnumber_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **virtual_serial_number** | **String** | Virtual Serial Number |  |
| **body** | [**UpdateVirtualSerialNumber**](UpdateVirtualSerialNumber.md) | Parameters to edit description of a reserved Virtual Serial Number |  |

### Return type

[**GetServerVirtualSerialNumber**](GetServerVirtualSerialNumber.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

