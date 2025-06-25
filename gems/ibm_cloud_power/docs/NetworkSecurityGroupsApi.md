# IbmCloudPower::NetworkSecurityGroupsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_network_security_groups_action_post**](NetworkSecurityGroupsApi.md#v1_network_security_groups_action_post) | **POST** /v1/network-security-groups/action | Perform a Network Security Groups action (enable, disable) on a workspace. On enablement, a default Network Security Group is created to allow all traffic for all active network iterfaces |
| [**v1_network_security_groups_id_delete**](NetworkSecurityGroupsApi.md#v1_network_security_groups_id_delete) | **DELETE** /v1/network-security-groups/{network_security_group_id} | Delete a Network Security Group from a workspace |
| [**v1_network_security_groups_id_get**](NetworkSecurityGroupsApi.md#v1_network_security_groups_id_get) | **GET** /v1/network-security-groups/{network_security_group_id} | Get the detail of a Network Security Group |
| [**v1_network_security_groups_id_post**](NetworkSecurityGroupsApi.md#v1_network_security_groups_id_post) | **POST** /v1/network-security-groups/{network_security_group_id} | Clone a Network Security Group |
| [**v1_network_security_groups_id_put**](NetworkSecurityGroupsApi.md#v1_network_security_groups_id_put) | **PUT** /v1/network-security-groups/{network_security_group_id} | Update a Network Security Group |
| [**v1_network_security_groups_list**](NetworkSecurityGroupsApi.md#v1_network_security_groups_list) | **GET** /v1/network-security-groups | Get the list of Network Security Groups for a workspace |
| [**v1_network_security_groups_members_delete**](NetworkSecurityGroupsApi.md#v1_network_security_groups_members_delete) | **DELETE** /v1/network-security-groups/{network_security_group_id}/members/{network_security_group_member_id} | Delete the member from a Network Security Group |
| [**v1_network_security_groups_members_post**](NetworkSecurityGroupsApi.md#v1_network_security_groups_members_post) | **POST** /v1/network-security-groups/{network_security_group_id}/members | Add a member to a Network Security Group |
| [**v1_network_security_groups_move_member_post**](NetworkSecurityGroupsApi.md#v1_network_security_groups_move_member_post) | **POST** /v1/network-security-groups/{network_security_group_id}/move_member | Move a Network Security Group member to another Network Security Group |
| [**v1_network_security_groups_post**](NetworkSecurityGroupsApi.md#v1_network_security_groups_post) | **POST** /v1/network-security-groups | Create a new Network Security Group |
| [**v1_network_security_groups_rules_delete**](NetworkSecurityGroupsApi.md#v1_network_security_groups_rules_delete) | **DELETE** /v1/network-security-groups/{network_security_group_id}/rules/{network_security_group_rule_id} | Delete the rule from a Network Security Group |
| [**v1_network_security_groups_rules_post**](NetworkSecurityGroupsApi.md#v1_network_security_groups_rules_post) | **POST** /v1/network-security-groups/{network_security_group_id}/rules | Add a rule to a Network Security Group |


## v1_network_security_groups_action_post

> Object v1_network_security_groups_action_post(body)

Perform a Network Security Groups action (enable, disable) on a workspace. On enablement, a default Network Security Group is created to allow all traffic for all active network iterfaces

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkSecurityGroupsApi.new
body = IbmCloudPower::NetworkSecurityGroupsAction.new({action: 'enable'}) # NetworkSecurityGroupsAction | Parameters for the desired action

begin
  # Perform a Network Security Groups action (enable, disable) on a workspace. On enablement, a default Network Security Group is created to allow all traffic for all active network iterfaces
  result = api_instance.v1_network_security_groups_action_post(body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_action_post: #{e}"
end
```

#### Using the v1_network_security_groups_action_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_network_security_groups_action_post_with_http_info(body)

```ruby
begin
  # Perform a Network Security Groups action (enable, disable) on a workspace. On enablement, a default Network Security Group is created to allow all traffic for all active network iterfaces
  data, status_code, headers = api_instance.v1_network_security_groups_action_post_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_action_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**NetworkSecurityGroupsAction**](NetworkSecurityGroupsAction.md) | Parameters for the desired action |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_network_security_groups_id_delete

> Object v1_network_security_groups_id_delete(network_security_group_id)

Delete a Network Security Group from a workspace

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkSecurityGroupsApi.new
network_security_group_id = 'network_security_group_id_example' # String | Network Security Group ID

begin
  # Delete a Network Security Group from a workspace
  result = api_instance.v1_network_security_groups_id_delete(network_security_group_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_id_delete: #{e}"
end
```

#### Using the v1_network_security_groups_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_network_security_groups_id_delete_with_http_info(network_security_group_id)

```ruby
begin
  # Delete a Network Security Group from a workspace
  data, status_code, headers = api_instance.v1_network_security_groups_id_delete_with_http_info(network_security_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_security_group_id** | **String** | Network Security Group ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_network_security_groups_id_get

> <NetworkSecurityGroup> v1_network_security_groups_id_get(network_security_group_id)

Get the detail of a Network Security Group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkSecurityGroupsApi.new
network_security_group_id = 'network_security_group_id_example' # String | Network Security Group ID

begin
  # Get the detail of a Network Security Group
  result = api_instance.v1_network_security_groups_id_get(network_security_group_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_id_get: #{e}"
end
```

#### Using the v1_network_security_groups_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkSecurityGroup>, Integer, Hash)> v1_network_security_groups_id_get_with_http_info(network_security_group_id)

```ruby
begin
  # Get the detail of a Network Security Group
  data, status_code, headers = api_instance.v1_network_security_groups_id_get_with_http_info(network_security_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkSecurityGroup>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_security_group_id** | **String** | Network Security Group ID |  |

### Return type

[**NetworkSecurityGroup**](NetworkSecurityGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_network_security_groups_id_post

> <NetworkSecurityGroup> v1_network_security_groups_id_post(network_security_group_id, body)

Clone a Network Security Group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkSecurityGroupsApi.new
network_security_group_id = 'network_security_group_id_example' # String | Network Security Group ID
body = IbmCloudPower::NetworkSecurityGroupClone.new({name: 'name_example'}) # NetworkSecurityGroupClone | Parameters for the clone of a Network Security Group

begin
  # Clone a Network Security Group
  result = api_instance.v1_network_security_groups_id_post(network_security_group_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_id_post: #{e}"
end
```

#### Using the v1_network_security_groups_id_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkSecurityGroup>, Integer, Hash)> v1_network_security_groups_id_post_with_http_info(network_security_group_id, body)

```ruby
begin
  # Clone a Network Security Group
  data, status_code, headers = api_instance.v1_network_security_groups_id_post_with_http_info(network_security_group_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkSecurityGroup>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_id_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_security_group_id** | **String** | Network Security Group ID |  |
| **body** | [**NetworkSecurityGroupClone**](NetworkSecurityGroupClone.md) | Parameters for the clone of a Network Security Group |  |

### Return type

[**NetworkSecurityGroup**](NetworkSecurityGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_network_security_groups_id_put

> <NetworkSecurityGroup> v1_network_security_groups_id_put(network_security_group_id, body)

Update a Network Security Group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkSecurityGroupsApi.new
network_security_group_id = 'network_security_group_id_example' # String | Network Security Group ID
body = IbmCloudPower::NetworkSecurityGroupUpdate.new # NetworkSecurityGroupUpdate | Parameters for the update of a Network Security Group

begin
  # Update a Network Security Group
  result = api_instance.v1_network_security_groups_id_put(network_security_group_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_id_put: #{e}"
end
```

#### Using the v1_network_security_groups_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkSecurityGroup>, Integer, Hash)> v1_network_security_groups_id_put_with_http_info(network_security_group_id, body)

```ruby
begin
  # Update a Network Security Group
  data, status_code, headers = api_instance.v1_network_security_groups_id_put_with_http_info(network_security_group_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkSecurityGroup>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_security_group_id** | **String** | Network Security Group ID |  |
| **body** | [**NetworkSecurityGroupUpdate**](NetworkSecurityGroupUpdate.md) | Parameters for the update of a Network Security Group |  |

### Return type

[**NetworkSecurityGroup**](NetworkSecurityGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_network_security_groups_list

> <NetworkSecurityGroups> v1_network_security_groups_list(opts)

Get the list of Network Security Groups for a workspace

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkSecurityGroupsApi.new
opts = {
  default_nsg: true # Boolean | 
}

begin
  # Get the list of Network Security Groups for a workspace
  result = api_instance.v1_network_security_groups_list(opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_list: #{e}"
end
```

#### Using the v1_network_security_groups_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkSecurityGroups>, Integer, Hash)> v1_network_security_groups_list_with_http_info(opts)

```ruby
begin
  # Get the list of Network Security Groups for a workspace
  data, status_code, headers = api_instance.v1_network_security_groups_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkSecurityGroups>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_nsg** | **Boolean** |  | [optional] |

### Return type

[**NetworkSecurityGroups**](NetworkSecurityGroups.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_network_security_groups_members_delete

> Object v1_network_security_groups_members_delete(network_security_group_id, network_security_group_member_id)

Delete the member from a Network Security Group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkSecurityGroupsApi.new
network_security_group_id = 'network_security_group_id_example' # String | Network Security Group ID
network_security_group_member_id = 'network_security_group_member_id_example' # String | Network Security Group Member ID

begin
  # Delete the member from a Network Security Group
  result = api_instance.v1_network_security_groups_members_delete(network_security_group_id, network_security_group_member_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_members_delete: #{e}"
end
```

#### Using the v1_network_security_groups_members_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_network_security_groups_members_delete_with_http_info(network_security_group_id, network_security_group_member_id)

```ruby
begin
  # Delete the member from a Network Security Group
  data, status_code, headers = api_instance.v1_network_security_groups_members_delete_with_http_info(network_security_group_id, network_security_group_member_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_members_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_security_group_id** | **String** | Network Security Group ID |  |
| **network_security_group_member_id** | **String** | Network Security Group Member ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_network_security_groups_members_post

> <NetworkSecurityGroupMember> v1_network_security_groups_members_post(network_security_group_id, body)

Add a member to a Network Security Group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkSecurityGroupsApi.new
network_security_group_id = 'network_security_group_id_example' # String | Network Security Group ID
body = IbmCloudPower::NetworkSecurityGroupAddMember.new({target: 'target_example', type: 'ipv4-address'}) # NetworkSecurityGroupAddMember | Parameters for adding a member to a Network Security Group

begin
  # Add a member to a Network Security Group
  result = api_instance.v1_network_security_groups_members_post(network_security_group_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_members_post: #{e}"
end
```

#### Using the v1_network_security_groups_members_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkSecurityGroupMember>, Integer, Hash)> v1_network_security_groups_members_post_with_http_info(network_security_group_id, body)

```ruby
begin
  # Add a member to a Network Security Group
  data, status_code, headers = api_instance.v1_network_security_groups_members_post_with_http_info(network_security_group_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkSecurityGroupMember>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_members_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_security_group_id** | **String** | Network Security Group ID |  |
| **body** | [**NetworkSecurityGroupAddMember**](NetworkSecurityGroupAddMember.md) | Parameters for adding a member to a Network Security Group |  |

### Return type

[**NetworkSecurityGroupMember**](NetworkSecurityGroupMember.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_network_security_groups_move_member_post

> <NetworkSecurityGroupMember> v1_network_security_groups_move_member_post(network_security_group_id, body)

Move a Network Security Group member to another Network Security Group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkSecurityGroupsApi.new
network_security_group_id = 'network_security_group_id_example' # String | Network Security Group ID
body = IbmCloudPower::NetworkSecurityGroupMoveMember.new({member_id: 'member_id_example', network_security_group_id: 'network_security_group_id_example'}) # NetworkSecurityGroupMoveMember | Parameters for moving a Network Security Group member to another Network Security Group

begin
  # Move a Network Security Group member to another Network Security Group
  result = api_instance.v1_network_security_groups_move_member_post(network_security_group_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_move_member_post: #{e}"
end
```

#### Using the v1_network_security_groups_move_member_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkSecurityGroupMember>, Integer, Hash)> v1_network_security_groups_move_member_post_with_http_info(network_security_group_id, body)

```ruby
begin
  # Move a Network Security Group member to another Network Security Group
  data, status_code, headers = api_instance.v1_network_security_groups_move_member_post_with_http_info(network_security_group_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkSecurityGroupMember>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_move_member_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_security_group_id** | **String** | Network Security Group ID |  |
| **body** | [**NetworkSecurityGroupMoveMember**](NetworkSecurityGroupMoveMember.md) | Parameters for moving a Network Security Group member to another Network Security Group |  |

### Return type

[**NetworkSecurityGroupMember**](NetworkSecurityGroupMember.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_network_security_groups_post

> <NetworkSecurityGroup> v1_network_security_groups_post(body)

Create a new Network Security Group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkSecurityGroupsApi.new
body = IbmCloudPower::NetworkSecurityGroupCreate.new({name: 'name_example'}) # NetworkSecurityGroupCreate | Parameters for the creation of a Network Security Group

begin
  # Create a new Network Security Group
  result = api_instance.v1_network_security_groups_post(body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_post: #{e}"
end
```

#### Using the v1_network_security_groups_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkSecurityGroup>, Integer, Hash)> v1_network_security_groups_post_with_http_info(body)

```ruby
begin
  # Create a new Network Security Group
  data, status_code, headers = api_instance.v1_network_security_groups_post_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkSecurityGroup>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**NetworkSecurityGroupCreate**](NetworkSecurityGroupCreate.md) | Parameters for the creation of a Network Security Group |  |

### Return type

[**NetworkSecurityGroup**](NetworkSecurityGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_network_security_groups_rules_delete

> Object v1_network_security_groups_rules_delete(network_security_group_id, network_security_group_rule_id)

Delete the rule from a Network Security Group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkSecurityGroupsApi.new
network_security_group_id = 'network_security_group_id_example' # String | Network Security Group ID
network_security_group_rule_id = 'network_security_group_rule_id_example' # String | Network Security Group Rule ID

begin
  # Delete the rule from a Network Security Group
  result = api_instance.v1_network_security_groups_rules_delete(network_security_group_id, network_security_group_rule_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_rules_delete: #{e}"
end
```

#### Using the v1_network_security_groups_rules_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_network_security_groups_rules_delete_with_http_info(network_security_group_id, network_security_group_rule_id)

```ruby
begin
  # Delete the rule from a Network Security Group
  data, status_code, headers = api_instance.v1_network_security_groups_rules_delete_with_http_info(network_security_group_id, network_security_group_rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_rules_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_security_group_id** | **String** | Network Security Group ID |  |
| **network_security_group_rule_id** | **String** | Network Security Group Rule ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_network_security_groups_rules_post

> <NetworkSecurityGroupRule> v1_network_security_groups_rules_post(network_security_group_id, body)

Add a rule to a Network Security Group

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::NetworkSecurityGroupsApi.new
network_security_group_id = 'network_security_group_id_example' # String | Network Security Group ID
body = IbmCloudPower::NetworkSecurityGroupAddRule.new({action: 'allow', protocol: IbmCloudPower::NetworkSecurityGroupRuleProtocol.new, remote: IbmCloudPower::NetworkSecurityGroupRuleRemote.new}) # NetworkSecurityGroupAddRule | Parameters for adding a rule to a Network Security Group

begin
  # Add a rule to a Network Security Group
  result = api_instance.v1_network_security_groups_rules_post(network_security_group_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_rules_post: #{e}"
end
```

#### Using the v1_network_security_groups_rules_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkSecurityGroupRule>, Integer, Hash)> v1_network_security_groups_rules_post_with_http_info(network_security_group_id, body)

```ruby
begin
  # Add a rule to a Network Security Group
  data, status_code, headers = api_instance.v1_network_security_groups_rules_post_with_http_info(network_security_group_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkSecurityGroupRule>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->v1_network_security_groups_rules_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_security_group_id** | **String** | Network Security Group ID |  |
| **body** | [**NetworkSecurityGroupAddRule**](NetworkSecurityGroupAddRule.md) | Parameters for adding a rule to a Network Security Group |  |

### Return type

[**NetworkSecurityGroupRule**](NetworkSecurityGroupRule.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

