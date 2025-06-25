# IbmCloudPower::PCloudStorageTiersApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_cloudinstances_storagetiers_getall**](PCloudStorageTiersApi.md#pcloud_cloudinstances_storagetiers_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/storage-tiers | List all supported storage tiers for this cloud instance |


## pcloud_cloudinstances_storagetiers_getall

> <Array<StorageTier>> pcloud_cloudinstances_storagetiers_getall(cloud_instance_id)

List all supported storage tiers for this cloud instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudStorageTiersApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # List all supported storage tiers for this cloud instance
  result = api_instance.pcloud_cloudinstances_storagetiers_getall(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudStorageTiersApi->pcloud_cloudinstances_storagetiers_getall: #{e}"
end
```

#### Using the pcloud_cloudinstances_storagetiers_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<StorageTier>>, Integer, Hash)> pcloud_cloudinstances_storagetiers_getall_with_http_info(cloud_instance_id)

```ruby
begin
  # List all supported storage tiers for this cloud instance
  data, status_code, headers = api_instance.pcloud_cloudinstances_storagetiers_getall_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<StorageTier>>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudStorageTiersApi->pcloud_cloudinstances_storagetiers_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**Array&lt;StorageTier&gt;**](StorageTier.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

