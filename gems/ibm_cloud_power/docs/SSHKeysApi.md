# IbmCloudPower::SSHKeysApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_sshkeys_delete**](SSHKeysApi.md#v1_sshkeys_delete) | **DELETE** /v1/ssh-keys/{sshkey_name} | Delete an SSH key |
| [**v1_sshkeys_get**](SSHKeysApi.md#v1_sshkeys_get) | **GET** /v1/ssh-keys/{sshkey_name} | Get an SSH Key by name |
| [**v1_sshkeys_getall**](SSHKeysApi.md#v1_sshkeys_getall) | **GET** /v1/ssh-keys | List all SSH Keys |
| [**v1_sshkeys_post**](SSHKeysApi.md#v1_sshkeys_post) | **POST** /v1/ssh-keys | Add a new SSH key |
| [**v1_sshkeys_put**](SSHKeysApi.md#v1_sshkeys_put) | **PUT** /v1/ssh-keys/{sshkey_name} | Update an SSH Key |


## v1_sshkeys_delete

> Object v1_sshkeys_delete(sshkey_name)

Delete an SSH key

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::SSHKeysApi.new
sshkey_name = 'sshkey_name_example' # String | SSH key name

begin
  # Delete an SSH key
  result = api_instance.v1_sshkeys_delete(sshkey_name)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SSHKeysApi->v1_sshkeys_delete: #{e}"
end
```

#### Using the v1_sshkeys_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_sshkeys_delete_with_http_info(sshkey_name)

```ruby
begin
  # Delete an SSH key
  data, status_code, headers = api_instance.v1_sshkeys_delete_with_http_info(sshkey_name)
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
| **sshkey_name** | **String** | SSH key name |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_sshkeys_get

> <SSHKey> v1_sshkeys_get(sshkey_name)

Get an SSH Key by name

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::SSHKeysApi.new
sshkey_name = 'sshkey_name_example' # String | SSH key name

begin
  # Get an SSH Key by name
  result = api_instance.v1_sshkeys_get(sshkey_name)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SSHKeysApi->v1_sshkeys_get: #{e}"
end
```

#### Using the v1_sshkeys_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SSHKey>, Integer, Hash)> v1_sshkeys_get_with_http_info(sshkey_name)

```ruby
begin
  # Get an SSH Key by name
  data, status_code, headers = api_instance.v1_sshkeys_get_with_http_info(sshkey_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SSHKey>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SSHKeysApi->v1_sshkeys_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sshkey_name** | **String** | SSH key name |  |

### Return type

[**SSHKey**](SSHKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_sshkeys_getall

> <SSHKeys> v1_sshkeys_getall

List all SSH Keys

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::SSHKeysApi.new

begin
  # List all SSH Keys
  result = api_instance.v1_sshkeys_getall
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SSHKeysApi->v1_sshkeys_getall: #{e}"
end
```

#### Using the v1_sshkeys_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SSHKeys>, Integer, Hash)> v1_sshkeys_getall_with_http_info

```ruby
begin
  # List all SSH Keys
  data, status_code, headers = api_instance.v1_sshkeys_getall_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SSHKeys>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SSHKeysApi->v1_sshkeys_getall_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SSHKeys**](SSHKeys.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_sshkeys_post

> <SSHKey> v1_sshkeys_post(body)

Add a new SSH key

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::SSHKeysApi.new
body = IbmCloudPower::SSHKey.new({name: 'name_example', ssh_key: 'ssh_key_example'}) # SSHKey | Parameters for the creation of a new SSH key

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

> <Array(<SSHKey>, Integer, Hash)> v1_sshkeys_post_with_http_info(body)

```ruby
begin
  # Add a new SSH key
  data, status_code, headers = api_instance.v1_sshkeys_post_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SSHKey>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SSHKeysApi->v1_sshkeys_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**SSHKey**](SSHKey.md) | Parameters for the creation of a new SSH key |  |

### Return type

[**SSHKey**](SSHKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_sshkeys_put

> <SSHKey> v1_sshkeys_put(sshkey_name, body)

Update an SSH Key

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::SSHKeysApi.new
sshkey_name = 'sshkey_name_example' # String | SSH key name
body = IbmCloudPower::SSHKey.new({name: 'name_example', ssh_key: 'ssh_key_example'}) # SSHKey | Parameters for updating an SSH Key

begin
  # Update an SSH Key
  result = api_instance.v1_sshkeys_put(sshkey_name, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SSHKeysApi->v1_sshkeys_put: #{e}"
end
```

#### Using the v1_sshkeys_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SSHKey>, Integer, Hash)> v1_sshkeys_put_with_http_info(sshkey_name, body)

```ruby
begin
  # Update an SSH Key
  data, status_code, headers = api_instance.v1_sshkeys_put_with_http_info(sshkey_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SSHKey>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling SSHKeysApi->v1_sshkeys_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sshkey_name** | **String** | SSH key name |  |
| **body** | [**SSHKey**](SSHKey.md) | Parameters for updating an SSH Key |  |

### Return type

[**SSHKey**](SSHKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json