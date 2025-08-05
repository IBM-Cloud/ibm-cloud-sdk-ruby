# IbmCloudPower::PCloudTasksApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_tasks_delete**](PCloudTasksApi.md#pcloud_tasks_delete) | **DELETE** /pcloud/v1/tasks/{task_id} | Delete a Task |
| [**pcloud_tasks_get**](PCloudTasksApi.md#pcloud_tasks_get) | **GET** /pcloud/v1/tasks/{task_id} | Get a Task |


## pcloud_tasks_delete

> Object pcloud_tasks_delete(task_id)

Delete a Task

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudTasksApi.new
task_id = 'task_id_example' # String | PCloud Task ID

begin
  # Delete a Task
  result = api_instance.pcloud_tasks_delete(task_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudTasksApi->pcloud_tasks_delete: #{e}"
end
```

#### Using the pcloud_tasks_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_tasks_delete_with_http_info(task_id)

```ruby
begin
  # Delete a Task
  data, status_code, headers = api_instance.pcloud_tasks_delete_with_http_info(task_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudTasksApi->pcloud_tasks_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **String** | PCloud Task ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_tasks_get

> <Task> pcloud_tasks_get(task_id)

Get a Task

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudTasksApi.new
task_id = 'task_id_example' # String | PCloud Task ID

begin
  # Get a Task
  result = api_instance.pcloud_tasks_get(task_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudTasksApi->pcloud_tasks_get: #{e}"
end
```

#### Using the pcloud_tasks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Task>, Integer, Hash)> pcloud_tasks_get_with_http_info(task_id)

```ruby
begin
  # Get a Task
  data, status_code, headers = api_instance.pcloud_tasks_get_with_http_info(task_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Task>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudTasksApi->pcloud_tasks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **String** | PCloud Task ID |  |

### Return type

[**Task**](Task.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

