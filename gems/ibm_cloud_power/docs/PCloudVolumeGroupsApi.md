# IbmCloudPower::PCloudVolumeGroupsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_volumegroups_action_post**](PCloudVolumeGroupsApi.md#pcloud_volumegroups_action_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id}/action | Perform an action (start stop reset ) on a volume group |
| [**pcloud_volumegroups_delete**](PCloudVolumeGroupsApi.md#pcloud_volumegroups_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id} | Delete a cloud instance volume group |
| [**pcloud_volumegroups_get**](PCloudVolumeGroupsApi.md#pcloud_volumegroups_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id} | Get volume Group |
| [**pcloud_volumegroups_get_details**](PCloudVolumeGroupsApi.md#pcloud_volumegroups_get_details) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id}/details | Get volume Group details |
| [**pcloud_volumegroups_getall**](PCloudVolumeGroupsApi.md#pcloud_volumegroups_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups | Get all volume groups |
| [**pcloud_volumegroups_getall_details**](PCloudVolumeGroupsApi.md#pcloud_volumegroups_getall_details) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/details | Get all volume groups with details |
| [**pcloud_volumegroups_post**](PCloudVolumeGroupsApi.md#pcloud_volumegroups_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups | Create a new volume group |
| [**pcloud_volumegroups_put**](PCloudVolumeGroupsApi.md#pcloud_volumegroups_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id} | updates the volume group |
| [**pcloud_volumegroups_remote_copy_relationships_get**](PCloudVolumeGroupsApi.md#pcloud_volumegroups_remote_copy_relationships_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id}/remote-copy-relationships | Get remote copy relationships of the volume belonging to volume group |
| [**pcloud_volumegroups_storage_details_get**](PCloudVolumeGroupsApi.md#pcloud_volumegroups_storage_details_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id}/storage-details | Get storage details of volume group |


## pcloud_volumegroups_action_post

> Object pcloud_volumegroups_action_post(cloud_instance_id, volume_group_id, body)

Perform an action (start stop reset ) on a volume group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumeGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
volume_group_id = 'volume_group_id_example' # String | The ID of the volume group
body = { key: 3.56} # Hash<String, Object> | Parameters for the desire action.

begin
  # Perform an action (start stop reset ) on a volume group
  result = api_instance.pcloud_volumegroups_action_post(cloud_instance_id, volume_group_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeGroupsApi->pcloud_volumegroups_action_post: #{e}"
end
```

#### Using the pcloud_volumegroups_action_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_volumegroups_action_post_with_http_info(cloud_instance_id, volume_group_id, body)

```ruby
begin
  # Perform an action (start stop reset ) on a volume group
  data, status_code, headers = api_instance.pcloud_volumegroups_action_post_with_http_info(cloud_instance_id, volume_group_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeGroupsApi->pcloud_volumegroups_action_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **volume_group_id** | **String** | The ID of the volume group |  |
| **body** | [**Hash&lt;String, Object&gt;**](Object.md) | Parameters for the desire action. |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_volumegroups_delete

> Object pcloud_volumegroups_delete(cloud_instance_id, volume_group_id)

Delete a cloud instance volume group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumeGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
volume_group_id = 'volume_group_id_example' # String | The ID of the volume group

begin
  # Delete a cloud instance volume group
  result = api_instance.pcloud_volumegroups_delete(cloud_instance_id, volume_group_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeGroupsApi->pcloud_volumegroups_delete: #{e}"
end
```

#### Using the pcloud_volumegroups_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_volumegroups_delete_with_http_info(cloud_instance_id, volume_group_id)

```ruby
begin
  # Delete a cloud instance volume group
  data, status_code, headers = api_instance.pcloud_volumegroups_delete_with_http_info(cloud_instance_id, volume_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeGroupsApi->pcloud_volumegroups_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **volume_group_id** | **String** | The ID of the volume group |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## pcloud_volumegroups_get

> <VolumeGroup> pcloud_volumegroups_get(cloud_instance_id, volume_group_id)

Get volume Group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumeGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
volume_group_id = 'volume_group_id_example' # String | The ID of the volume group

begin
  # Get volume Group
  result = api_instance.pcloud_volumegroups_get(cloud_instance_id, volume_group_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeGroupsApi->pcloud_volumegroups_get: #{e}"
end
```

#### Using the pcloud_volumegroups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VolumeGroup>, Integer, Hash)> pcloud_volumegroups_get_with_http_info(cloud_instance_id, volume_group_id)

```ruby
begin
  # Get volume Group
  data, status_code, headers = api_instance.pcloud_volumegroups_get_with_http_info(cloud_instance_id, volume_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VolumeGroup>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeGroupsApi->pcloud_volumegroups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **volume_group_id** | **String** | The ID of the volume group |  |

### Return type

[**VolumeGroup**](VolumeGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_volumegroups_get_details

> <VolumeGroupDetails> pcloud_volumegroups_get_details(cloud_instance_id, volume_group_id)

Get volume Group details

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumeGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
volume_group_id = 'volume_group_id_example' # String | The ID of the volume group

begin
  # Get volume Group details
  result = api_instance.pcloud_volumegroups_get_details(cloud_instance_id, volume_group_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeGroupsApi->pcloud_volumegroups_get_details: #{e}"
end
```

#### Using the pcloud_volumegroups_get_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VolumeGroupDetails>, Integer, Hash)> pcloud_volumegroups_get_details_with_http_info(cloud_instance_id, volume_group_id)

```ruby
begin
  # Get volume Group details
  data, status_code, headers = api_instance.pcloud_volumegroups_get_details_with_http_info(cloud_instance_id, volume_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VolumeGroupDetails>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeGroupsApi->pcloud_volumegroups_get_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **volume_group_id** | **String** | The ID of the volume group |  |

### Return type

[**VolumeGroupDetails**](VolumeGroupDetails.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_volumegroups_getall

> <VolumeGroups> pcloud_volumegroups_getall(cloud_instance_id)

Get all volume groups

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumeGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # Get all volume groups
  result = api_instance.pcloud_volumegroups_getall(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeGroupsApi->pcloud_volumegroups_getall: #{e}"
end
```

#### Using the pcloud_volumegroups_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VolumeGroups>, Integer, Hash)> pcloud_volumegroups_getall_with_http_info(cloud_instance_id)

```ruby
begin
  # Get all volume groups
  data, status_code, headers = api_instance.pcloud_volumegroups_getall_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VolumeGroups>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeGroupsApi->pcloud_volumegroups_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**VolumeGroups**](VolumeGroups.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_volumegroups_getall_details

> <VolumeGroupsDetails> pcloud_volumegroups_getall_details(cloud_instance_id)

Get all volume groups with details

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumeGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # Get all volume groups with details
  result = api_instance.pcloud_volumegroups_getall_details(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeGroupsApi->pcloud_volumegroups_getall_details: #{e}"
end
```

#### Using the pcloud_volumegroups_getall_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VolumeGroupsDetails>, Integer, Hash)> pcloud_volumegroups_getall_details_with_http_info(cloud_instance_id)

```ruby
begin
  # Get all volume groups with details
  data, status_code, headers = api_instance.pcloud_volumegroups_getall_details_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VolumeGroupsDetails>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeGroupsApi->pcloud_volumegroups_getall_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**VolumeGroupsDetails**](VolumeGroupsDetails.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_volumegroups_post

> <VolumeGroupCreateResponse> pcloud_volumegroups_post(cloud_instance_id, body)

Create a new volume group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumeGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::VolumeGroupCreate.new({volume_ids: ['volume_ids_example']}) # VolumeGroupCreate | Parameters for the creation of a new volume group

begin
  # Create a new volume group
  result = api_instance.pcloud_volumegroups_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeGroupsApi->pcloud_volumegroups_post: #{e}"
end
```

#### Using the pcloud_volumegroups_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VolumeGroupCreateResponse>, Integer, Hash)> pcloud_volumegroups_post_with_http_info(cloud_instance_id, body)

```ruby
begin
  # Create a new volume group
  data, status_code, headers = api_instance.pcloud_volumegroups_post_with_http_info(cloud_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VolumeGroupCreateResponse>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeGroupsApi->pcloud_volumegroups_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **body** | [**VolumeGroupCreate**](VolumeGroupCreate.md) | Parameters for the creation of a new volume group |  |

### Return type

[**VolumeGroupCreateResponse**](VolumeGroupCreateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_volumegroups_put

> Object pcloud_volumegroups_put(cloud_instance_id, volume_group_id, body)

updates the volume group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumeGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
volume_group_id = 'volume_group_id_example' # String | The ID of the volume group
body = IbmCloudPower::VolumeGroupUpdate.new # VolumeGroupUpdate | Parameters for updating a volume-group

begin
  # updates the volume group
  result = api_instance.pcloud_volumegroups_put(cloud_instance_id, volume_group_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeGroupsApi->pcloud_volumegroups_put: #{e}"
end
```

#### Using the pcloud_volumegroups_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_volumegroups_put_with_http_info(cloud_instance_id, volume_group_id, body)

```ruby
begin
  # updates the volume group
  data, status_code, headers = api_instance.pcloud_volumegroups_put_with_http_info(cloud_instance_id, volume_group_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeGroupsApi->pcloud_volumegroups_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **volume_group_id** | **String** | The ID of the volume group |  |
| **body** | [**VolumeGroupUpdate**](VolumeGroupUpdate.md) | Parameters for updating a volume-group |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_volumegroups_remote_copy_relationships_get

> <VolumeGroupRemoteCopyRelationships> pcloud_volumegroups_remote_copy_relationships_get(cloud_instance_id, volume_group_id)

Get remote copy relationships of the volume belonging to volume group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumeGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
volume_group_id = 'volume_group_id_example' # String | The ID of the volume group

begin
  # Get remote copy relationships of the volume belonging to volume group
  result = api_instance.pcloud_volumegroups_remote_copy_relationships_get(cloud_instance_id, volume_group_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeGroupsApi->pcloud_volumegroups_remote_copy_relationships_get: #{e}"
end
```

#### Using the pcloud_volumegroups_remote_copy_relationships_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VolumeGroupRemoteCopyRelationships>, Integer, Hash)> pcloud_volumegroups_remote_copy_relationships_get_with_http_info(cloud_instance_id, volume_group_id)

```ruby
begin
  # Get remote copy relationships of the volume belonging to volume group
  data, status_code, headers = api_instance.pcloud_volumegroups_remote_copy_relationships_get_with_http_info(cloud_instance_id, volume_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VolumeGroupRemoteCopyRelationships>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeGroupsApi->pcloud_volumegroups_remote_copy_relationships_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **volume_group_id** | **String** | The ID of the volume group |  |

### Return type

[**VolumeGroupRemoteCopyRelationships**](VolumeGroupRemoteCopyRelationships.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_volumegroups_storage_details_get

> <VolumeGroupStorageDetails> pcloud_volumegroups_storage_details_get(cloud_instance_id, volume_group_id)

Get storage details of volume group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumeGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
volume_group_id = 'volume_group_id_example' # String | The ID of the volume group

begin
  # Get storage details of volume group
  result = api_instance.pcloud_volumegroups_storage_details_get(cloud_instance_id, volume_group_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeGroupsApi->pcloud_volumegroups_storage_details_get: #{e}"
end
```

#### Using the pcloud_volumegroups_storage_details_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VolumeGroupStorageDetails>, Integer, Hash)> pcloud_volumegroups_storage_details_get_with_http_info(cloud_instance_id, volume_group_id)

```ruby
begin
  # Get storage details of volume group
  data, status_code, headers = api_instance.pcloud_volumegroups_storage_details_get_with_http_info(cloud_instance_id, volume_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VolumeGroupStorageDetails>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeGroupsApi->pcloud_volumegroups_storage_details_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **volume_group_id** | **String** | The ID of the volume group |  |

### Return type

[**VolumeGroupStorageDetails**](VolumeGroupStorageDetails.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

