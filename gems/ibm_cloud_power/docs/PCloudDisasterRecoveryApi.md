# IbmCloudPower::PCloudDisasterRecoveryApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_locations_disasterrecovery_get**](PCloudDisasterRecoveryApi.md#pcloud_locations_disasterrecovery_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/locations/disaster-recovery | Get the disaster recovery site details for the current location |
| [**pcloud_locations_disasterrecovery_getall**](PCloudDisasterRecoveryApi.md#pcloud_locations_disasterrecovery_getall) | **GET** /pcloud/v1/locations/disaster-recovery | Get all disaster recovery locations supported by Power Virtual Server |


## pcloud_locations_disasterrecovery_get

> <DisasterRecoveryLocation> pcloud_locations_disasterrecovery_get(cloud_instance_id)

Get the disaster recovery site details for the current location

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudDisasterRecoveryApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # Get the disaster recovery site details for the current location
  result = api_instance.pcloud_locations_disasterrecovery_get(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudDisasterRecoveryApi->pcloud_locations_disasterrecovery_get: #{e}"
end
```

#### Using the pcloud_locations_disasterrecovery_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisasterRecoveryLocation>, Integer, Hash)> pcloud_locations_disasterrecovery_get_with_http_info(cloud_instance_id)

```ruby
begin
  # Get the disaster recovery site details for the current location
  data, status_code, headers = api_instance.pcloud_locations_disasterrecovery_get_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisasterRecoveryLocation>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudDisasterRecoveryApi->pcloud_locations_disasterrecovery_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**DisasterRecoveryLocation**](DisasterRecoveryLocation.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_locations_disasterrecovery_getall

> <DisasterRecoveryLocations> pcloud_locations_disasterrecovery_getall

Get all disaster recovery locations supported by Power Virtual Server

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudDisasterRecoveryApi.new

begin
  # Get all disaster recovery locations supported by Power Virtual Server
  result = api_instance.pcloud_locations_disasterrecovery_getall
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudDisasterRecoveryApi->pcloud_locations_disasterrecovery_getall: #{e}"
end
```

#### Using the pcloud_locations_disasterrecovery_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisasterRecoveryLocations>, Integer, Hash)> pcloud_locations_disasterrecovery_getall_with_http_info

```ruby
begin
  # Get all disaster recovery locations supported by Power Virtual Server
  data, status_code, headers = api_instance.pcloud_locations_disasterrecovery_getall_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisasterRecoveryLocations>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudDisasterRecoveryApi->pcloud_locations_disasterrecovery_getall_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DisasterRecoveryLocations**](DisasterRecoveryLocations.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

