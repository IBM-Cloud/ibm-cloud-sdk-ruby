# IbmCloudPower::NetworksApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_networks_network_interfaces_delete**](NetworksApi.md#v1_networks_network_interfaces_delete) | **DELETE** /v1/networks/{network_id}/network-interfaces/{network_interface_id} | Delete a Network Interface |
| [**v1_networks_network_interfaces_get**](NetworksApi.md#v1_networks_network_interfaces_get) | **GET** /v1/networks/{network_id}/network-interfaces/{network_interface_id} | Get a Network Interface&#39;s information |
| [**v1_networks_network_interfaces_getall**](NetworksApi.md#v1_networks_network_interfaces_getall) | **GET** /v1/networks/{network_id}/network-interfaces | Get all Network Interfaces for this network |
| [**v1_networks_network_interfaces_post**](NetworksApi.md#v1_networks_network_interfaces_post) | **POST** /v1/networks/{network_id}/network-interfaces | Perform Network Interface addition, deletion, and listing |
| [**v1_networks_network_interfaces_put**](NetworksApi.md#v1_networks_network_interfaces_put) | **PUT** /v1/networks/{network_id}/network-interfaces/{network_interface_id} | Update a Network Interface&#39;s information |


## v1_networks_network_interfaces_delete

> Object v1_networks_network_interfaces_delete(network_id, network_interface_id)

Delete a Network Interface

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworksApi.new
network_id = 'network_id_example' # String | Network ID
network_interface_id = 'network_interface_id_example' # String | Network Interface ID

begin
  # Delete a Network Interface
  result = api_instance.v1_networks_network_interfaces_delete(network_id, network_interface_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworksApi->v1_networks_network_interfaces_delete: #{e}"
end
```

#### Using the v1_networks_network_interfaces_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_networks_network_interfaces_delete_with_http_info(network_id, network_interface_id)

```ruby
begin
  # Delete a Network Interface
  data, status_code, headers = api_instance.v1_networks_network_interfaces_delete_with_http_info(network_id, network_interface_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworksApi->v1_networks_network_interfaces_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **String** | Network ID |  |
| **network_interface_id** | **String** | Network Interface ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_networks_network_interfaces_get

> <NetworkInterface> v1_networks_network_interfaces_get(network_id, network_interface_id)

Get a Network Interface's information

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworksApi.new
network_id = 'network_id_example' # String | Network ID
network_interface_id = 'network_interface_id_example' # String | Network Interface ID

begin
  # Get a Network Interface's information
  result = api_instance.v1_networks_network_interfaces_get(network_id, network_interface_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworksApi->v1_networks_network_interfaces_get: #{e}"
end
```

#### Using the v1_networks_network_interfaces_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkInterface>, Integer, Hash)> v1_networks_network_interfaces_get_with_http_info(network_id, network_interface_id)

```ruby
begin
  # Get a Network Interface's information
  data, status_code, headers = api_instance.v1_networks_network_interfaces_get_with_http_info(network_id, network_interface_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkInterface>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworksApi->v1_networks_network_interfaces_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **String** | Network ID |  |
| **network_interface_id** | **String** | Network Interface ID |  |

### Return type

[**NetworkInterface**](NetworkInterface.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_networks_network_interfaces_getall

> <NetworkInterfaces> v1_networks_network_interfaces_getall(network_id)

Get all Network Interfaces for this network

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworksApi.new
network_id = 'network_id_example' # String | Network ID

begin
  # Get all Network Interfaces for this network
  result = api_instance.v1_networks_network_interfaces_getall(network_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworksApi->v1_networks_network_interfaces_getall: #{e}"
end
```

#### Using the v1_networks_network_interfaces_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkInterfaces>, Integer, Hash)> v1_networks_network_interfaces_getall_with_http_info(network_id)

```ruby
begin
  # Get all Network Interfaces for this network
  data, status_code, headers = api_instance.v1_networks_network_interfaces_getall_with_http_info(network_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkInterfaces>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworksApi->v1_networks_network_interfaces_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **String** | Network ID |  |

### Return type

[**NetworkInterfaces**](NetworkInterfaces.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_networks_network_interfaces_post

> <NetworkInterface> v1_networks_network_interfaces_post(network_id, opts)

Perform Network Interface addition, deletion, and listing

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworksApi.new
network_id = 'network_id_example' # String | Network ID
opts = {
  body: IbmCloudPower::NetworkInterfaceCreate.new # NetworkInterfaceCreate | Create a Network Interface
}

begin
  # Perform Network Interface addition, deletion, and listing
  result = api_instance.v1_networks_network_interfaces_post(network_id, opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworksApi->v1_networks_network_interfaces_post: #{e}"
end
```

#### Using the v1_networks_network_interfaces_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkInterface>, Integer, Hash)> v1_networks_network_interfaces_post_with_http_info(network_id, opts)

```ruby
begin
  # Perform Network Interface addition, deletion, and listing
  data, status_code, headers = api_instance.v1_networks_network_interfaces_post_with_http_info(network_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkInterface>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworksApi->v1_networks_network_interfaces_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **String** | Network ID |  |
| **body** | [**NetworkInterfaceCreate**](NetworkInterfaceCreate.md) | Create a Network Interface | [optional] |

### Return type

[**NetworkInterface**](NetworkInterface.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_networks_network_interfaces_put

> <NetworkInterface> v1_networks_network_interfaces_put(network_id, network_interface_id, body)

Update a Network Interface's information

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworksApi.new
network_id = 'network_id_example' # String | Network ID
network_interface_id = 'network_interface_id_example' # String | Network Interface ID
body = IbmCloudPower::NetworkInterfaceUpdate.new # NetworkInterfaceUpdate | Parameters for updating a Network Interface

begin
  # Update a Network Interface's information
  result = api_instance.v1_networks_network_interfaces_put(network_id, network_interface_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworksApi->v1_networks_network_interfaces_put: #{e}"
end
```

#### Using the v1_networks_network_interfaces_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkInterface>, Integer, Hash)> v1_networks_network_interfaces_put_with_http_info(network_id, network_interface_id, body)

```ruby
begin
  # Update a Network Interface's information
  data, status_code, headers = api_instance.v1_networks_network_interfaces_put_with_http_info(network_id, network_interface_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkInterface>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworksApi->v1_networks_network_interfaces_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **String** | Network ID |  |
| **network_interface_id** | **String** | Network Interface ID |  |
| **body** | [**NetworkInterfaceUpdate**](NetworkInterfaceUpdate.md) | Parameters for updating a Network Interface |  |

### Return type

[**NetworkInterface**](NetworkInterface.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

