# IbmCloudPower::PCloudNetworksApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pcloud_networks_delete**](PCloudNetworksApi.md#pcloud_networks_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id} | Delete a network
[**pcloud_networks_get**](PCloudNetworksApi.md#pcloud_networks_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id} | Get a network&#39;s current state or information
[**pcloud_networks_getall**](PCloudNetworksApi.md#pcloud_networks_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks | Get all networks in this cloud instance
[**pcloud_networks_ports_delete**](PCloudNetworksApi.md#pcloud_networks_ports_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}/ports/{port_id} | Delete a network port
[**pcloud_networks_ports_get**](PCloudNetworksApi.md#pcloud_networks_ports_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}/ports/{port_id} | Get a port&#39;s information
[**pcloud_networks_ports_getall**](PCloudNetworksApi.md#pcloud_networks_ports_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}/ports | Get all ports for this network
[**pcloud_networks_ports_post**](PCloudNetworksApi.md#pcloud_networks_ports_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}/ports | Perform port addition, deletion, and listing
[**pcloud_networks_ports_put**](PCloudNetworksApi.md#pcloud_networks_ports_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}/ports/{port_id} | Update a port&#39;s information
[**pcloud_networks_post**](PCloudNetworksApi.md#pcloud_networks_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks | Create a new network
[**pcloud_networks_put**](PCloudNetworksApi.md#pcloud_networks_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id} | Update a network



## pcloud_networks_delete

> Object pcloud_networks_delete(cloud_instance_id, network_id)

Delete a network

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudNetworksApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
network_id = 'network_id_example' # String | Network ID

begin
  #Delete a network
  result = api_instance.pcloud_networks_delete(cloud_instance_id, network_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudNetworksApi->pcloud_networks_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **network_id** | **String**| Network ID | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## pcloud_networks_get

> Network pcloud_networks_get(cloud_instance_id, network_id)

Get a network's current state or information

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudNetworksApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
network_id = 'network_id_example' # String | Network ID

begin
  #Get a network's current state or information
  result = api_instance.pcloud_networks_get(cloud_instance_id, network_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudNetworksApi->pcloud_networks_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **network_id** | **String**| Network ID | 

### Return type

[**Network**](Network.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_networks_getall

> Networks pcloud_networks_getall(cloud_instance_id, opts)

Get all networks in this cloud instance

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudNetworksApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
opts = {
  filter: 'filter_example' # String | A filter expression that filters resources listed in the response
}

begin
  #Get all networks in this cloud instance
  result = api_instance.pcloud_networks_getall(cloud_instance_id, opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudNetworksApi->pcloud_networks_getall: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **filter** | **String**| A filter expression that filters resources listed in the response | [optional] 

### Return type

[**Networks**](Networks.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_networks_ports_delete

> Object pcloud_networks_ports_delete(cloud_instance_id, network_id, port_id)

Delete a network port

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudNetworksApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
network_id = 'network_id_example' # String | Network ID
port_id = 'port_id_example' # String | Port ID

begin
  #Delete a network port
  result = api_instance.pcloud_networks_ports_delete(cloud_instance_id, network_id, port_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudNetworksApi->pcloud_networks_ports_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **network_id** | **String**| Network ID | 
 **port_id** | **String**| Port ID | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_networks_ports_get

> NetworkPort pcloud_networks_ports_get(cloud_instance_id, network_id, port_id)

Get a port's information

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudNetworksApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
network_id = 'network_id_example' # String | Network ID
port_id = 'port_id_example' # String | Port ID

begin
  #Get a port's information
  result = api_instance.pcloud_networks_ports_get(cloud_instance_id, network_id, port_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudNetworksApi->pcloud_networks_ports_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **network_id** | **String**| Network ID | 
 **port_id** | **String**| Port ID | 

### Return type

[**NetworkPort**](NetworkPort.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, applicaton/json


## pcloud_networks_ports_getall

> NetworkPorts pcloud_networks_ports_getall(cloud_instance_id, network_id)

Get all ports for this network

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudNetworksApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
network_id = 'network_id_example' # String | Network ID

begin
  #Get all ports for this network
  result = api_instance.pcloud_networks_ports_getall(cloud_instance_id, network_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudNetworksApi->pcloud_networks_ports_getall: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **network_id** | **String**| Network ID | 

### Return type

[**NetworkPorts**](NetworkPorts.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_networks_ports_post

> NetworkPort pcloud_networks_ports_post(cloud_instance_id, network_id, opts)

Perform port addition, deletion, and listing

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudNetworksApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
network_id = 'network_id_example' # String | Network ID
opts = {
  body: IbmCloudPower::NetworkPortCreate.new # NetworkPortCreate | Create a Network Port
}

begin
  #Perform port addition, deletion, and listing
  result = api_instance.pcloud_networks_ports_post(cloud_instance_id, network_id, opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudNetworksApi->pcloud_networks_ports_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **network_id** | **String**| Network ID | 
 **body** | [**NetworkPortCreate**](NetworkPortCreate.md)| Create a Network Port | [optional] 

### Return type

[**NetworkPort**](NetworkPort.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_networks_ports_put

> NetworkPort pcloud_networks_ports_put(cloud_instance_id, network_id, port_id, body)

Update a port's information

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudNetworksApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
network_id = 'network_id_example' # String | Network ID
port_id = 'port_id_example' # String | Port ID
body = IbmCloudPower::NetworkPortUpdate.new # NetworkPortUpdate | Parameters for updating a Port

begin
  #Update a port's information
  result = api_instance.pcloud_networks_ports_put(cloud_instance_id, network_id, port_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudNetworksApi->pcloud_networks_ports_put: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **network_id** | **String**| Network ID | 
 **port_id** | **String**| Port ID | 
 **body** | [**NetworkPortUpdate**](NetworkPortUpdate.md)| Parameters for updating a Port | 

### Return type

[**NetworkPort**](NetworkPort.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_networks_post

> Network pcloud_networks_post(cloud_instance_id, body)

Create a new network

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudNetworksApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::NetworkCreate.new # NetworkCreate | Parameters for the creation of a new network

begin
  #Create a new network
  result = api_instance.pcloud_networks_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudNetworksApi->pcloud_networks_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **body** | [**NetworkCreate**](NetworkCreate.md)| Parameters for the creation of a new network | 

### Return type

[**Network**](Network.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_networks_put

> Network pcloud_networks_put(cloud_instance_id, network_id, body)

Update a network

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudNetworksApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
network_id = 'network_id_example' # String | Network ID
body = IbmCloudPower::NetworkUpdate.new # NetworkUpdate | Parameters to update a Network

begin
  #Update a network
  result = api_instance.pcloud_networks_put(cloud_instance_id, network_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudNetworksApi->pcloud_networks_put: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **network_id** | **String**| Network ID | 
 **body** | [**NetworkUpdate**](NetworkUpdate.md)| Parameters to update a Network | 

### Return type

[**Network**](Network.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

