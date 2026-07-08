# IbmCloudPower::NetworkPeersApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_network_peers_getall**](NetworkPeersApi.md#v1_network_peers_getall) | **GET** /v1/network-peers | Get the list of Network Peers |
| [**v1_network_peers_id_delete**](NetworkPeersApi.md#v1_network_peers_id_delete) | **DELETE** /v1/network-peers/{network_peer_id} | Delete a Network Peer |
| [**v1_network_peers_id_get**](NetworkPeersApi.md#v1_network_peers_id_get) | **GET** /v1/network-peers/{network_peer_id} | Get the details of a Network Peer |
| [**v1_network_peers_id_put**](NetworkPeersApi.md#v1_network_peers_id_put) | **PUT** /v1/network-peers/{network_peer_id} | Update a Network Peer |
| [**v1_network_peers_interfaces_getall**](NetworkPeersApi.md#v1_network_peers_interfaces_getall) | **GET** /v1/network-peers/interfaces | Get the list of Interfaces for Network Peer |
| [**v1_network_peers_post**](NetworkPeersApi.md#v1_network_peers_post) | **POST** /v1/network-peers | Create a new Network Peer |
| [**v1_network_peers_route_filter_id_delete**](NetworkPeersApi.md#v1_network_peers_route_filter_id_delete) | **DELETE** /v1/network-peers/{network_peer_id}/route-filters/{route_filter_id} | Delete a Route Filter |
| [**v1_network_peers_route_filter_id_get**](NetworkPeersApi.md#v1_network_peers_route_filter_id_get) | **GET** /v1/network-peers/{network_peer_id}/route-filters/{route_filter_id} | Get the details of a Route Filter |
| [**v1_network_peers_route_filter_post**](NetworkPeersApi.md#v1_network_peers_route_filter_post) | **POST** /v1/network-peers/{network_peer_id}/route-filters | Create a new Route Filter |


## v1_network_peers_getall

> <NetworkPeers> v1_network_peers_getall

Get the list of Network Peers

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkPeersApi.new

begin
  # Get the list of Network Peers
  result = api_instance.v1_network_peers_getall
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkPeersApi->v1_network_peers_getall: #{e}"
end
```

#### Using the v1_network_peers_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkPeers>, Integer, Hash)> v1_network_peers_getall_with_http_info

```ruby
begin
  # Get the list of Network Peers
  data, status_code, headers = api_instance.v1_network_peers_getall_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkPeers>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkPeersApi->v1_network_peers_getall_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**NetworkPeers**](NetworkPeers.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_network_peers_id_delete

> Object v1_network_peers_id_delete(network_peer_id)

Delete a Network Peer

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkPeersApi.new
network_peer_id = 'network_peer_id_example' # String | network peer ID

begin
  # Delete a Network Peer
  result = api_instance.v1_network_peers_id_delete(network_peer_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkPeersApi->v1_network_peers_id_delete: #{e}"
end
```

#### Using the v1_network_peers_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_network_peers_id_delete_with_http_info(network_peer_id)

```ruby
begin
  # Delete a Network Peer
  data, status_code, headers = api_instance.v1_network_peers_id_delete_with_http_info(network_peer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkPeersApi->v1_network_peers_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_peer_id** | **String** | network peer ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_network_peers_id_get

> <NetworkPeer> v1_network_peers_id_get(network_peer_id)

Get the details of a Network Peer

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkPeersApi.new
network_peer_id = 'network_peer_id_example' # String | network peer ID

begin
  # Get the details of a Network Peer
  result = api_instance.v1_network_peers_id_get(network_peer_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkPeersApi->v1_network_peers_id_get: #{e}"
end
```

#### Using the v1_network_peers_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkPeer>, Integer, Hash)> v1_network_peers_id_get_with_http_info(network_peer_id)

```ruby
begin
  # Get the details of a Network Peer
  data, status_code, headers = api_instance.v1_network_peers_id_get_with_http_info(network_peer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkPeer>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkPeersApi->v1_network_peers_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_peer_id** | **String** | network peer ID |  |

### Return type

[**NetworkPeer**](NetworkPeer.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_network_peers_id_put

> <NetworkPeer> v1_network_peers_id_put(network_peer_id, body)

Update a Network Peer

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkPeersApi.new
network_peer_id = 'network_peer_id_example' # String | network peer ID
body = IbmCloudPower::NetworkPeerUpdate.new # NetworkPeerUpdate | network peer update parameters

begin
  # Update a Network Peer
  result = api_instance.v1_network_peers_id_put(network_peer_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkPeersApi->v1_network_peers_id_put: #{e}"
end
```

#### Using the v1_network_peers_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkPeer>, Integer, Hash)> v1_network_peers_id_put_with_http_info(network_peer_id, body)

```ruby
begin
  # Update a Network Peer
  data, status_code, headers = api_instance.v1_network_peers_id_put_with_http_info(network_peer_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkPeer>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkPeersApi->v1_network_peers_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_peer_id** | **String** | network peer ID |  |
| **body** | [**NetworkPeerUpdate**](NetworkPeerUpdate.md) | network peer update parameters |  |

### Return type

[**NetworkPeer**](NetworkPeer.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_network_peers_interfaces_getall

> <Array<PeerInterface>> v1_network_peers_interfaces_getall

Get the list of Interfaces for Network Peer

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkPeersApi.new

begin
  # Get the list of Interfaces for Network Peer
  result = api_instance.v1_network_peers_interfaces_getall
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkPeersApi->v1_network_peers_interfaces_getall: #{e}"
end
```

#### Using the v1_network_peers_interfaces_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PeerInterface>>, Integer, Hash)> v1_network_peers_interfaces_getall_with_http_info

```ruby
begin
  # Get the list of Interfaces for Network Peer
  data, status_code, headers = api_instance.v1_network_peers_interfaces_getall_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PeerInterface>>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkPeersApi->v1_network_peers_interfaces_getall_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;PeerInterface&gt;**](PeerInterface.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_network_peers_post

> <NetworkPeer> v1_network_peers_post(body)

Create a new Network Peer

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkPeersApi.new
body = IbmCloudPower::NetworkPeerCreate.new({customer_asn: 64512, customer_cidr: '192.168.91.2/30', ibm_asn: 64512, ibm_cidr: '192.168.91.1/30', name: 'newPeerNetwork', peer_interface_id: '031ab7da-bca6-493f-ac55-1a2a26f19160', vlan: 2000}) # NetworkPeerCreate | network peer create parameters

begin
  # Create a new Network Peer
  result = api_instance.v1_network_peers_post(body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkPeersApi->v1_network_peers_post: #{e}"
end
```

#### Using the v1_network_peers_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkPeer>, Integer, Hash)> v1_network_peers_post_with_http_info(body)

```ruby
begin
  # Create a new Network Peer
  data, status_code, headers = api_instance.v1_network_peers_post_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkPeer>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkPeersApi->v1_network_peers_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**NetworkPeerCreate**](NetworkPeerCreate.md) | network peer create parameters |  |

### Return type

[**NetworkPeer**](NetworkPeer.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_network_peers_route_filter_id_delete

> Object v1_network_peers_route_filter_id_delete(network_peer_id, route_filter_id)

Delete a Route Filter

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkPeersApi.new
network_peer_id = 'network_peer_id_example' # String | network peer ID
route_filter_id = 'route_filter_id_example' # String | route filter ID

begin
  # Delete a Route Filter
  result = api_instance.v1_network_peers_route_filter_id_delete(network_peer_id, route_filter_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkPeersApi->v1_network_peers_route_filter_id_delete: #{e}"
end
```

#### Using the v1_network_peers_route_filter_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_network_peers_route_filter_id_delete_with_http_info(network_peer_id, route_filter_id)

```ruby
begin
  # Delete a Route Filter
  data, status_code, headers = api_instance.v1_network_peers_route_filter_id_delete_with_http_info(network_peer_id, route_filter_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkPeersApi->v1_network_peers_route_filter_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_peer_id** | **String** | network peer ID |  |
| **route_filter_id** | **String** | route filter ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_network_peers_route_filter_id_get

> <RouteFilter> v1_network_peers_route_filter_id_get(network_peer_id, route_filter_id)

Get the details of a Route Filter

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkPeersApi.new
network_peer_id = 'network_peer_id_example' # String | network peer ID
route_filter_id = 'route_filter_id_example' # String | route filter ID

begin
  # Get the details of a Route Filter
  result = api_instance.v1_network_peers_route_filter_id_get(network_peer_id, route_filter_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkPeersApi->v1_network_peers_route_filter_id_get: #{e}"
end
```

#### Using the v1_network_peers_route_filter_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RouteFilter>, Integer, Hash)> v1_network_peers_route_filter_id_get_with_http_info(network_peer_id, route_filter_id)

```ruby
begin
  # Get the details of a Route Filter
  data, status_code, headers = api_instance.v1_network_peers_route_filter_id_get_with_http_info(network_peer_id, route_filter_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RouteFilter>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkPeersApi->v1_network_peers_route_filter_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_peer_id** | **String** | network peer ID |  |
| **route_filter_id** | **String** | route filter ID |  |

### Return type

[**RouteFilter**](RouteFilter.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_network_peers_route_filter_post

> <RouteFilter> v1_network_peers_route_filter_post(network_peer_id, body)

Create a new Route Filter

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkPeersApi.new
network_peer_id = 'network_peer_id_example' # String | network peer ID
body = IbmCloudPower::RouteFilterCreate.new({direction: 'import', index: 10, prefix: '192.168.91.0/24'}) # RouteFilterCreate | route filter create parameters.

begin
  # Create a new Route Filter
  result = api_instance.v1_network_peers_route_filter_post(network_peer_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkPeersApi->v1_network_peers_route_filter_post: #{e}"
end
```

#### Using the v1_network_peers_route_filter_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RouteFilter>, Integer, Hash)> v1_network_peers_route_filter_post_with_http_info(network_peer_id, body)

```ruby
begin
  # Create a new Route Filter
  data, status_code, headers = api_instance.v1_network_peers_route_filter_post_with_http_info(network_peer_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RouteFilter>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkPeersApi->v1_network_peers_route_filter_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_peer_id** | **String** | network peer ID |  |
| **body** | [**RouteFilterCreate**](RouteFilterCreate.md) | route filter create parameters. |  |

### Return type

[**RouteFilter**](RouteFilter.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

