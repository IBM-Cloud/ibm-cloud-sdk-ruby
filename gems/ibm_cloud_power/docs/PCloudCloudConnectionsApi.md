# IbmCloudPower::PCloudCloudConnectionsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_cloudconnections_delete**](PCloudCloudConnectionsApi.md#pcloud_cloudconnections_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections/{cloud_connection_id} | Delete a Cloud Connection |
| [**pcloud_cloudconnections_get**](PCloudCloudConnectionsApi.md#pcloud_cloudconnections_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections/{cloud_connection_id} | Get a cloud connection&#39;s state/information |
| [**pcloud_cloudconnections_getall**](PCloudCloudConnectionsApi.md#pcloud_cloudconnections_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections | Get all cloud connections in this cloud instance |
| [**pcloud_cloudconnections_networks_delete**](PCloudCloudConnectionsApi.md#pcloud_cloudconnections_networks_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections/{cloud_connection_id}/networks/{network_id} | Detach a network from a Cloud Connection |
| [**pcloud_cloudconnections_networks_put**](PCloudCloudConnectionsApi.md#pcloud_cloudconnections_networks_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections/{cloud_connection_id}/networks/{network_id} | Attach a network to the cloud connection |
| [**pcloud_cloudconnections_post**](PCloudCloudConnectionsApi.md#pcloud_cloudconnections_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections | Create a new cloud connection |
| [**pcloud_cloudconnections_put**](PCloudCloudConnectionsApi.md#pcloud_cloudconnections_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections/{cloud_connection_id} | Update a Cloud Connection |
| [**pcloud_cloudconnections_virtualprivateclouds_getall**](PCloudCloudConnectionsApi.md#pcloud_cloudconnections_virtualprivateclouds_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections-virtual-private-clouds | Get all virtual private cloud connections in this cloud instance |


## pcloud_cloudconnections_delete

> Object pcloud_cloudconnections_delete(cloud_instance_id, cloud_connection_id)

Delete a Cloud Connection

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudCloudConnectionsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
cloud_connection_id = 'cloud_connection_id_example' # String | Cloud Connection ID

begin
  # Delete a Cloud Connection
  result = api_instance.pcloud_cloudconnections_delete(cloud_instance_id, cloud_connection_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudCloudConnectionsApi->pcloud_cloudconnections_delete: #{e}"
end
```

#### Using the pcloud_cloudconnections_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_cloudconnections_delete_with_http_info(cloud_instance_id, cloud_connection_id)

```ruby
begin
  # Delete a Cloud Connection
  data, status_code, headers = api_instance.pcloud_cloudconnections_delete_with_http_info(cloud_instance_id, cloud_connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudCloudConnectionsApi->pcloud_cloudconnections_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **cloud_connection_id** | **String** | Cloud Connection ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_cloudconnections_get

> <CloudConnection> pcloud_cloudconnections_get(cloud_instance_id, cloud_connection_id)

Get a cloud connection's state/information

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudCloudConnectionsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
cloud_connection_id = 'cloud_connection_id_example' # String | Cloud Connection ID

begin
  # Get a cloud connection's state/information
  result = api_instance.pcloud_cloudconnections_get(cloud_instance_id, cloud_connection_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudCloudConnectionsApi->pcloud_cloudconnections_get: #{e}"
end
```

#### Using the pcloud_cloudconnections_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CloudConnection>, Integer, Hash)> pcloud_cloudconnections_get_with_http_info(cloud_instance_id, cloud_connection_id)

```ruby
begin
  # Get a cloud connection's state/information
  data, status_code, headers = api_instance.pcloud_cloudconnections_get_with_http_info(cloud_instance_id, cloud_connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CloudConnection>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudCloudConnectionsApi->pcloud_cloudconnections_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **cloud_connection_id** | **String** | Cloud Connection ID |  |

### Return type

[**CloudConnection**](CloudConnection.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_cloudconnections_getall

> <CloudConnections> pcloud_cloudconnections_getall(cloud_instance_id)

Get all cloud connections in this cloud instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudCloudConnectionsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # Get all cloud connections in this cloud instance
  result = api_instance.pcloud_cloudconnections_getall(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudCloudConnectionsApi->pcloud_cloudconnections_getall: #{e}"
end
```

#### Using the pcloud_cloudconnections_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CloudConnections>, Integer, Hash)> pcloud_cloudconnections_getall_with_http_info(cloud_instance_id)

```ruby
begin
  # Get all cloud connections in this cloud instance
  data, status_code, headers = api_instance.pcloud_cloudconnections_getall_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CloudConnections>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudCloudConnectionsApi->pcloud_cloudconnections_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**CloudConnections**](CloudConnections.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_cloudconnections_networks_delete

> Object pcloud_cloudconnections_networks_delete(cloud_instance_id, cloud_connection_id, network_id)

Detach a network from a Cloud Connection

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudCloudConnectionsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
cloud_connection_id = 'cloud_connection_id_example' # String | Cloud Connection ID
network_id = 'network_id_example' # String | Network ID

begin
  # Detach a network from a Cloud Connection
  result = api_instance.pcloud_cloudconnections_networks_delete(cloud_instance_id, cloud_connection_id, network_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudCloudConnectionsApi->pcloud_cloudconnections_networks_delete: #{e}"
end
```

#### Using the pcloud_cloudconnections_networks_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_cloudconnections_networks_delete_with_http_info(cloud_instance_id, cloud_connection_id, network_id)

```ruby
begin
  # Detach a network from a Cloud Connection
  data, status_code, headers = api_instance.pcloud_cloudconnections_networks_delete_with_http_info(cloud_instance_id, cloud_connection_id, network_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudCloudConnectionsApi->pcloud_cloudconnections_networks_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **cloud_connection_id** | **String** | Cloud Connection ID |  |
| **network_id** | **String** | Network ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_cloudconnections_networks_put

> Object pcloud_cloudconnections_networks_put(cloud_instance_id, cloud_connection_id, network_id)

Attach a network to the cloud connection

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudCloudConnectionsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
cloud_connection_id = 'cloud_connection_id_example' # String | Cloud Connection ID
network_id = 'network_id_example' # String | Network ID

begin
  # Attach a network to the cloud connection
  result = api_instance.pcloud_cloudconnections_networks_put(cloud_instance_id, cloud_connection_id, network_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudCloudConnectionsApi->pcloud_cloudconnections_networks_put: #{e}"
end
```

#### Using the pcloud_cloudconnections_networks_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_cloudconnections_networks_put_with_http_info(cloud_instance_id, cloud_connection_id, network_id)

```ruby
begin
  # Attach a network to the cloud connection
  data, status_code, headers = api_instance.pcloud_cloudconnections_networks_put_with_http_info(cloud_instance_id, cloud_connection_id, network_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudCloudConnectionsApi->pcloud_cloudconnections_networks_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **cloud_connection_id** | **String** | Cloud Connection ID |  |
| **network_id** | **String** | Network ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_cloudconnections_post

> <CloudConnection> pcloud_cloudconnections_post(cloud_instance_id, body)

Create a new cloud connection

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudCloudConnectionsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::CloudConnectionCreate.new({name: 'name_example', speed: 50}) # CloudConnectionCreate | Parameters for the creation of a new cloud connection

begin
  # Create a new cloud connection
  result = api_instance.pcloud_cloudconnections_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudCloudConnectionsApi->pcloud_cloudconnections_post: #{e}"
end
```

#### Using the pcloud_cloudconnections_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CloudConnection>, Integer, Hash)> pcloud_cloudconnections_post_with_http_info(cloud_instance_id, body)

```ruby
begin
  # Create a new cloud connection
  data, status_code, headers = api_instance.pcloud_cloudconnections_post_with_http_info(cloud_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CloudConnection>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudCloudConnectionsApi->pcloud_cloudconnections_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **body** | [**CloudConnectionCreate**](CloudConnectionCreate.md) | Parameters for the creation of a new cloud connection |  |

### Return type

[**CloudConnection**](CloudConnection.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_cloudconnections_put

> <CloudConnection> pcloud_cloudconnections_put(cloud_instance_id, cloud_connection_id, body)

Update a Cloud Connection

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudCloudConnectionsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
cloud_connection_id = 'cloud_connection_id_example' # String | Cloud Connection ID
body = IbmCloudPower::CloudConnectionUpdate.new # CloudConnectionUpdate | Parameters to update a Cloud Connection

begin
  # Update a Cloud Connection
  result = api_instance.pcloud_cloudconnections_put(cloud_instance_id, cloud_connection_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudCloudConnectionsApi->pcloud_cloudconnections_put: #{e}"
end
```

#### Using the pcloud_cloudconnections_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CloudConnection>, Integer, Hash)> pcloud_cloudconnections_put_with_http_info(cloud_instance_id, cloud_connection_id, body)

```ruby
begin
  # Update a Cloud Connection
  data, status_code, headers = api_instance.pcloud_cloudconnections_put_with_http_info(cloud_instance_id, cloud_connection_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CloudConnection>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudCloudConnectionsApi->pcloud_cloudconnections_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **cloud_connection_id** | **String** | Cloud Connection ID |  |
| **body** | [**CloudConnectionUpdate**](CloudConnectionUpdate.md) | Parameters to update a Cloud Connection |  |

### Return type

[**CloudConnection**](CloudConnection.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_cloudconnections_virtualprivateclouds_getall

> <CloudConnectionVirtualPrivateClouds> pcloud_cloudconnections_virtualprivateclouds_getall(cloud_instance_id)

Get all virtual private cloud connections in this cloud instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudCloudConnectionsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # Get all virtual private cloud connections in this cloud instance
  result = api_instance.pcloud_cloudconnections_virtualprivateclouds_getall(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudCloudConnectionsApi->pcloud_cloudconnections_virtualprivateclouds_getall: #{e}"
end
```

#### Using the pcloud_cloudconnections_virtualprivateclouds_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CloudConnectionVirtualPrivateClouds>, Integer, Hash)> pcloud_cloudconnections_virtualprivateclouds_getall_with_http_info(cloud_instance_id)

```ruby
begin
  # Get all virtual private cloud connections in this cloud instance
  data, status_code, headers = api_instance.pcloud_cloudconnections_virtualprivateclouds_getall_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CloudConnectionVirtualPrivateClouds>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudCloudConnectionsApi->pcloud_cloudconnections_virtualprivateclouds_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**CloudConnectionVirtualPrivateClouds**](CloudConnectionVirtualPrivateClouds.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

