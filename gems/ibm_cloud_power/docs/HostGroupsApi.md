# IbmCloudPower::HostGroupsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_available_hosts**](HostGroupsApi.md#v1_available_hosts) | **GET** /v1/available-hosts | List all the hosts that can be reserved |
| [**v1_host_groups_get**](HostGroupsApi.md#v1_host_groups_get) | **GET** /v1/host-groups | Get the list of host groups for the workspace |
| [**v1_host_groups_id_get**](HostGroupsApi.md#v1_host_groups_id_get) | **GET** /v1/host-groups/{host_group_id} | Get the details of a host group |
| [**v1_host_groups_id_put**](HostGroupsApi.md#v1_host_groups_id_put) | **PUT** /v1/host-groups/{host_group_id} | Share/unshare a host group with another workspace |
| [**v1_host_groups_post**](HostGroupsApi.md#v1_host_groups_post) | **POST** /v1/host-groups | Create a host group with one (or more) host |
| [**v1_hosts_get**](HostGroupsApi.md#v1_hosts_get) | **GET** /v1/hosts | Get the list of all the hosts the workspace has access to |
| [**v1_hosts_id_delete**](HostGroupsApi.md#v1_hosts_id_delete) | **DELETE** /v1/hosts/{host_id} | Release a host from its host group |
| [**v1_hosts_id_get**](HostGroupsApi.md#v1_hosts_id_get) | **GET** /v1/hosts/{host_id} | Get the details about a host |
| [**v1_hosts_id_put**](HostGroupsApi.md#v1_hosts_id_put) | **PUT** /v1/hosts/{host_id} | Modify the display name of a host |
| [**v1_hosts_post**](HostGroupsApi.md#v1_hosts_post) | **POST** /v1/hosts | Add new host(s) to an existing host group |


## v1_available_hosts

> <Hash<String, AvailableHost>> v1_available_hosts

List all the hosts that can be reserved

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::HostGroupsApi.new

begin
  # List all the hosts that can be reserved
  result = api_instance.v1_available_hosts
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling HostGroupsApi->v1_available_hosts: #{e}"
end
```

#### Using the v1_available_hosts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, AvailableHost>>, Integer, Hash)> v1_available_hosts_with_http_info

```ruby
begin
  # List all the hosts that can be reserved
  data, status_code, headers = api_instance.v1_available_hosts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, AvailableHost>>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling HostGroupsApi->v1_available_hosts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Hash&lt;String, AvailableHost&gt;**](AvailableHost.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_host_groups_get

> <Array<HostGroup>> v1_host_groups_get

Get the list of host groups for the workspace

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::HostGroupsApi.new

begin
  # Get the list of host groups for the workspace
  result = api_instance.v1_host_groups_get
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling HostGroupsApi->v1_host_groups_get: #{e}"
end
```

#### Using the v1_host_groups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<HostGroup>>, Integer, Hash)> v1_host_groups_get_with_http_info

```ruby
begin
  # Get the list of host groups for the workspace
  data, status_code, headers = api_instance.v1_host_groups_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<HostGroup>>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling HostGroupsApi->v1_host_groups_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;HostGroup&gt;**](HostGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_host_groups_id_get

> <HostGroup> v1_host_groups_id_get(host_group_id)

Get the details of a host group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::HostGroupsApi.new
host_group_id = 'host_group_id_example' # String | Hostgroup ID

begin
  # Get the details of a host group
  result = api_instance.v1_host_groups_id_get(host_group_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling HostGroupsApi->v1_host_groups_id_get: #{e}"
end
```

#### Using the v1_host_groups_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HostGroup>, Integer, Hash)> v1_host_groups_id_get_with_http_info(host_group_id)

```ruby
begin
  # Get the details of a host group
  data, status_code, headers = api_instance.v1_host_groups_id_get_with_http_info(host_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HostGroup>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling HostGroupsApi->v1_host_groups_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host_group_id** | **String** | Hostgroup ID |  |

### Return type

[**HostGroup**](HostGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_host_groups_id_put

> <HostGroup> v1_host_groups_id_put(host_group_id, body)

Share/unshare a host group with another workspace

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::HostGroupsApi.new
host_group_id = 'host_group_id_example' # String | Hostgroup ID
body = IbmCloudPower::HostGroupShareOp.new # HostGroupShareOp | Parameters to set the sharing status of the host group

begin
  # Share/unshare a host group with another workspace
  result = api_instance.v1_host_groups_id_put(host_group_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling HostGroupsApi->v1_host_groups_id_put: #{e}"
end
```

#### Using the v1_host_groups_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HostGroup>, Integer, Hash)> v1_host_groups_id_put_with_http_info(host_group_id, body)

```ruby
begin
  # Share/unshare a host group with another workspace
  data, status_code, headers = api_instance.v1_host_groups_id_put_with_http_info(host_group_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HostGroup>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling HostGroupsApi->v1_host_groups_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host_group_id** | **String** | Hostgroup ID |  |
| **body** | [**HostGroupShareOp**](HostGroupShareOp.md) | Parameters to set the sharing status of the host group |  |

### Return type

[**HostGroup**](HostGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_host_groups_post

> <HostGroup> v1_host_groups_post(body)

Create a host group with one (or more) host

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::HostGroupsApi.new
body = IbmCloudPower::HostGroupCreate.new({hosts: [IbmCloudPower::AddHost.new({display_name: 'display_name_example', sys_type: 'sys_type_example'})], name: 'name_example'}) # HostGroupCreate | Parameters for the creation of a new host group

begin
  # Create a host group with one (or more) host
  result = api_instance.v1_host_groups_post(body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling HostGroupsApi->v1_host_groups_post: #{e}"
end
```

#### Using the v1_host_groups_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HostGroup>, Integer, Hash)> v1_host_groups_post_with_http_info(body)

```ruby
begin
  # Create a host group with one (or more) host
  data, status_code, headers = api_instance.v1_host_groups_post_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HostGroup>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling HostGroupsApi->v1_host_groups_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**HostGroupCreate**](HostGroupCreate.md) | Parameters for the creation of a new host group |  |

### Return type

[**HostGroup**](HostGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_hosts_get

> <Array<Host>> v1_hosts_get

Get the list of all the hosts the workspace has access to

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::HostGroupsApi.new

begin
  # Get the list of all the hosts the workspace has access to
  result = api_instance.v1_hosts_get
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling HostGroupsApi->v1_hosts_get: #{e}"
end
```

#### Using the v1_hosts_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Host>>, Integer, Hash)> v1_hosts_get_with_http_info

```ruby
begin
  # Get the list of all the hosts the workspace has access to
  data, status_code, headers = api_instance.v1_hosts_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Host>>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling HostGroupsApi->v1_hosts_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Host&gt;**](Host.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_hosts_id_delete

> Object v1_hosts_id_delete(host_id)

Release a host from its host group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::HostGroupsApi.new
host_id = 'host_id_example' # String | Host ID

begin
  # Release a host from its host group
  result = api_instance.v1_hosts_id_delete(host_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling HostGroupsApi->v1_hosts_id_delete: #{e}"
end
```

#### Using the v1_hosts_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_hosts_id_delete_with_http_info(host_id)

```ruby
begin
  # Release a host from its host group
  data, status_code, headers = api_instance.v1_hosts_id_delete_with_http_info(host_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling HostGroupsApi->v1_hosts_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host_id** | **String** | Host ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_hosts_id_get

> <Host> v1_hosts_id_get(host_id)

Get the details about a host

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::HostGroupsApi.new
host_id = 'host_id_example' # String | Host ID

begin
  # Get the details about a host
  result = api_instance.v1_hosts_id_get(host_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling HostGroupsApi->v1_hosts_id_get: #{e}"
end
```

#### Using the v1_hosts_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Host>, Integer, Hash)> v1_hosts_id_get_with_http_info(host_id)

```ruby
begin
  # Get the details about a host
  data, status_code, headers = api_instance.v1_hosts_id_get_with_http_info(host_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Host>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling HostGroupsApi->v1_hosts_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host_id** | **String** | Host ID |  |

### Return type

[**Host**](Host.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_hosts_id_put

> <Host> v1_hosts_id_put(host_id, body)

Modify the display name of a host

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::HostGroupsApi.new
host_id = 'host_id_example' # String | Host ID
body = IbmCloudPower::HostPut.new({display_name: 'display_name_example'}) # HostPut | Parameters to modify a host

begin
  # Modify the display name of a host
  result = api_instance.v1_hosts_id_put(host_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling HostGroupsApi->v1_hosts_id_put: #{e}"
end
```

#### Using the v1_hosts_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Host>, Integer, Hash)> v1_hosts_id_put_with_http_info(host_id, body)

```ruby
begin
  # Modify the display name of a host
  data, status_code, headers = api_instance.v1_hosts_id_put_with_http_info(host_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Host>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling HostGroupsApi->v1_hosts_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host_id** | **String** | Host ID |  |
| **body** | [**HostPut**](HostPut.md) | Parameters to modify a host |  |

### Return type

[**Host**](Host.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_hosts_post

> <Array<Host>> v1_hosts_post(body)

Add new host(s) to an existing host group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::HostGroupsApi.new
body = IbmCloudPower::HostCreate.new({host_group_id: 'host_group_id_example', hosts: [IbmCloudPower::AddHost.new({display_name: 'display_name_example', sys_type: 'sys_type_example'})]}) # HostCreate | Parameters to add a host to an existing host group

begin
  # Add new host(s) to an existing host group
  result = api_instance.v1_hosts_post(body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling HostGroupsApi->v1_hosts_post: #{e}"
end
```

#### Using the v1_hosts_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Host>>, Integer, Hash)> v1_hosts_post_with_http_info(body)

```ruby
begin
  # Add new host(s) to an existing host group
  data, status_code, headers = api_instance.v1_hosts_post_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Host>>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling HostGroupsApi->v1_hosts_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**HostCreate**](HostCreate.md) | Parameters to add a host to an existing host group |  |

### Return type

[**Array&lt;Host&gt;**](Host.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

