# IbmCloudPower::WorkspacesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_workspaces_get**](WorkspacesApi.md#v1_workspaces_get) | **GET** /v1/workspaces/{workspace_id} | Get a Workspace&#39;s information and capabilities |
| [**v1_workspaces_getall**](WorkspacesApi.md#v1_workspaces_getall) | **GET** /v1/workspaces | Get all Workspaces information and capabilities for a tenant |


## v1_workspaces_get

> <Workspace> v1_workspaces_get(workspace_id)

Get a Workspace's information and capabilities

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::WorkspacesApi.new
workspace_id = 'workspace_id_example' # String | Workspace ID

begin
  # Get a Workspace's information and capabilities
  result = api_instance.v1_workspaces_get(workspace_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling WorkspacesApi->v1_workspaces_get: #{e}"
end
```

#### Using the v1_workspaces_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Workspace>, Integer, Hash)> v1_workspaces_get_with_http_info(workspace_id)

```ruby
begin
  # Get a Workspace's information and capabilities
  data, status_code, headers = api_instance.v1_workspaces_get_with_http_info(workspace_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Workspace>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling WorkspacesApi->v1_workspaces_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** | Workspace ID |  |

### Return type

[**Workspace**](Workspace.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_workspaces_getall

> <Workspaces> v1_workspaces_getall

Get all Workspaces information and capabilities for a tenant

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::WorkspacesApi.new

begin
  # Get all Workspaces information and capabilities for a tenant
  result = api_instance.v1_workspaces_getall
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling WorkspacesApi->v1_workspaces_getall: #{e}"
end
```

#### Using the v1_workspaces_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Workspaces>, Integer, Hash)> v1_workspaces_getall_with_http_info

```ruby
begin
  # Get all Workspaces information and capabilities for a tenant
  data, status_code, headers = api_instance.v1_workspaces_getall_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Workspaces>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling WorkspacesApi->v1_workspaces_getall_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Workspaces**](Workspaces.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

