# IbmCloudPower::PCloudSnapshotsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_cloudinstances_snapshots_delete**](PCloudSnapshotsApi.md#pcloud_cloudinstances_snapshots_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/snapshots/{snapshot_id} | Delete a PVM instance snapshot of a cloud instance |
| [**pcloud_cloudinstances_snapshots_get**](PCloudSnapshotsApi.md#pcloud_cloudinstances_snapshots_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/snapshots/{snapshot_id} | Get the detail of a snapshot |
| [**pcloud_cloudinstances_snapshots_getall**](PCloudSnapshotsApi.md#pcloud_cloudinstances_snapshots_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/snapshots | List all PVM instance snapshots for this cloud instance |
| [**pcloud_cloudinstances_snapshots_put**](PCloudSnapshotsApi.md#pcloud_cloudinstances_snapshots_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/snapshots/{snapshot_id} | Update a PVM instance snapshot |


## pcloud_cloudinstances_snapshots_delete

> Object pcloud_cloudinstances_snapshots_delete(cloud_instance_id, snapshot_id)

Delete a PVM instance snapshot of a cloud instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSnapshotsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
snapshot_id = 'snapshot_id_example' # String | PVM Instance snapshot id

begin
  # Delete a PVM instance snapshot of a cloud instance
  result = api_instance.pcloud_cloudinstances_snapshots_delete(cloud_instance_id, snapshot_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSnapshotsApi->pcloud_cloudinstances_snapshots_delete: #{e}"
end
```

#### Using the pcloud_cloudinstances_snapshots_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_cloudinstances_snapshots_delete_with_http_info(cloud_instance_id, snapshot_id)

```ruby
begin
  # Delete a PVM instance snapshot of a cloud instance
  data, status_code, headers = api_instance.pcloud_cloudinstances_snapshots_delete_with_http_info(cloud_instance_id, snapshot_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSnapshotsApi->pcloud_cloudinstances_snapshots_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **snapshot_id** | **String** | PVM Instance snapshot id |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## pcloud_cloudinstances_snapshots_get

> <Snapshot> pcloud_cloudinstances_snapshots_get(cloud_instance_id, snapshot_id)

Get the detail of a snapshot

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSnapshotsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
snapshot_id = 'snapshot_id_example' # String | PVM Instance snapshot id

begin
  # Get the detail of a snapshot
  result = api_instance.pcloud_cloudinstances_snapshots_get(cloud_instance_id, snapshot_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSnapshotsApi->pcloud_cloudinstances_snapshots_get: #{e}"
end
```

#### Using the pcloud_cloudinstances_snapshots_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Snapshot>, Integer, Hash)> pcloud_cloudinstances_snapshots_get_with_http_info(cloud_instance_id, snapshot_id)

```ruby
begin
  # Get the detail of a snapshot
  data, status_code, headers = api_instance.pcloud_cloudinstances_snapshots_get_with_http_info(cloud_instance_id, snapshot_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Snapshot>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSnapshotsApi->pcloud_cloudinstances_snapshots_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **snapshot_id** | **String** | PVM Instance snapshot id |  |

### Return type

[**Snapshot**](Snapshot.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_cloudinstances_snapshots_getall

> <Snapshots> pcloud_cloudinstances_snapshots_getall(cloud_instance_id)

List all PVM instance snapshots for this cloud instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSnapshotsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # List all PVM instance snapshots for this cloud instance
  result = api_instance.pcloud_cloudinstances_snapshots_getall(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSnapshotsApi->pcloud_cloudinstances_snapshots_getall: #{e}"
end
```

#### Using the pcloud_cloudinstances_snapshots_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Snapshots>, Integer, Hash)> pcloud_cloudinstances_snapshots_getall_with_http_info(cloud_instance_id)

```ruby
begin
  # List all PVM instance snapshots for this cloud instance
  data, status_code, headers = api_instance.pcloud_cloudinstances_snapshots_getall_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Snapshots>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSnapshotsApi->pcloud_cloudinstances_snapshots_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**Snapshots**](Snapshots.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_cloudinstances_snapshots_put

> Object pcloud_cloudinstances_snapshots_put(cloud_instance_id, snapshot_id, body)

Update a PVM instance snapshot

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSnapshotsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
snapshot_id = 'snapshot_id_example' # String | PVM Instance snapshot id
body = IbmCloudPower::SnapshotUpdate.new # SnapshotUpdate | Parameters for the update of a PVM instance snapshot

begin
  # Update a PVM instance snapshot
  result = api_instance.pcloud_cloudinstances_snapshots_put(cloud_instance_id, snapshot_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSnapshotsApi->pcloud_cloudinstances_snapshots_put: #{e}"
end
```

#### Using the pcloud_cloudinstances_snapshots_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_cloudinstances_snapshots_put_with_http_info(cloud_instance_id, snapshot_id, body)

```ruby
begin
  # Update a PVM instance snapshot
  data, status_code, headers = api_instance.pcloud_cloudinstances_snapshots_put_with_http_info(cloud_instance_id, snapshot_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSnapshotsApi->pcloud_cloudinstances_snapshots_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **snapshot_id** | **String** | PVM Instance snapshot id |  |
| **body** | [**SnapshotUpdate**](SnapshotUpdate.md) | Parameters for the update of a PVM instance snapshot |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

