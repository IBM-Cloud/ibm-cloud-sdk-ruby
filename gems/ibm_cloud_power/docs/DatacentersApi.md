# IbmCloudPower::DatacentersApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_datacenters_get**](DatacentersApi.md#v1_datacenters_get) | **GET** /v1/datacenters/{datacenter_region} | Get a Datacenter&#39;s information and capabilities |
| [**v1_datacenters_getall**](DatacentersApi.md#v1_datacenters_getall) | **GET** /v1/datacenters | Get all Datacenters information and capabilities |
| [**v1_datacenters_private_get**](DatacentersApi.md#v1_datacenters_private_get) | **GET** /v1/datacenters/private/{datacenter_region} | Get a private Datacenter&#39;s information and capabilities |
| [**v1_datacenters_private_getall**](DatacentersApi.md#v1_datacenters_private_getall) | **GET** /v1/datacenters/private | Get private Datacenter information and capabilities |


## v1_datacenters_get

> <Datacenter> v1_datacenters_get(datacenter_region)

Get a Datacenter's information and capabilities

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::DatacentersApi.new
datacenter_region = 'datacenter_region_example' # String | Datacenter Region

begin
  # Get a Datacenter's information and capabilities
  result = api_instance.v1_datacenters_get(datacenter_region)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling DatacentersApi->v1_datacenters_get: #{e}"
end
```

#### Using the v1_datacenters_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Datacenter>, Integer, Hash)> v1_datacenters_get_with_http_info(datacenter_region)

```ruby
begin
  # Get a Datacenter's information and capabilities
  data, status_code, headers = api_instance.v1_datacenters_get_with_http_info(datacenter_region)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Datacenter>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling DatacentersApi->v1_datacenters_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_region** | **String** | Datacenter Region |  |

### Return type

[**Datacenter**](Datacenter.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_datacenters_getall

> <Datacenters> v1_datacenters_getall

Get all Datacenters information and capabilities

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::DatacentersApi.new

begin
  # Get all Datacenters information and capabilities
  result = api_instance.v1_datacenters_getall
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling DatacentersApi->v1_datacenters_getall: #{e}"
end
```

#### Using the v1_datacenters_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Datacenters>, Integer, Hash)> v1_datacenters_getall_with_http_info

```ruby
begin
  # Get all Datacenters information and capabilities
  data, status_code, headers = api_instance.v1_datacenters_getall_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Datacenters>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling DatacentersApi->v1_datacenters_getall_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Datacenters**](Datacenters.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_datacenters_private_get

> <Datacenter> v1_datacenters_private_get(datacenter_region)

Get a private Datacenter's information and capabilities

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::DatacentersApi.new
datacenter_region = 'datacenter_region_example' # String | Datacenter Region

begin
  # Get a private Datacenter's information and capabilities
  result = api_instance.v1_datacenters_private_get(datacenter_region)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling DatacentersApi->v1_datacenters_private_get: #{e}"
end
```

#### Using the v1_datacenters_private_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Datacenter>, Integer, Hash)> v1_datacenters_private_get_with_http_info(datacenter_region)

```ruby
begin
  # Get a private Datacenter's information and capabilities
  data, status_code, headers = api_instance.v1_datacenters_private_get_with_http_info(datacenter_region)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Datacenter>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling DatacentersApi->v1_datacenters_private_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_region** | **String** | Datacenter Region |  |

### Return type

[**Datacenter**](Datacenter.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_datacenters_private_getall

> <Datacenters> v1_datacenters_private_getall

Get private Datacenter information and capabilities

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::DatacentersApi.new

begin
  # Get private Datacenter information and capabilities
  result = api_instance.v1_datacenters_private_getall
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling DatacentersApi->v1_datacenters_private_getall: #{e}"
end
```

#### Using the v1_datacenters_private_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Datacenters>, Integer, Hash)> v1_datacenters_private_getall_with_http_info

```ruby
begin
  # Get private Datacenter information and capabilities
  data, status_code, headers = api_instance.v1_datacenters_private_getall_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Datacenters>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling DatacentersApi->v1_datacenters_private_getall_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Datacenters**](Datacenters.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

