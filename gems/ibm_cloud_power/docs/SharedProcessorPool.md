# IbmCloudPower::SharedProcessorPool

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allocated_cores** | **Float** | The amount of allocated processor cores for the Shared Processor Pool |  |
| **available_cores** | **Float** | The amount of available processor cores for the Shared Processor Pool |  |
| **crn** | **String** |  | [optional] |
| **dedicated_host_id** | **String** | ID of the dedicated host where the Shared Processor Pool resides, if applicable | [optional] |
| **host_group** | **String** | The host group the host belongs to | [optional] |
| **host_id** | **Integer** | The ID of the host where the Shared Processor Pool resides | [optional] |
| **id** | **String** | The id of the Shared Processor Pool |  |
| **name** | **String** | The name of the Shared Processor Pool |  |
| **reserved_cores** | **Integer** | The amount of reserved processor cores for the Shared Processor Pool |  |
| **shared_processor_pool_placement_groups** | [**Array&lt;SharedProcessorPoolPlacementGroup&gt;**](SharedProcessorPoolPlacementGroup.md) | list of Shared Processor Pool Placement Groups | [optional] |
| **status** | **String** | The status of the Shared Processor Pool | [optional] |
| **status_detail** | **String** | The status details of the Shared Processor Pool | [optional] |
| **user_tags** | **Array** |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SharedProcessorPool.new(
  allocated_cores: null,
  available_cores: null,
  crn: null,
  dedicated_host_id: null,
  host_group: null,
  host_id: null,
  id: null,
  name: null,
  reserved_cores: null,
  shared_processor_pool_placement_groups: null,
  status: null,
  status_detail: null,
  user_tags: null
)
```

