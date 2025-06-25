# IbmCloudPower::PCloudPodCapacityApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_podcapacity_get**](PCloudPodCapacityApi.md#pcloud_podcapacity_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pod-capacity | List of available resources within a particular Pod |


## pcloud_podcapacity_get

> <PodCapacity> pcloud_podcapacity_get(cloud_instance_id)

List of available resources within a particular Pod

Applicable to satellite locations only.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPodCapacityApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # List of available resources within a particular Pod
  result = api_instance.pcloud_podcapacity_get(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPodCapacityApi->pcloud_podcapacity_get: #{e}"
end
```

#### Using the pcloud_podcapacity_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PodCapacity>, Integer, Hash)> pcloud_podcapacity_get_with_http_info(cloud_instance_id)

```ruby
begin
  # List of available resources within a particular Pod
  data, status_code, headers = api_instance.pcloud_podcapacity_get_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PodCapacity>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPodCapacityApi->pcloud_podcapacity_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**PodCapacity**](PodCapacity.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

