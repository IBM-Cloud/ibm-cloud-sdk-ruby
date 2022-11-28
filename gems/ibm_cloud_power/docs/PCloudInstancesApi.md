# IbmCloudPower::PCloudInstancesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_cloudinstances_get**](PCloudInstancesApi.md#pcloud_cloudinstances_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id} | Get a Cloud Instance&#39;s current state/information |


## pcloud_cloudinstances_get

> <CloudInstance> pcloud_cloudinstances_get(cloud_instance_id)

Get a Cloud Instance's current state/information

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # Get a Cloud Instance's current state/information
  result = api_instance.pcloud_cloudinstances_get(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudInstancesApi->pcloud_cloudinstances_get: #{e}"
end
```

#### Using the pcloud_cloudinstances_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CloudInstance>, Integer, Hash)> pcloud_cloudinstances_get_with_http_info(cloud_instance_id)

```ruby
begin
  # Get a Cloud Instance's current state/information
  data, status_code, headers = api_instance.pcloud_cloudinstances_get_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CloudInstance>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudInstancesApi->pcloud_cloudinstances_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**CloudInstance**](CloudInstance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

