# IbmCloudPower::PCloudNetworksApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_networks_delete**](PCloudNetworksApi.md#pcloud_networks_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id} | Delete a Network |
| [**pcloud_networks_get**](PCloudNetworksApi.md#pcloud_networks_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id} | Get a network&#39;s current state/information |
| [**pcloud_networks_getall**](PCloudNetworksApi.md#pcloud_networks_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks | Get all networks in this cloud instance |
| [**pcloud_networks_ports_delete**](PCloudNetworksApi.md#pcloud_networks_ports_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}/ports/{port_id} | Delete a Network Port |
| [**pcloud_networks_ports_get**](PCloudNetworksApi.md#pcloud_networks_ports_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}/ports/{port_id} | Get a port&#39;s information |
| [**pcloud_networks_ports_getall**](PCloudNetworksApi.md#pcloud_networks_ports_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}/ports | Get all ports for this network |
| [**pcloud_networks_ports_post**](PCloudNetworksApi.md#pcloud_networks_ports_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}/ports | Perform port addition, deletion, and listing |
| [**pcloud_networks_ports_put**](PCloudNetworksApi.md#pcloud_networks_ports_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}/ports/{port_id} | Update a port&#39;s information |
| [**pcloud_networks_post**](PCloudNetworksApi.md#pcloud_networks_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks | Create a new Network |
| [**pcloud_networks_put**](PCloudNetworksApi.md#pcloud_networks_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id} | Update a Network |


## pcloud_networks_delete

> Object pcloud_networks_delete(cloud_instance_id, network_id)

Delete a Network

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudNetworksApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
network_id = 'network_id_example' # String | Network ID

begin
  # Delete a Network
  result = api_instance.pcloud_networks_delete(cloud_instance_id, network_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudNetworksApi->pcloud_networks_delete: #{e}"
end
```

#### Using the pcloud_networks_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_networks_delete_with_http_info(cloud_instance_id, network_id)

```ruby
begin
  # Delete a Network
  data, status_code, headers = api_instance.pcloud_networks_delete_with_http_info(cloud_instance_id, network_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudNetworksApi->pcloud_networks_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **network_id** | **String** | Network ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## pcloud_networks_get

> <Network> pcloud_networks_get(cloud_instance_id, network_id)

Get a network's current state/information

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudNetworksApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
network_id = 'network_id_example' # String | Network ID

begin
  # Get a network's current state/information
  result = api_instance.pcloud_networks_get(cloud_instance_id, network_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudNetworksApi->pcloud_networks_get: #{e}"
end
```

#### Using the pcloud_networks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Network>, Integer, Hash)> pcloud_networks_get_with_http_info(cloud_instance_id, network_id)

```ruby
begin
  # Get a network's current state/information
  data, status_code, headers = api_instance.pcloud_networks_get_with_http_info(cloud_instance_id, network_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Network>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudNetworksApi->pcloud_networks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **network_id** | **String** | Network ID |  |

### Return type

[**Network**](Network.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_networks_getall

> <Networks> pcloud_networks_getall(cloud_instance_id, opts)

Get all networks in this cloud instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudNetworksApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
opts = {
  filter: 'filter_example' # String | A filter expression that filters resources listed in the response
}

begin
  # Get all networks in this cloud instance
  result = api_instance.pcloud_networks_getall(cloud_instance_id, opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudNetworksApi->pcloud_networks_getall: #{e}"
end
```

#### Using the pcloud_networks_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Networks>, Integer, Hash)> pcloud_networks_getall_with_http_info(cloud_instance_id, opts)

```ruby
begin
  # Get all networks in this cloud instance
  data, status_code, headers = api_instance.pcloud_networks_getall_with_http_info(cloud_instance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Networks>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudNetworksApi->pcloud_networks_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **filter** | **String** | A filter expression that filters resources listed in the response | [optional] |

### Return type

[**Networks**](Networks.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_networks_ports_delete

> Object pcloud_networks_ports_delete(cloud_instance_id, network_id, port_id)

Delete a Network Port

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudNetworksApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
network_id = 'network_id_example' # String | Network ID
port_id = 'port_id_example' # String | Port ID

begin
  # Delete a Network Port
  result = api_instance.pcloud_networks_ports_delete(cloud_instance_id, network_id, port_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudNetworksApi->pcloud_networks_ports_delete: #{e}"
end
```

#### Using the pcloud_networks_ports_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_networks_ports_delete_with_http_info(cloud_instance_id, network_id, port_id)

```ruby
begin
  # Delete a Network Port
  data, status_code, headers = api_instance.pcloud_networks_ports_delete_with_http_info(cloud_instance_id, network_id, port_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudNetworksApi->pcloud_networks_ports_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **network_id** | **String** | Network ID |  |
| **port_id** | **String** | Port ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_networks_ports_get

> <NetworkPort> pcloud_networks_ports_get(cloud_instance_id, network_id, port_id)

Get a port's information

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudNetworksApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
network_id = 'network_id_example' # String | Network ID
port_id = 'port_id_example' # String | Port ID

begin
  # Get a port's information
  result = api_instance.pcloud_networks_ports_get(cloud_instance_id, network_id, port_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudNetworksApi->pcloud_networks_ports_get: #{e}"
end
```

#### Using the pcloud_networks_ports_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkPort>, Integer, Hash)> pcloud_networks_ports_get_with_http_info(cloud_instance_id, network_id, port_id)

```ruby
begin
  # Get a port's information
  data, status_code, headers = api_instance.pcloud_networks_ports_get_with_http_info(cloud_instance_id, network_id, port_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkPort>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudNetworksApi->pcloud_networks_ports_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **network_id** | **String** | Network ID |  |
| **port_id** | **String** | Port ID |  |

### Return type

[**NetworkPort**](NetworkPort.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, applicaton/json


## pcloud_networks_ports_getall

> <NetworkPorts> pcloud_networks_ports_getall(cloud_instance_id, network_id)

Get all ports for this network

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudNetworksApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
network_id = 'network_id_example' # String | Network ID

begin
  # Get all ports for this network
  result = api_instance.pcloud_networks_ports_getall(cloud_instance_id, network_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudNetworksApi->pcloud_networks_ports_getall: #{e}"
end
```

#### Using the pcloud_networks_ports_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkPorts>, Integer, Hash)> pcloud_networks_ports_getall_with_http_info(cloud_instance_id, network_id)

```ruby
begin
  # Get all ports for this network
  data, status_code, headers = api_instance.pcloud_networks_ports_getall_with_http_info(cloud_instance_id, network_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkPorts>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudNetworksApi->pcloud_networks_ports_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **network_id** | **String** | Network ID |  |

### Return type

[**NetworkPorts**](NetworkPorts.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_networks_ports_post

> <NetworkPort> pcloud_networks_ports_post(cloud_instance_id, network_id, opts)

Perform port addition, deletion, and listing

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudNetworksApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
network_id = 'network_id_example' # String | Network ID
opts = {
  body: IbmCloudPower::NetworkPortCreate.new # NetworkPortCreate | Create a Network Port
}

begin
  # Perform port addition, deletion, and listing
  result = api_instance.pcloud_networks_ports_post(cloud_instance_id, network_id, opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudNetworksApi->pcloud_networks_ports_post: #{e}"
end
```

#### Using the pcloud_networks_ports_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkPort>, Integer, Hash)> pcloud_networks_ports_post_with_http_info(cloud_instance_id, network_id, opts)

```ruby
begin
  # Perform port addition, deletion, and listing
  data, status_code, headers = api_instance.pcloud_networks_ports_post_with_http_info(cloud_instance_id, network_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkPort>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudNetworksApi->pcloud_networks_ports_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **network_id** | **String** | Network ID |  |
| **body** | [**NetworkPortCreate**](NetworkPortCreate.md) | Create a Network Port | [optional] |

### Return type

[**NetworkPort**](NetworkPort.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_networks_ports_put

> <NetworkPort> pcloud_networks_ports_put(cloud_instance_id, network_id, port_id, body)

Update a port's information

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudNetworksApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
network_id = 'network_id_example' # String | Network ID
port_id = 'port_id_example' # String | Port ID
body = IbmCloudPower::NetworkPortUpdate.new # NetworkPortUpdate | Parameters for updating a Port

begin
  # Update a port's information
  result = api_instance.pcloud_networks_ports_put(cloud_instance_id, network_id, port_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudNetworksApi->pcloud_networks_ports_put: #{e}"
end
```

#### Using the pcloud_networks_ports_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkPort>, Integer, Hash)> pcloud_networks_ports_put_with_http_info(cloud_instance_id, network_id, port_id, body)

```ruby
begin
  # Update a port's information
  data, status_code, headers = api_instance.pcloud_networks_ports_put_with_http_info(cloud_instance_id, network_id, port_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkPort>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudNetworksApi->pcloud_networks_ports_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **network_id** | **String** | Network ID |  |
| **port_id** | **String** | Port ID |  |
| **body** | [**NetworkPortUpdate**](NetworkPortUpdate.md) | Parameters for updating a Port |  |

### Return type

[**NetworkPort**](NetworkPort.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_networks_post

> <Network> pcloud_networks_post(cloud_instance_id, body)

Create a new Network

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudNetworksApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::NetworkCreate.new({type: 'vlan'}) # NetworkCreate | Parameters for the creation of a new network

begin
  # Create a new Network
  result = api_instance.pcloud_networks_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudNetworksApi->pcloud_networks_post: #{e}"
end
```

#### Using the pcloud_networks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Network>, Integer, Hash)> pcloud_networks_post_with_http_info(cloud_instance_id, body)

```ruby
begin
  # Create a new Network
  data, status_code, headers = api_instance.pcloud_networks_post_with_http_info(cloud_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Network>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudNetworksApi->pcloud_networks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **body** | [**NetworkCreate**](NetworkCreate.md) | Parameters for the creation of a new network |  |

### Return type

[**Network**](Network.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_networks_put

> <Network> pcloud_networks_put(cloud_instance_id, network_id, body)

Update a Network

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudNetworksApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
network_id = 'network_id_example' # String | Network ID
body = IbmCloudPower::NetworkUpdate.new # NetworkUpdate | Parameters to update a Network

begin
  # Update a Network
  result = api_instance.pcloud_networks_put(cloud_instance_id, network_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudNetworksApi->pcloud_networks_put: #{e}"
end
```

#### Using the pcloud_networks_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Network>, Integer, Hash)> pcloud_networks_put_with_http_info(cloud_instance_id, network_id, body)

```ruby
begin
  # Update a Network
  data, status_code, headers = api_instance.pcloud_networks_put_with_http_info(cloud_instance_id, network_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Network>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudNetworksApi->pcloud_networks_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **network_id** | **String** | Network ID |  |
| **body** | [**NetworkUpdate**](NetworkUpdate.md) | Parameters to update a Network |  |

### Return type

[**Network**](Network.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

