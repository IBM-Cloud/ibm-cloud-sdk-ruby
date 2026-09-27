# IbmCloudPower::PCloudSPPPlacementGroupsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_sppplacementgroups_delete**](PCloudSPPPlacementGroupsApi.md#pcloud_sppplacementgroups_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/spp-placement-groups/{spp_placement_group_id} | Delete a shared processor pool placement group |
| [**pcloud_sppplacementgroups_get**](PCloudSPPPlacementGroupsApi.md#pcloud_sppplacementgroups_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/spp-placement-groups/{spp_placement_group_id} | Get a shared processor pool placement group |
| [**pcloud_sppplacementgroups_getall**](PCloudSPPPlacementGroupsApi.md#pcloud_sppplacementgroups_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/spp-placement-groups | List all shared processor pool placement groups |
| [**pcloud_sppplacementgroups_members_delete**](PCloudSPPPlacementGroupsApi.md#pcloud_sppplacementgroups_members_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/spp-placement-groups/{spp_placement_group_id}/members/{shared_processor_pool_id} | Remove a member from a shared processor pool placement group |
| [**pcloud_sppplacementgroups_members_post**](PCloudSPPPlacementGroupsApi.md#pcloud_sppplacementgroups_members_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/spp-placement-groups/{spp_placement_group_id}/members/{shared_processor_pool_id} | Add a member to a shared processor pool placement group |
| [**pcloud_sppplacementgroups_post**](PCloudSPPPlacementGroupsApi.md#pcloud_sppplacementgroups_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/spp-placement-groups | Create a shared processor pool placement group |


## pcloud_sppplacementgroups_delete

> Object pcloud_sppplacementgroups_delete(cloud_instance_id, spp_placement_group_id)

Delete a shared processor pool placement group

Deletes a shared processor pool placement group from the specified workspace. The placement group must have no member shared processor pools before it can be deleted.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSPPPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
spp_placement_group_id = 'spp_placement_group_id_example' # String | The unique identifier or name of the shared processor pool placement group.

begin
  # Delete a shared processor pool placement group
  result = api_instance.pcloud_sppplacementgroups_delete(cloud_instance_id, spp_placement_group_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSPPPlacementGroupsApi->pcloud_sppplacementgroups_delete: #{e}"
end
```

#### Using the pcloud_sppplacementgroups_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_sppplacementgroups_delete_with_http_info(cloud_instance_id, spp_placement_group_id)

```ruby
begin
  # Delete a shared processor pool placement group
  data, status_code, headers = api_instance.pcloud_sppplacementgroups_delete_with_http_info(cloud_instance_id, spp_placement_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSPPPlacementGroupsApi->pcloud_sppplacementgroups_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **spp_placement_group_id** | **String** | The unique identifier or name of the shared processor pool placement group. |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_sppplacementgroups_get

> <SPPPlacementGroup> pcloud_sppplacementgroups_get(cloud_instance_id, spp_placement_group_id)

Get a shared processor pool placement group

Retrieves the details of a shared processor pool placement group in the specified workspace.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSPPPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
spp_placement_group_id = 'spp_placement_group_id_example' # String | The unique identifier or name of the shared processor pool placement group.

begin
  # Get a shared processor pool placement group
  result = api_instance.pcloud_sppplacementgroups_get(cloud_instance_id, spp_placement_group_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSPPPlacementGroupsApi->pcloud_sppplacementgroups_get: #{e}"
end
```

#### Using the pcloud_sppplacementgroups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SPPPlacementGroup>, Integer, Hash)> pcloud_sppplacementgroups_get_with_http_info(cloud_instance_id, spp_placement_group_id)

```ruby
begin
  # Get a shared processor pool placement group
  data, status_code, headers = api_instance.pcloud_sppplacementgroups_get_with_http_info(cloud_instance_id, spp_placement_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SPPPlacementGroup>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSPPPlacementGroupsApi->pcloud_sppplacementgroups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **spp_placement_group_id** | **String** | The unique identifier or name of the shared processor pool placement group. |  |

### Return type

[**SPPPlacementGroup**](SPPPlacementGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_sppplacementgroups_getall

> <SPPPlacementGroups> pcloud_sppplacementgroups_getall(cloud_instance_id)

List all shared processor pool placement groups

Lists all shared processor pool placement groups in the specified workspace.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSPPPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # List all shared processor pool placement groups
  result = api_instance.pcloud_sppplacementgroups_getall(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSPPPlacementGroupsApi->pcloud_sppplacementgroups_getall: #{e}"
end
```

#### Using the pcloud_sppplacementgroups_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SPPPlacementGroups>, Integer, Hash)> pcloud_sppplacementgroups_getall_with_http_info(cloud_instance_id)

```ruby
begin
  # List all shared processor pool placement groups
  data, status_code, headers = api_instance.pcloud_sppplacementgroups_getall_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SPPPlacementGroups>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSPPPlacementGroupsApi->pcloud_sppplacementgroups_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**SPPPlacementGroups**](SPPPlacementGroups.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_sppplacementgroups_members_delete

> <SPPPlacementGroup> pcloud_sppplacementgroups_members_delete(cloud_instance_id, spp_placement_group_id, shared_processor_pool_id)

Remove a member from a shared processor pool placement group

Removes a shared processor pool from the specified placement group.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSPPPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
spp_placement_group_id = 'spp_placement_group_id_example' # String | The unique identifier or name of the shared processor pool placement group.
shared_processor_pool_id = 'shared_processor_pool_id_example' # String | The unique identifier or name of the shared processor pool.

begin
  # Remove a member from a shared processor pool placement group
  result = api_instance.pcloud_sppplacementgroups_members_delete(cloud_instance_id, spp_placement_group_id, shared_processor_pool_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSPPPlacementGroupsApi->pcloud_sppplacementgroups_members_delete: #{e}"
end
```

#### Using the pcloud_sppplacementgroups_members_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SPPPlacementGroup>, Integer, Hash)> pcloud_sppplacementgroups_members_delete_with_http_info(cloud_instance_id, spp_placement_group_id, shared_processor_pool_id)

```ruby
begin
  # Remove a member from a shared processor pool placement group
  data, status_code, headers = api_instance.pcloud_sppplacementgroups_members_delete_with_http_info(cloud_instance_id, spp_placement_group_id, shared_processor_pool_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SPPPlacementGroup>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSPPPlacementGroupsApi->pcloud_sppplacementgroups_members_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **spp_placement_group_id** | **String** | The unique identifier or name of the shared processor pool placement group. |  |
| **shared_processor_pool_id** | **String** | The unique identifier or name of the shared processor pool. |  |

### Return type

[**SPPPlacementGroup**](SPPPlacementGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_sppplacementgroups_members_post

> <SPPPlacementGroup> pcloud_sppplacementgroups_members_post(cloud_instance_id, spp_placement_group_id, shared_processor_pool_id)

Add a member to a shared processor pool placement group

Adds a shared processor pool as a member of the specified placement group.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSPPPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
spp_placement_group_id = 'spp_placement_group_id_example' # String | The unique identifier or name of the shared processor pool placement group.
shared_processor_pool_id = 'shared_processor_pool_id_example' # String | The unique identifier or name of the shared processor pool.

begin
  # Add a member to a shared processor pool placement group
  result = api_instance.pcloud_sppplacementgroups_members_post(cloud_instance_id, spp_placement_group_id, shared_processor_pool_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSPPPlacementGroupsApi->pcloud_sppplacementgroups_members_post: #{e}"
end
```

#### Using the pcloud_sppplacementgroups_members_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SPPPlacementGroup>, Integer, Hash)> pcloud_sppplacementgroups_members_post_with_http_info(cloud_instance_id, spp_placement_group_id, shared_processor_pool_id)

```ruby
begin
  # Add a member to a shared processor pool placement group
  data, status_code, headers = api_instance.pcloud_sppplacementgroups_members_post_with_http_info(cloud_instance_id, spp_placement_group_id, shared_processor_pool_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SPPPlacementGroup>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSPPPlacementGroupsApi->pcloud_sppplacementgroups_members_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **spp_placement_group_id** | **String** | The unique identifier or name of the shared processor pool placement group. |  |
| **shared_processor_pool_id** | **String** | The unique identifier or name of the shared processor pool. |  |

### Return type

[**SPPPlacementGroup**](SPPPlacementGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_sppplacementgroups_post

> <SPPPlacementGroup> pcloud_sppplacementgroups_post(cloud_instance_id, body)

Create a shared processor pool placement group

Creates a new shared processor pool placement group in the specified workspace.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSPPPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::SPPPlacementGroupCreate.new({name: 'name_example', policy: 'affinity'}) # SPPPlacementGroupCreate | The shared processor pool placement group creation parameters.

begin
  # Create a shared processor pool placement group
  result = api_instance.pcloud_sppplacementgroups_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSPPPlacementGroupsApi->pcloud_sppplacementgroups_post: #{e}"
end
```

#### Using the pcloud_sppplacementgroups_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SPPPlacementGroup>, Integer, Hash)> pcloud_sppplacementgroups_post_with_http_info(cloud_instance_id, body)

```ruby
begin
  # Create a shared processor pool placement group
  data, status_code, headers = api_instance.pcloud_sppplacementgroups_post_with_http_info(cloud_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SPPPlacementGroup>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSPPPlacementGroupsApi->pcloud_sppplacementgroups_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **body** | [**SPPPlacementGroupCreate**](SPPPlacementGroupCreate.md) | The shared processor pool placement group creation parameters. |  |

### Return type

[**SPPPlacementGroup**](SPPPlacementGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

