# IbmCloudPower::PCloudVPNConnectionsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_vpnconnections_delete**](PCloudVPNConnectionsApi.md#pcloud_vpnconnections_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections/{vpn_connection_id} | Delete VPN Connection |
| [**pcloud_vpnconnections_get**](PCloudVPNConnectionsApi.md#pcloud_vpnconnections_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections/{vpn_connection_id} | Get VPN Connection |
| [**pcloud_vpnconnections_getall**](PCloudVPNConnectionsApi.md#pcloud_vpnconnections_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections | Get all VPN Connections |
| [**pcloud_vpnconnections_networks_delete**](PCloudVPNConnectionsApi.md#pcloud_vpnconnections_networks_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections/{vpn_connection_id}/networks | Detach network |
| [**pcloud_vpnconnections_networks_get**](PCloudVPNConnectionsApi.md#pcloud_vpnconnections_networks_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections/{vpn_connection_id}/networks | Get attached networks |
| [**pcloud_vpnconnections_networks_put**](PCloudVPNConnectionsApi.md#pcloud_vpnconnections_networks_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections/{vpn_connection_id}/networks | Attach network |
| [**pcloud_vpnconnections_peersubnets_delete**](PCloudVPNConnectionsApi.md#pcloud_vpnconnections_peersubnets_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections/{vpn_connection_id}/peer-subnets | Detach Peer Subnet |
| [**pcloud_vpnconnections_peersubnets_get**](PCloudVPNConnectionsApi.md#pcloud_vpnconnections_peersubnets_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections/{vpn_connection_id}/peer-subnets | Get Peer Subnets |
| [**pcloud_vpnconnections_peersubnets_put**](PCloudVPNConnectionsApi.md#pcloud_vpnconnections_peersubnets_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections/{vpn_connection_id}/peer-subnets | Attach Peer Subnet |
| [**pcloud_vpnconnections_post**](PCloudVPNConnectionsApi.md#pcloud_vpnconnections_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections | Create VPN Connection |
| [**pcloud_vpnconnections_put**](PCloudVPNConnectionsApi.md#pcloud_vpnconnections_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections/{vpn_connection_id} | Update VPN Connection |


## pcloud_vpnconnections_delete

> <JobReference> pcloud_vpnconnections_delete(cloud_instance_id, vpn_connection_id)

Delete VPN Connection

Delete VPN Connection (by its identifier)

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNConnectionsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
vpn_connection_id = 'vpn_connection_id_example' # String | ID of a VPN connection

begin
  # Delete VPN Connection
  result = api_instance.pcloud_vpnconnections_delete(cloud_instance_id, vpn_connection_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_delete: #{e}"
end
```

#### Using the pcloud_vpnconnections_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobReference>, Integer, Hash)> pcloud_vpnconnections_delete_with_http_info(cloud_instance_id, vpn_connection_id)

```ruby
begin
  # Delete VPN Connection
  data, status_code, headers = api_instance.pcloud_vpnconnections_delete_with_http_info(cloud_instance_id, vpn_connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobReference>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **vpn_connection_id** | **String** | ID of a VPN connection |  |

### Return type

[**JobReference**](JobReference.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_vpnconnections_get

> <VPNConnection> pcloud_vpnconnections_get(cloud_instance_id, vpn_connection_id)

Get VPN Connection

Get a VPN Connection

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNConnectionsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
vpn_connection_id = 'vpn_connection_id_example' # String | ID of a VPN connection

begin
  # Get VPN Connection
  result = api_instance.pcloud_vpnconnections_get(cloud_instance_id, vpn_connection_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_get: #{e}"
end
```

#### Using the pcloud_vpnconnections_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VPNConnection>, Integer, Hash)> pcloud_vpnconnections_get_with_http_info(cloud_instance_id, vpn_connection_id)

```ruby
begin
  # Get VPN Connection
  data, status_code, headers = api_instance.pcloud_vpnconnections_get_with_http_info(cloud_instance_id, vpn_connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VPNConnection>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **vpn_connection_id** | **String** | ID of a VPN connection |  |

### Return type

[**VPNConnection**](VPNConnection.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_vpnconnections_getall

> <VPNConnections> pcloud_vpnconnections_getall(cloud_instance_id)

Get all VPN Connections

Get all VPN Connections

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNConnectionsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # Get all VPN Connections
  result = api_instance.pcloud_vpnconnections_getall(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_getall: #{e}"
end
```

#### Using the pcloud_vpnconnections_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VPNConnections>, Integer, Hash)> pcloud_vpnconnections_getall_with_http_info(cloud_instance_id)

```ruby
begin
  # Get all VPN Connections
  data, status_code, headers = api_instance.pcloud_vpnconnections_getall_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VPNConnections>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**VPNConnections**](VPNConnections.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_vpnconnections_networks_delete

> <JobReference> pcloud_vpnconnections_networks_delete(cloud_instance_id, vpn_connection_id, body)

Detach network

Detach network from a specific VPN Connection

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNConnectionsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
vpn_connection_id = 'vpn_connection_id_example' # String | ID of a VPN connection
body = IbmCloudPower::NetworkID.new({network_id: '7f950c76-8582-11qeb-8dcd-0242ac172'}) # NetworkID | network to detach

begin
  # Detach network
  result = api_instance.pcloud_vpnconnections_networks_delete(cloud_instance_id, vpn_connection_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_networks_delete: #{e}"
end
```

#### Using the pcloud_vpnconnections_networks_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobReference>, Integer, Hash)> pcloud_vpnconnections_networks_delete_with_http_info(cloud_instance_id, vpn_connection_id, body)

```ruby
begin
  # Detach network
  data, status_code, headers = api_instance.pcloud_vpnconnections_networks_delete_with_http_info(cloud_instance_id, vpn_connection_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobReference>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_networks_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **vpn_connection_id** | **String** | ID of a VPN connection |  |
| **body** | [**NetworkID**](NetworkID.md) | network to detach |  |

### Return type

[**JobReference**](JobReference.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_vpnconnections_networks_get

> <NetworkIDs> pcloud_vpnconnections_networks_get(cloud_instance_id, vpn_connection_id)

Get attached networks

Get a list of network IDs attached to a VPN Connection

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNConnectionsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
vpn_connection_id = 'vpn_connection_id_example' # String | ID of a VPN connection

begin
  # Get attached networks
  result = api_instance.pcloud_vpnconnections_networks_get(cloud_instance_id, vpn_connection_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_networks_get: #{e}"
end
```

#### Using the pcloud_vpnconnections_networks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkIDs>, Integer, Hash)> pcloud_vpnconnections_networks_get_with_http_info(cloud_instance_id, vpn_connection_id)

```ruby
begin
  # Get attached networks
  data, status_code, headers = api_instance.pcloud_vpnconnections_networks_get_with_http_info(cloud_instance_id, vpn_connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkIDs>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_networks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **vpn_connection_id** | **String** | ID of a VPN connection |  |

### Return type

[**NetworkIDs**](NetworkIDs.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_vpnconnections_networks_put

> <JobReference> pcloud_vpnconnections_networks_put(cloud_instance_id, vpn_connection_id, body)

Attach network

Attach a network to a VPN Connection

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNConnectionsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
vpn_connection_id = 'vpn_connection_id_example' # String | ID of a VPN connection
body = IbmCloudPower::NetworkID.new({network_id: '7f950c76-8582-11qeb-8dcd-0242ac172'}) # NetworkID | network to attach

begin
  # Attach network
  result = api_instance.pcloud_vpnconnections_networks_put(cloud_instance_id, vpn_connection_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_networks_put: #{e}"
end
```

#### Using the pcloud_vpnconnections_networks_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobReference>, Integer, Hash)> pcloud_vpnconnections_networks_put_with_http_info(cloud_instance_id, vpn_connection_id, body)

```ruby
begin
  # Attach network
  data, status_code, headers = api_instance.pcloud_vpnconnections_networks_put_with_http_info(cloud_instance_id, vpn_connection_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobReference>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_networks_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **vpn_connection_id** | **String** | ID of a VPN connection |  |
| **body** | [**NetworkID**](NetworkID.md) | network to attach |  |

### Return type

[**JobReference**](JobReference.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_vpnconnections_peersubnets_delete

> <PeerSubnets> pcloud_vpnconnections_peersubnets_delete(cloud_instance_id, vpn_connection_id, body)

Detach Peer Subnet

Detach peer subnet from a VPN Connection

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNConnectionsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
vpn_connection_id = 'vpn_connection_id_example' # String | ID of a VPN connection
body = IbmCloudPower::PeerSubnetUpdate.new({cidr: '128.170.1.0/32'}) # PeerSubnetUpdate | Peer subnet to detach

begin
  # Detach Peer Subnet
  result = api_instance.pcloud_vpnconnections_peersubnets_delete(cloud_instance_id, vpn_connection_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_peersubnets_delete: #{e}"
end
```

#### Using the pcloud_vpnconnections_peersubnets_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PeerSubnets>, Integer, Hash)> pcloud_vpnconnections_peersubnets_delete_with_http_info(cloud_instance_id, vpn_connection_id, body)

```ruby
begin
  # Detach Peer Subnet
  data, status_code, headers = api_instance.pcloud_vpnconnections_peersubnets_delete_with_http_info(cloud_instance_id, vpn_connection_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PeerSubnets>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_peersubnets_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **vpn_connection_id** | **String** | ID of a VPN connection |  |
| **body** | [**PeerSubnetUpdate**](PeerSubnetUpdate.md) | Peer subnet to detach |  |

### Return type

[**PeerSubnets**](PeerSubnets.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_vpnconnections_peersubnets_get

> <PeerSubnets> pcloud_vpnconnections_peersubnets_get(cloud_instance_id, vpn_connection_id)

Get Peer Subnets

Get a list of peer subnets attached to a specific VPN Connection

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNConnectionsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
vpn_connection_id = 'vpn_connection_id_example' # String | ID of a VPN connection

begin
  # Get Peer Subnets
  result = api_instance.pcloud_vpnconnections_peersubnets_get(cloud_instance_id, vpn_connection_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_peersubnets_get: #{e}"
end
```

#### Using the pcloud_vpnconnections_peersubnets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PeerSubnets>, Integer, Hash)> pcloud_vpnconnections_peersubnets_get_with_http_info(cloud_instance_id, vpn_connection_id)

```ruby
begin
  # Get Peer Subnets
  data, status_code, headers = api_instance.pcloud_vpnconnections_peersubnets_get_with_http_info(cloud_instance_id, vpn_connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PeerSubnets>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_peersubnets_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **vpn_connection_id** | **String** | ID of a VPN connection |  |

### Return type

[**PeerSubnets**](PeerSubnets.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_vpnconnections_peersubnets_put

> <PeerSubnets> pcloud_vpnconnections_peersubnets_put(cloud_instance_id, vpn_connection_id, body)

Attach Peer Subnet

Attach peer subnet to a VPN Connection

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNConnectionsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
vpn_connection_id = 'vpn_connection_id_example' # String | ID of a VPN connection
body = IbmCloudPower::PeerSubnetUpdate.new({cidr: '128.170.1.0/32'}) # PeerSubnetUpdate | peer subnet to attach

begin
  # Attach Peer Subnet
  result = api_instance.pcloud_vpnconnections_peersubnets_put(cloud_instance_id, vpn_connection_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_peersubnets_put: #{e}"
end
```

#### Using the pcloud_vpnconnections_peersubnets_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PeerSubnets>, Integer, Hash)> pcloud_vpnconnections_peersubnets_put_with_http_info(cloud_instance_id, vpn_connection_id, body)

```ruby
begin
  # Attach Peer Subnet
  data, status_code, headers = api_instance.pcloud_vpnconnections_peersubnets_put_with_http_info(cloud_instance_id, vpn_connection_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PeerSubnets>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_peersubnets_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **vpn_connection_id** | **String** | ID of a VPN connection |  |
| **body** | [**PeerSubnetUpdate**](PeerSubnetUpdate.md) | peer subnet to attach |  |

### Return type

[**PeerSubnets**](PeerSubnets.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_vpnconnections_post

> <VPNConnectionCreateResponse> pcloud_vpnconnections_post(cloud_instance_id, body)

Create VPN Connection

Create a new VPN Connection

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNConnectionsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::VPNConnectionCreate.new({ike_policy: 'c36723ec-8593-11eb-8dcd-0242ac133853', ip_sec_policy: 'c12345d-8593-11eb-8dcd-0242ac134573', mode: 'policy', name: 'VPN-Connection-1', networks: ["7f950c76-8582-11veb-8dcd-0242ac153", "7f950c76-8582-11veb-8dcd-0242ac144", "7f950c76-8582-11veb-8dcd-0242ac199"], peer_gateway_address: '192.168.1.1', peer_subnets: ["128.170.1.0/20", "128.169.1.0/24", "128.168.1.0/27", "128.170.1.0/32"]}) # VPNConnectionCreate | VPN Connection object used for creation

begin
  # Create VPN Connection
  result = api_instance.pcloud_vpnconnections_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_post: #{e}"
end
```

#### Using the pcloud_vpnconnections_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VPNConnectionCreateResponse>, Integer, Hash)> pcloud_vpnconnections_post_with_http_info(cloud_instance_id, body)

```ruby
begin
  # Create VPN Connection
  data, status_code, headers = api_instance.pcloud_vpnconnections_post_with_http_info(cloud_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VPNConnectionCreateResponse>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **body** | [**VPNConnectionCreate**](VPNConnectionCreate.md) | VPN Connection object used for creation |  |

### Return type

[**VPNConnectionCreateResponse**](VPNConnectionCreateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_vpnconnections_put

> <VPNConnection> pcloud_vpnconnections_put(cloud_instance_id, vpn_connection_id, body)

Update VPN Connection

update a VPN Connection (by its identifier)

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPNConnectionsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
vpn_connection_id = 'vpn_connection_id_example' # String | ID of a VPN connection
body = { key: 3.56} # Hash<String, Object> | VPN Connection object used for update

begin
  # Update VPN Connection
  result = api_instance.pcloud_vpnconnections_put(cloud_instance_id, vpn_connection_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_put: #{e}"
end
```

#### Using the pcloud_vpnconnections_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VPNConnection>, Integer, Hash)> pcloud_vpnconnections_put_with_http_info(cloud_instance_id, vpn_connection_id, body)

```ruby
begin
  # Update VPN Connection
  data, status_code, headers = api_instance.pcloud_vpnconnections_put_with_http_info(cloud_instance_id, vpn_connection_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VPNConnection>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPNConnectionsApi->pcloud_vpnconnections_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **vpn_connection_id** | **String** | ID of a VPN connection |  |
| **body** | [**Hash&lt;String, Object&gt;**](Object.md) | VPN Connection object used for update |  |

### Return type

[**VPNConnection**](VPNConnection.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

