# IbmCloudPower::NetworkAddressGroupsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_network_address_groups_get**](NetworkAddressGroupsApi.md#v1_network_address_groups_get) | **GET** /v1/network-address-groups | Get the list of Network Address Groups for a workspace |
| [**v1_network_address_groups_id_delete**](NetworkAddressGroupsApi.md#v1_network_address_groups_id_delete) | **DELETE** /v1/network-address-groups/{network_address_group_id} | Delete a Network Address Group from a workspace |
| [**v1_network_address_groups_id_get**](NetworkAddressGroupsApi.md#v1_network_address_groups_id_get) | **GET** /v1/network-address-groups/{network_address_group_id} | Get the detail of a Network Address Group |
| [**v1_network_address_groups_id_put**](NetworkAddressGroupsApi.md#v1_network_address_groups_id_put) | **PUT** /v1/network-address-groups/{network_address_group_id} | Update a Network Address Group |
| [**v1_network_address_groups_members_delete**](NetworkAddressGroupsApi.md#v1_network_address_groups_members_delete) | **DELETE** /v1/network-address-groups/{network_address_group_id}/members/{network_address_group_member_id} | Delete the member from a Network Address Group |
| [**v1_network_address_groups_members_post**](NetworkAddressGroupsApi.md#v1_network_address_groups_members_post) | **POST** /v1/network-address-groups/{network_address_group_id}/members | Add a member to a Network Address Group |
| [**v1_network_address_groups_post**](NetworkAddressGroupsApi.md#v1_network_address_groups_post) | **POST** /v1/network-address-groups | Create a new Network Address Group |


## v1_network_address_groups_get

> <NetworkAddressGroups> v1_network_address_groups_get

Get the list of Network Address Groups for a workspace

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkAddressGroupsApi.new

begin
  # Get the list of Network Address Groups for a workspace
  result = api_instance.v1_network_address_groups_get
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkAddressGroupsApi->v1_network_address_groups_get: #{e}"
end
```

#### Using the v1_network_address_groups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkAddressGroups>, Integer, Hash)> v1_network_address_groups_get_with_http_info

```ruby
begin
  # Get the list of Network Address Groups for a workspace
  data, status_code, headers = api_instance.v1_network_address_groups_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkAddressGroups>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkAddressGroupsApi->v1_network_address_groups_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**NetworkAddressGroups**](NetworkAddressGroups.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_network_address_groups_id_delete

> Object v1_network_address_groups_id_delete(network_address_group_id)

Delete a Network Address Group from a workspace

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkAddressGroupsApi.new
network_address_group_id = 'network_address_group_id_example' # String | Network Address Group ID

begin
  # Delete a Network Address Group from a workspace
  result = api_instance.v1_network_address_groups_id_delete(network_address_group_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkAddressGroupsApi->v1_network_address_groups_id_delete: #{e}"
end
```

#### Using the v1_network_address_groups_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_network_address_groups_id_delete_with_http_info(network_address_group_id)

```ruby
begin
  # Delete a Network Address Group from a workspace
  data, status_code, headers = api_instance.v1_network_address_groups_id_delete_with_http_info(network_address_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkAddressGroupsApi->v1_network_address_groups_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_address_group_id** | **String** | Network Address Group ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_network_address_groups_id_get

> <NetworkAddressGroup> v1_network_address_groups_id_get(network_address_group_id)

Get the detail of a Network Address Group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkAddressGroupsApi.new
network_address_group_id = 'network_address_group_id_example' # String | Network Address Group ID

begin
  # Get the detail of a Network Address Group
  result = api_instance.v1_network_address_groups_id_get(network_address_group_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkAddressGroupsApi->v1_network_address_groups_id_get: #{e}"
end
```

#### Using the v1_network_address_groups_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkAddressGroup>, Integer, Hash)> v1_network_address_groups_id_get_with_http_info(network_address_group_id)

```ruby
begin
  # Get the detail of a Network Address Group
  data, status_code, headers = api_instance.v1_network_address_groups_id_get_with_http_info(network_address_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkAddressGroup>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkAddressGroupsApi->v1_network_address_groups_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_address_group_id** | **String** | Network Address Group ID |  |

### Return type

[**NetworkAddressGroup**](NetworkAddressGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_network_address_groups_id_put

> <NetworkAddressGroup> v1_network_address_groups_id_put(network_address_group_id, body)

Update a Network Address Group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkAddressGroupsApi.new
network_address_group_id = 'network_address_group_id_example' # String | Network Address Group ID
body = IbmCloudPower::NetworkAddressGroupUpdate.new # NetworkAddressGroupUpdate | Parameters for the update of a Network Address Group

begin
  # Update a Network Address Group
  result = api_instance.v1_network_address_groups_id_put(network_address_group_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkAddressGroupsApi->v1_network_address_groups_id_put: #{e}"
end
```

#### Using the v1_network_address_groups_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkAddressGroup>, Integer, Hash)> v1_network_address_groups_id_put_with_http_info(network_address_group_id, body)

```ruby
begin
  # Update a Network Address Group
  data, status_code, headers = api_instance.v1_network_address_groups_id_put_with_http_info(network_address_group_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkAddressGroup>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkAddressGroupsApi->v1_network_address_groups_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_address_group_id** | **String** | Network Address Group ID |  |
| **body** | [**NetworkAddressGroupUpdate**](NetworkAddressGroupUpdate.md) | Parameters for the update of a Network Address Group |  |

### Return type

[**NetworkAddressGroup**](NetworkAddressGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_network_address_groups_members_delete

> Object v1_network_address_groups_members_delete(network_address_group_id, network_address_group_member_id)

Delete the member from a Network Address Group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkAddressGroupsApi.new
network_address_group_id = 'network_address_group_id_example' # String | Network Address Group ID
network_address_group_member_id = 'network_address_group_member_id_example' # String | The Network Address Group Member ID

begin
  # Delete the member from a Network Address Group
  result = api_instance.v1_network_address_groups_members_delete(network_address_group_id, network_address_group_member_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkAddressGroupsApi->v1_network_address_groups_members_delete: #{e}"
end
```

#### Using the v1_network_address_groups_members_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_network_address_groups_members_delete_with_http_info(network_address_group_id, network_address_group_member_id)

```ruby
begin
  # Delete the member from a Network Address Group
  data, status_code, headers = api_instance.v1_network_address_groups_members_delete_with_http_info(network_address_group_id, network_address_group_member_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkAddressGroupsApi->v1_network_address_groups_members_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_address_group_id** | **String** | Network Address Group ID |  |
| **network_address_group_member_id** | **String** | The Network Address Group Member ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_network_address_groups_members_post

> <NetworkAddressGroupMember> v1_network_address_groups_members_post(network_address_group_id, body)

Add a member to a Network Address Group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkAddressGroupsApi.new
network_address_group_id = 'network_address_group_id_example' # String | Network Address Group ID
body = IbmCloudPower::NetworkAddressGroupAddMember.new({cidr: 'cidr_example'}) # NetworkAddressGroupAddMember | Parameters for adding a member to a Network Address Group

begin
  # Add a member to a Network Address Group
  result = api_instance.v1_network_address_groups_members_post(network_address_group_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkAddressGroupsApi->v1_network_address_groups_members_post: #{e}"
end
```

#### Using the v1_network_address_groups_members_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkAddressGroupMember>, Integer, Hash)> v1_network_address_groups_members_post_with_http_info(network_address_group_id, body)

```ruby
begin
  # Add a member to a Network Address Group
  data, status_code, headers = api_instance.v1_network_address_groups_members_post_with_http_info(network_address_group_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkAddressGroupMember>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkAddressGroupsApi->v1_network_address_groups_members_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_address_group_id** | **String** | Network Address Group ID |  |
| **body** | [**NetworkAddressGroupAddMember**](NetworkAddressGroupAddMember.md) | Parameters for adding a member to a Network Address Group |  |

### Return type

[**NetworkAddressGroupMember**](NetworkAddressGroupMember.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_network_address_groups_post

> <NetworkAddressGroup> v1_network_address_groups_post(body)

Create a new Network Address Group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkAddressGroupsApi.new
body = IbmCloudPower::NetworkAddressGroupCreate.new({name: 'name_example'}) # NetworkAddressGroupCreate | Parameters for the creation of a Network Address Group

begin
  # Create a new Network Address Group
  result = api_instance.v1_network_address_groups_post(body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkAddressGroupsApi->v1_network_address_groups_post: #{e}"
end
```

#### Using the v1_network_address_groups_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkAddressGroup>, Integer, Hash)> v1_network_address_groups_post_with_http_info(body)

```ruby
begin
  # Create a new Network Address Group
  data, status_code, headers = api_instance.v1_network_address_groups_post_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkAddressGroup>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkAddressGroupsApi->v1_network_address_groups_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**NetworkAddressGroupCreate**](NetworkAddressGroupCreate.md) | Parameters for the creation of a Network Address Group |  |

### Return type

[**NetworkAddressGroup**](NetworkAddressGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

