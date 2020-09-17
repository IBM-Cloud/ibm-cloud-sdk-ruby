# IbmCloudPower::PCloudInstancesApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pcloud_cloudinstances_delete**](PCloudInstancesApi.md#pcloud_cloudinstances_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id} | Delete a Power Cloud instance
[**pcloud_cloudinstances_get**](PCloudInstancesApi.md#pcloud_cloudinstances_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id} | Get a cloud instance&#39;s current state or information
[**pcloud_cloudinstances_put**](PCloudInstancesApi.md#pcloud_cloudinstances_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id} | Update or upgrade a cloud instance



## pcloud_cloudinstances_delete

> Object pcloud_cloudinstances_delete(cloud_instance_id)

Delete a Power Cloud instance

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  #Delete a Power Cloud instance
  result = api_instance.pcloud_cloudinstances_delete(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudInstancesApi->pcloud_cloudinstances_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## pcloud_cloudinstances_get

> CloudInstance pcloud_cloudinstances_get(cloud_instance_id)

Get a cloud instance's current state or information

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  #Get a cloud instance's current state or information
  result = api_instance.pcloud_cloudinstances_get(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudInstancesApi->pcloud_cloudinstances_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 

### Return type

[**CloudInstance**](CloudInstance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_cloudinstances_put

> CloudInstance pcloud_cloudinstances_put(cloud_instance_id, body)

Update or upgrade a cloud instance

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::CloudInstanceUpdate.new # CloudInstanceUpdate | Parameters for updating a Power Cloud instance

begin
  #Update or upgrade a cloud instance
  result = api_instance.pcloud_cloudinstances_put(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudInstancesApi->pcloud_cloudinstances_put: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **body** | [**CloudInstanceUpdate**](CloudInstanceUpdate.md)| Parameters for updating a Power Cloud instance | 

### Return type

[**CloudInstance**](CloudInstance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

