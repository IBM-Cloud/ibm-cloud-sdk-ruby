# IbmCloudPower::SharedProcessorPoolCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host_group** | **String** | The host group identifier; a system type name or a dedicated host group ID. A host from the group is automatically selected based on available resources, unless &#x60;hostID&#x60; is also provided to target a specific host within a dedicated host group. For example, &#x60;s922&#x60; or &#x60;c3a5119c-65b5-4eb3-9b4a-6d840912c0cf&#x60;. |  |
| **host_id** | **String** | The unique identifier of a host in a dedicated host group. Only available for dedicated hosts. | [optional] |
| **name** | **String** | The name of the shared processor pool. |  |
| **placement_group_id** | **String** | The unique identifier of the placement group. | [optional] |
| **reserved_cores** | **Integer** | The number of processor cores to reserve for the shared processor pool. |  |
| **user_tags** | **Array&lt;String&gt;** | List of user tags | [optional] |

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

