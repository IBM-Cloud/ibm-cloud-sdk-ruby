# IbmCloudPower::PCloudTasksApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pcloud_tasks_delete**](PCloudTasksApi.md#pcloud_tasks_delete) | **DELETE** /pcloud/v1/tasks/{task_id} | Delete a task
[**pcloud_tasks_get**](PCloudTasksApi.md#pcloud_tasks_get) | **GET** /pcloud/v1/tasks/{task_id} | Get a task



## pcloud_tasks_delete

> Object pcloud_tasks_delete(task_id)

Delete a task

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudTasksApi.new
task_id = 'task_id_example' # String | PCloud Task ID

begin
  #Delete a task
  result = api_instance.pcloud_tasks_delete(task_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudTasksApi->pcloud_tasks_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| PCloud Task ID | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_tasks_get

> Task pcloud_tasks_get(task_id)

Get a task

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudTasksApi.new
task_id = 'task_id_example' # String | PCloud Task ID

begin
  #Get a task
  result = api_instance.pcloud_tasks_get(task_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudTasksApi->pcloud_tasks_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| PCloud Task ID | 

### Return type

[**Task**](Task.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

