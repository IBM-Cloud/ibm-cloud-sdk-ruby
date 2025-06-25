# IbmCloudPower::PCloudSPPPlacementGroupsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_sppplacementgroups_delete**](PCloudSPPPlacementGroupsApi.md#pcloud_sppplacementgroups_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/spp-placement-groups/{spp_placement_group_id} | Delete a Shared Processor Pool Placement Group from a cloud instance |
| [**pcloud_sppplacementgroups_get**](PCloudSPPPlacementGroupsApi.md#pcloud_sppplacementgroups_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/spp-placement-groups/{spp_placement_group_id} | Get the detail of a Shared Processor Pool Placement Group for a cloud instance |
| [**pcloud_sppplacementgroups_getall**](PCloudSPPPlacementGroupsApi.md#pcloud_sppplacementgroups_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/spp-placement-groups | Get the list of Shared Processor Pool Placement Groups for a cloud instance |
| [**pcloud_sppplacementgroups_members_delete**](PCloudSPPPlacementGroupsApi.md#pcloud_sppplacementgroups_members_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/spp-placement-groups/{spp_placement_group_id}/members/{shared_processor_pool_id} | Delete Shared Processor Pool member from a Shared Processor Pool Placement Group |
| [**pcloud_sppplacementgroups_members_post**](PCloudSPPPlacementGroupsApi.md#pcloud_sppplacementgroups_members_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/spp-placement-groups/{spp_placement_group_id}/members/{shared_processor_pool_id} | Add Shared Processor Pool as a member of a Shared Processor Pool Placement Group |
| [**pcloud_sppplacementgroups_post**](PCloudSPPPlacementGroupsApi.md#pcloud_sppplacementgroups_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/spp-placement-groups | Create a new Shared Processor Pool Placement Group |


## pcloud_sppplacementgroups_delete

> Object pcloud_sppplacementgroups_delete(cloud_instance_id, spp_placement_group_id)

Delete a Shared Processor Pool Placement Group from a cloud instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSPPPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
spp_placement_group_id = 'spp_placement_group_id_example' # String | Shared Processor Pool Placement Group ID or Name

begin
  # Delete a Shared Processor Pool Placement Group from a cloud instance
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
  # Delete a Shared Processor Pool Placement Group from a cloud instance
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
| **spp_placement_group_id** | **String** | Shared Processor Pool Placement Group ID or Name |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_sppplacementgroups_get

> <SPPPlacementGroup> pcloud_sppplacementgroups_get(cloud_instance_id, spp_placement_group_id)

Get the detail of a Shared Processor Pool Placement Group for a cloud instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSPPPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
spp_placement_group_id = 'spp_placement_group_id_example' # String | Shared Processor Pool Placement Group ID or Name

begin
  # Get the detail of a Shared Processor Pool Placement Group for a cloud instance
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
  # Get the detail of a Shared Processor Pool Placement Group for a cloud instance
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
| **spp_placement_group_id** | **String** | Shared Processor Pool Placement Group ID or Name |  |

### Return type

[**SPPPlacementGroup**](SPPPlacementGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_sppplacementgroups_getall

> <SPPPlacementGroups> pcloud_sppplacementgroups_getall(cloud_instance_id)

Get the list of Shared Processor Pool Placement Groups for a cloud instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSPPPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # Get the list of Shared Processor Pool Placement Groups for a cloud instance
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
  # Get the list of Shared Processor Pool Placement Groups for a cloud instance
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

Delete Shared Processor Pool member from a Shared Processor Pool Placement Group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSPPPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
spp_placement_group_id = 'spp_placement_group_id_example' # String | Shared Processor Pool Placement Group ID or Name
shared_processor_pool_id = 'shared_processor_pool_id_example' # String | Shared Processor Pool ID or Name

begin
  # Delete Shared Processor Pool member from a Shared Processor Pool Placement Group
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
  # Delete Shared Processor Pool member from a Shared Processor Pool Placement Group
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
| **spp_placement_group_id** | **String** | Shared Processor Pool Placement Group ID or Name |  |
| **shared_processor_pool_id** | **String** | Shared Processor Pool ID or Name |  |

### Return type

[**SPPPlacementGroup**](SPPPlacementGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_sppplacementgroups_members_post

> <SPPPlacementGroup> pcloud_sppplacementgroups_members_post(cloud_instance_id, spp_placement_group_id, shared_processor_pool_id)

Add Shared Processor Pool as a member of a Shared Processor Pool Placement Group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSPPPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
spp_placement_group_id = 'spp_placement_group_id_example' # String | Shared Processor Pool Placement Group ID or Name
shared_processor_pool_id = 'shared_processor_pool_id_example' # String | Shared Processor Pool ID or Name

begin
  # Add Shared Processor Pool as a member of a Shared Processor Pool Placement Group
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
  # Add Shared Processor Pool as a member of a Shared Processor Pool Placement Group
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
| **spp_placement_group_id** | **String** | Shared Processor Pool Placement Group ID or Name |  |
| **shared_processor_pool_id** | **String** | Shared Processor Pool ID or Name |  |

### Return type

[**SPPPlacementGroup**](SPPPlacementGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_sppplacementgroups_post

> <SPPPlacementGroup> pcloud_sppplacementgroups_post(cloud_instance_id, body)

Create a new Shared Processor Pool Placement Group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSPPPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::SPPPlacementGroupCreate.new({name: 'name_example', policy: 'affinity'}) # SPPPlacementGroupCreate | Parameters for the creation of a Shared Processor Pool Placement Group

begin
  # Create a new Shared Processor Pool Placement Group
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
  # Create a new Shared Processor Pool Placement Group
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
| **body** | [**SPPPlacementGroupCreate**](SPPPlacementGroupCreate.md) | Parameters for the creation of a Shared Processor Pool Placement Group |  |

### Return type

[**SPPPlacementGroup**](SPPPlacementGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

