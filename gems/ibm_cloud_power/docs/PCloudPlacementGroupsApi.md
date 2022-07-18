# IbmCloudPower::PCloudPlacementGroupsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_placementgroups_delete**](PCloudPlacementGroupsApi.md#pcloud_placementgroups_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/placement-groups/{placement_group_id} | Delete server placement group |
| [**pcloud_placementgroups_get**](PCloudPlacementGroupsApi.md#pcloud_placementgroups_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/placement-groups/{placement_group_id} | Get server placement group details |
| [**pcloud_placementgroups_getall**](PCloudPlacementGroupsApi.md#pcloud_placementgroups_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/placement-groups | Get all server placement groups |
| [**pcloud_placementgroups_members_delete**](PCloudPlacementGroupsApi.md#pcloud_placementgroups_members_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/placement-groups/{placement_group_id}/members | Remove server from placement group |
| [**pcloud_placementgroups_members_post**](PCloudPlacementGroupsApi.md#pcloud_placementgroups_members_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/placement-groups/{placement_group_id}/members | Add server to placement group |
| [**pcloud_placementgroups_post**](PCloudPlacementGroupsApi.md#pcloud_placementgroups_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/placement-groups | Create a server placement group |


## pcloud_placementgroups_delete

> Object pcloud_placementgroups_delete(cloud_instance_id, placement_group_id)

Delete server placement group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
placement_group_id = 'placement_group_id_example' # String | Placement Group ID

begin
  # Delete server placement group
  result = api_instance.pcloud_placementgroups_delete(cloud_instance_id, placement_group_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPlacementGroupsApi->pcloud_placementgroups_delete: #{e}"
end
```

#### Using the pcloud_placementgroups_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_placementgroups_delete_with_http_info(cloud_instance_id, placement_group_id)

```ruby
begin
  # Delete server placement group
  data, status_code, headers = api_instance.pcloud_placementgroups_delete_with_http_info(cloud_instance_id, placement_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPlacementGroupsApi->pcloud_placementgroups_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **placement_group_id** | **String** | Placement Group ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## pcloud_placementgroups_get

> <PlacementGroup> pcloud_placementgroups_get(cloud_instance_id, placement_group_id)

Get server placement group details

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
placement_group_id = 'placement_group_id_example' # String | Placement Group ID

begin
  # Get server placement group details
  result = api_instance.pcloud_placementgroups_get(cloud_instance_id, placement_group_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPlacementGroupsApi->pcloud_placementgroups_get: #{e}"
end
```

#### Using the pcloud_placementgroups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlacementGroup>, Integer, Hash)> pcloud_placementgroups_get_with_http_info(cloud_instance_id, placement_group_id)

```ruby
begin
  # Get server placement group details
  data, status_code, headers = api_instance.pcloud_placementgroups_get_with_http_info(cloud_instance_id, placement_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlacementGroup>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPlacementGroupsApi->pcloud_placementgroups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **placement_group_id** | **String** | Placement Group ID |  |

### Return type

[**PlacementGroup**](PlacementGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_placementgroups_getall

> <PlacementGroups> pcloud_placementgroups_getall(cloud_instance_id)

Get all server placement groups

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # Get all server placement groups
  result = api_instance.pcloud_placementgroups_getall(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPlacementGroupsApi->pcloud_placementgroups_getall: #{e}"
end
```

#### Using the pcloud_placementgroups_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlacementGroups>, Integer, Hash)> pcloud_placementgroups_getall_with_http_info(cloud_instance_id)

```ruby
begin
  # Get all server placement groups
  data, status_code, headers = api_instance.pcloud_placementgroups_getall_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlacementGroups>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPlacementGroupsApi->pcloud_placementgroups_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**PlacementGroups**](PlacementGroups.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_placementgroups_members_delete

> <PlacementGroup> pcloud_placementgroups_members_delete(cloud_instance_id, placement_group_id, body)

Remove server from placement group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
placement_group_id = 'placement_group_id_example' # String | Placement Group ID
body = IbmCloudPower::PlacementGroupServer.new({id: 'id_example'}) # PlacementGroupServer | Parameters for removing a Server in a Placement Group

begin
  # Remove server from placement group
  result = api_instance.pcloud_placementgroups_members_delete(cloud_instance_id, placement_group_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPlacementGroupsApi->pcloud_placementgroups_members_delete: #{e}"
end
```

#### Using the pcloud_placementgroups_members_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlacementGroup>, Integer, Hash)> pcloud_placementgroups_members_delete_with_http_info(cloud_instance_id, placement_group_id, body)

```ruby
begin
  # Remove server from placement group
  data, status_code, headers = api_instance.pcloud_placementgroups_members_delete_with_http_info(cloud_instance_id, placement_group_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlacementGroup>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPlacementGroupsApi->pcloud_placementgroups_members_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **placement_group_id** | **String** | Placement Group ID |  |
| **body** | [**PlacementGroupServer**](PlacementGroupServer.md) | Parameters for removing a Server in a Placement Group |  |

### Return type

[**PlacementGroup**](PlacementGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_placementgroups_members_post

> <PlacementGroup> pcloud_placementgroups_members_post(cloud_instance_id, placement_group_id, body)

Add server to placement group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
placement_group_id = 'placement_group_id_example' # String | Placement Group ID
body = IbmCloudPower::PlacementGroupServer.new({id: 'id_example'}) # PlacementGroupServer | Parameters for adding a server to a Placement Group

begin
  # Add server to placement group
  result = api_instance.pcloud_placementgroups_members_post(cloud_instance_id, placement_group_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPlacementGroupsApi->pcloud_placementgroups_members_post: #{e}"
end
```

#### Using the pcloud_placementgroups_members_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlacementGroup>, Integer, Hash)> pcloud_placementgroups_members_post_with_http_info(cloud_instance_id, placement_group_id, body)

```ruby
begin
  # Add server to placement group
  data, status_code, headers = api_instance.pcloud_placementgroups_members_post_with_http_info(cloud_instance_id, placement_group_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlacementGroup>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPlacementGroupsApi->pcloud_placementgroups_members_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **placement_group_id** | **String** | Placement Group ID |  |
| **body** | [**PlacementGroupServer**](PlacementGroupServer.md) | Parameters for adding a server to a Placement Group |  |

### Return type

[**PlacementGroup**](PlacementGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_placementgroups_post

> <PlacementGroup> pcloud_placementgroups_post(cloud_instance_id, body)

Create a server placement group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::PlacementGroupCreate.new({name: 'name_example', policy: 'affinity'}) # PlacementGroupCreate | Parameters for the creating a server placement group

begin
  # Create a server placement group
  result = api_instance.pcloud_placementgroups_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPlacementGroupsApi->pcloud_placementgroups_post: #{e}"
end
```

#### Using the pcloud_placementgroups_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlacementGroup>, Integer, Hash)> pcloud_placementgroups_post_with_http_info(cloud_instance_id, body)

```ruby
begin
  # Create a server placement group
  data, status_code, headers = api_instance.pcloud_placementgroups_post_with_http_info(cloud_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlacementGroup>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPlacementGroupsApi->pcloud_placementgroups_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **body** | [**PlacementGroupCreate**](PlacementGroupCreate.md) | Parameters for the creating a server placement group |  |

### Return type

[**PlacementGroup**](PlacementGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

