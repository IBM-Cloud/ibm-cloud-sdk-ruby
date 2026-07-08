# IbmCloudPower::SSHKeysApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_sshkeys_delete**](SSHKeysApi.md#v1_sshkeys_delete) | **DELETE** /v1/ssh-keys/{sshkey_id} | Delete ssh-key |
| [**v1_sshkeys_get**](SSHKeysApi.md#v1_sshkeys_get) | **GET** /v1/ssh-keys/{sshkey_id} | Get ssh-key information |
| [**v1_sshkeys_getall**](SSHKeysApi.md#v1_sshkeys_getall) | **GET** /v1/ssh-keys | List SSH Keys |
| [**v1_sshkeys_post**](SSHKeysApi.md#v1_sshkeys_post) | **POST** /v1/ssh-keys | Add a new SSH key |
| [**v1_sshkeys_put**](SSHKeysApi.md#v1_sshkeys_put) | **PUT** /v1/ssh-keys/{sshkey_id} | Update the ssh key |


## v1_sshkeys_delete

> Object v1_sshkeys_delete(sshkey_id)

Delete ssh-key

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::SSHKeysApi.new
sshkey_id = 'sshkey_id_example' # String | SSH Key ID

begin
  # Delete ssh-key
  result = api_instance.v1_sshkeys_delete(sshkey_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SSHKeysApi->v1_sshkeys_delete: #{e}"
end
```

#### Using the v1_sshkeys_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_sshkeys_delete_with_http_info(sshkey_id)

```ruby
begin
  # Delete ssh-key
  data, status_code, headers = api_instance.v1_sshkeys_delete_with_http_info(sshkey_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SSHKeysApi->v1_sshkeys_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sshkey_id** | **String** | SSH Key ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_sshkeys_get

> <WorkspaceSSHKey> v1_sshkeys_get(sshkey_id)

Get ssh-key information

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::SSHKeysApi.new
sshkey_id = 'sshkey_id_example' # String | SSH Key ID

begin
  # Get ssh-key information
  result = api_instance.v1_sshkeys_get(sshkey_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SSHKeysApi->v1_sshkeys_get: #{e}"
end
```

#### Using the v1_sshkeys_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkspaceSSHKey>, Integer, Hash)> v1_sshkeys_get_with_http_info(sshkey_id)

```ruby
begin
  # Get ssh-key information
  data, status_code, headers = api_instance.v1_sshkeys_get_with_http_info(sshkey_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkspaceSSHKey>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SSHKeysApi->v1_sshkeys_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sshkey_id** | **String** | SSH Key ID |  |

### Return type

[**WorkspaceSSHKey**](WorkspaceSSHKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_sshkeys_getall

> <WorkspaceSSHKeys> v1_sshkeys_getall

List SSH Keys

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::SSHKeysApi.new

begin
  # List SSH Keys
  result = api_instance.v1_sshkeys_getall
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SSHKeysApi->v1_sshkeys_getall: #{e}"
end
```

#### Using the v1_sshkeys_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkspaceSSHKeys>, Integer, Hash)> v1_sshkeys_getall_with_http_info

```ruby
begin
  # List SSH Keys
  data, status_code, headers = api_instance.v1_sshkeys_getall_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkspaceSSHKeys>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SSHKeysApi->v1_sshkeys_getall_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WorkspaceSSHKeys**](WorkspaceSSHKeys.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_sshkeys_post

> <WorkspaceSSHKey> v1_sshkeys_post(body)

Add a new SSH key

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::SSHKeysApi.new
body = IbmCloudPower::CreateWorkspaceSSHKey.new({name: 'name_example', ssh_key: 'ssh_key_example'}) # CreateWorkspaceSSHKey | Parameters for the creation of a new SSH key

begin
  # Add a new SSH key
  result = api_instance.v1_sshkeys_post(body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SSHKeysApi->v1_sshkeys_post: #{e}"
end
```

#### Using the v1_sshkeys_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkspaceSSHKey>, Integer, Hash)> v1_sshkeys_post_with_http_info(body)

```ruby
begin
  # Add a new SSH key
  data, status_code, headers = api_instance.v1_sshkeys_post_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkspaceSSHKey>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SSHKeysApi->v1_sshkeys_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**CreateWorkspaceSSHKey**](CreateWorkspaceSSHKey.md) | Parameters for the creation of a new SSH key |  |

### Return type

[**WorkspaceSSHKey**](WorkspaceSSHKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_sshkeys_put

> <WorkspaceSSHKey> v1_sshkeys_put(sshkey_id, body)

Update the ssh key

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::SSHKeysApi.new
sshkey_id = 'sshkey_id_example' # String | SSH Key ID
body = IbmCloudPower::UpdateWorkspaceSSHKey.new # UpdateWorkspaceSSHKey | Parameter for updating SSH key

begin
  # Update the ssh key
  result = api_instance.v1_sshkeys_put(sshkey_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SSHKeysApi->v1_sshkeys_put: #{e}"
end
```

#### Using the v1_sshkeys_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkspaceSSHKey>, Integer, Hash)> v1_sshkeys_put_with_http_info(sshkey_id, body)

```ruby
begin
  # Update the ssh key
  data, status_code, headers = api_instance.v1_sshkeys_put_with_http_info(sshkey_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkspaceSSHKey>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SSHKeysApi->v1_sshkeys_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sshkey_id** | **String** | SSH Key ID |  |
| **body** | [**UpdateWorkspaceSSHKey**](UpdateWorkspaceSSHKey.md) | Parameter for updating SSH key |  |

### Return type

[**WorkspaceSSHKey**](WorkspaceSSHKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

