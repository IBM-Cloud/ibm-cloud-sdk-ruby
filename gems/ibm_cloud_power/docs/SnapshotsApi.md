# IbmCloudPower::SnapshotsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_snapshots_get**](SnapshotsApi.md#v1_snapshots_get) | **GET** /v1/snapshots/{snapshot_id} | Get the detail of a snapshot |
| [**v1_snapshots_getall**](SnapshotsApi.md#v1_snapshots_getall) | **GET** /v1/snapshots | Get a list of all the snapshots on a workspace |
| [**v1_volume_snapshots_get**](SnapshotsApi.md#v1_volume_snapshots_get) | **GET** /v1/volume-snapshots | Get the list of volume snapshots on a workspace |
| [**v1_volume_snapshots_getall**](SnapshotsApi.md#v1_volume_snapshots_getall) | **GET** /v1/volume-snapshots/{volume_snapshot_uuid} | Get the detail of a volume snapshot |


## v1_snapshots_get

> <SnapshotV1> v1_snapshots_get(snapshot_id)

Get the detail of a snapshot

This API is deprecated for /v1/snapshots. The API v1/volume-snapshots has replaced this endpoint.  View the usage of a snapshot. The snapshot may take time sync because the data is cached. 

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::SnapshotsApi.new
snapshot_id = 'snapshot_id_example' # String | PVM Instance snapshot id

begin
  # Get the detail of a snapshot
  result = api_instance.v1_snapshots_get(snapshot_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SnapshotsApi->v1_snapshots_get: #{e}"
end
```

#### Using the v1_snapshots_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SnapshotV1>, Integer, Hash)> v1_snapshots_get_with_http_info(snapshot_id)

```ruby
begin
  # Get the detail of a snapshot
  data, status_code, headers = api_instance.v1_snapshots_get_with_http_info(snapshot_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SnapshotV1>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SnapshotsApi->v1_snapshots_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **snapshot_id** | **String** | PVM Instance snapshot id |  |

### Return type

[**SnapshotV1**](SnapshotV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_snapshots_getall

> <SnapshotList> v1_snapshots_getall

Get a list of all the snapshots on a workspace

This API is deprecated for /v1/snapshots. The API v1/volume-snapshots has replaced this endpoint.  View the usage of snapshots on the workspace. The snapshots may take time sync because the data is cached. 

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::SnapshotsApi.new

begin
  # Get a list of all the snapshots on a workspace
  result = api_instance.v1_snapshots_getall
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SnapshotsApi->v1_snapshots_getall: #{e}"
end
```

#### Using the v1_snapshots_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SnapshotList>, Integer, Hash)> v1_snapshots_getall_with_http_info

```ruby
begin
  # Get a list of all the snapshots on a workspace
  data, status_code, headers = api_instance.v1_snapshots_getall_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SnapshotList>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SnapshotsApi->v1_snapshots_getall_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SnapshotList**](SnapshotList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_volume_snapshots_get

> <VolumeSnapshotList> v1_volume_snapshots_get

Get the list of volume snapshots on a workspace

View the usage of volume snapshots on the workspace. The volume snapshots may take time sync because the data is cached.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::SnapshotsApi.new

begin
  # Get the list of volume snapshots on a workspace
  result = api_instance.v1_volume_snapshots_get
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SnapshotsApi->v1_volume_snapshots_get: #{e}"
end
```

#### Using the v1_volume_snapshots_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VolumeSnapshotList>, Integer, Hash)> v1_volume_snapshots_get_with_http_info

```ruby
begin
  # Get the list of volume snapshots on a workspace
  data, status_code, headers = api_instance.v1_volume_snapshots_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VolumeSnapshotList>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SnapshotsApi->v1_volume_snapshots_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**VolumeSnapshotList**](VolumeSnapshotList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_volume_snapshots_getall

> <SnapshotV1> v1_volume_snapshots_getall(volume_snapshot_uuid)

Get the detail of a volume snapshot

View the usage of a snapshot. The snapshot may take time sync because the data is cached.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::SnapshotsApi.new
volume_snapshot_uuid = 'volume_snapshot_uuid_example' # String | The volume snapshot UUID

begin
  # Get the detail of a volume snapshot
  result = api_instance.v1_volume_snapshots_getall(volume_snapshot_uuid)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SnapshotsApi->v1_volume_snapshots_getall: #{e}"
end
```

#### Using the v1_volume_snapshots_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SnapshotV1>, Integer, Hash)> v1_volume_snapshots_getall_with_http_info(volume_snapshot_uuid)

```ruby
begin
  # Get the detail of a volume snapshot
  data, status_code, headers = api_instance.v1_volume_snapshots_getall_with_http_info(volume_snapshot_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SnapshotV1>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SnapshotsApi->v1_volume_snapshots_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **volume_snapshot_uuid** | **String** | The volume snapshot UUID |  |

### Return type

[**SnapshotV1**](SnapshotV1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

