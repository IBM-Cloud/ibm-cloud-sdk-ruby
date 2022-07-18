# IbmCloudPower::PCloudJobsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_cloudinstances_jobs_delete**](PCloudJobsApi.md#pcloud_cloudinstances_jobs_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/jobs/{job_id} | Delete a cloud instance job |
| [**pcloud_cloudinstances_jobs_get**](PCloudJobsApi.md#pcloud_cloudinstances_jobs_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/jobs/{job_id} | List the detail of a job |
| [**pcloud_cloudinstances_jobs_getall**](PCloudJobsApi.md#pcloud_cloudinstances_jobs_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/jobs | List the latest jobs initiated by the cloud instance |


## pcloud_cloudinstances_jobs_delete

> Object pcloud_cloudinstances_jobs_delete(cloud_instance_id, job_id)

Delete a cloud instance job

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudJobsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
job_id = 'job_id_example' # String | PCloud Job ID

begin
  # Delete a cloud instance job
  result = api_instance.pcloud_cloudinstances_jobs_delete(cloud_instance_id, job_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudJobsApi->pcloud_cloudinstances_jobs_delete: #{e}"
end
```

#### Using the pcloud_cloudinstances_jobs_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_cloudinstances_jobs_delete_with_http_info(cloud_instance_id, job_id)

```ruby
begin
  # Delete a cloud instance job
  data, status_code, headers = api_instance.pcloud_cloudinstances_jobs_delete_with_http_info(cloud_instance_id, job_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudJobsApi->pcloud_cloudinstances_jobs_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **job_id** | **String** | PCloud Job ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_cloudinstances_jobs_get

> <Job> pcloud_cloudinstances_jobs_get(cloud_instance_id, job_id)

List the detail of a job

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudJobsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
job_id = 'job_id_example' # String | PCloud Job ID

begin
  # List the detail of a job
  result = api_instance.pcloud_cloudinstances_jobs_get(cloud_instance_id, job_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudJobsApi->pcloud_cloudinstances_jobs_get: #{e}"
end
```

#### Using the pcloud_cloudinstances_jobs_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Job>, Integer, Hash)> pcloud_cloudinstances_jobs_get_with_http_info(cloud_instance_id, job_id)

```ruby
begin
  # List the detail of a job
  data, status_code, headers = api_instance.pcloud_cloudinstances_jobs_get_with_http_info(cloud_instance_id, job_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Job>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudJobsApi->pcloud_cloudinstances_jobs_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **job_id** | **String** | PCloud Job ID |  |

### Return type

[**Job**](Job.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_cloudinstances_jobs_getall

> <Jobs> pcloud_cloudinstances_jobs_getall(cloud_instance_id, opts)

List the latest jobs initiated by the cloud instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudJobsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
opts = {
  operation_id: 'operation_id_example', # String | ID of operation target resource (optional)
  operation_target: 'cloudConnection', # String | Operation target to filter jobs (optional)
  operation_action: 'vmCapture' # String | Operation action to filter jobs (optional) vmCapture - includes operation action value (vmCapture) imageExport - includes operation action value (imageExport) imageImport - includes operation action value (imageImport) storage - includes operation action values (vmCapture,imageExport,imageImport)
}

begin
  # List the latest jobs initiated by the cloud instance
  result = api_instance.pcloud_cloudinstances_jobs_getall(cloud_instance_id, opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudJobsApi->pcloud_cloudinstances_jobs_getall: #{e}"
end
```

#### Using the pcloud_cloudinstances_jobs_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Jobs>, Integer, Hash)> pcloud_cloudinstances_jobs_getall_with_http_info(cloud_instance_id, opts)

```ruby
begin
  # List the latest jobs initiated by the cloud instance
  data, status_code, headers = api_instance.pcloud_cloudinstances_jobs_getall_with_http_info(cloud_instance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Jobs>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudJobsApi->pcloud_cloudinstances_jobs_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **operation_id** | **String** | ID of operation target resource (optional) | [optional] |
| **operation_target** | **String** | Operation target to filter jobs (optional) | [optional] |
| **operation_action** | **String** | Operation action to filter jobs (optional) vmCapture - includes operation action value (vmCapture) imageExport - includes operation action value (imageExport) imageImport - includes operation action value (imageImport) storage - includes operation action values (vmCapture,imageExport,imageImport) | [optional] |

### Return type

[**Jobs**](Jobs.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

