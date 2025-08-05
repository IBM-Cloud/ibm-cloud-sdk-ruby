# IbmCloudPower::SharedProcessorPoolCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host_group** | **String** | The host group; a host from the group will be automatically selected based on available resources |  |
| **host_id** | **String** | The host id of a host in a host group (only available for dedicated hosts) | [optional] |
| **name** | **String** | The name of the Shared Processor Pool; minumum of 2 characters, maximum of 12, the only special character allowed is the underscore &#39;_&#39;. |  |
| **placement_group_id** | **String** | The ID of the placement group | [optional] |
| **reserved_cores** | **Integer** | The amount of reserved processor cores for the Shared Processor Pool; only integers allowed, no fractional values |  |
| **user_tags** | **Array** |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SharedProcessorPoolCreate.new(
  host_group: null,
  host_id: null,
  name: null,
  placement_group_id: null,
  reserved_cores: null,
  user_tags: null
)
```

