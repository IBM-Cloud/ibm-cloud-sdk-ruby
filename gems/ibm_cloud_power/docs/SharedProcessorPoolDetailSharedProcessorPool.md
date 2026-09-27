# IbmCloudPower::SharedProcessorPoolDetailSharedProcessorPool

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allocated_cores** | **Float** | The number of allocated processor cores for the shared processor pool. |  |
| **available_cores** | **Float** | The number of available processor cores for the shared processor pool. |  |
| **creation_date** | **Time** | The date and time the shared processor pool was created. | [optional] |
| **crn** | **String** | The CRN for this resource | [optional] |
| **dedicated_host_id** | **String** | The unique identifier of the dedicated host where the shared processor pool resides, if applicable. | [optional] |
| **host_group** | **String** | The host group that the host belongs to. | [optional] |
| **host_id** | **Integer** | The identifier of the host where the shared processor pool resides. | [optional] |
| **id** | **String** | The unique identifier of the shared processor pool. |  |
| **name** | **String** | The name of the shared processor pool. |  |
| **reserved_cores** | **Integer** | The number of reserved processor cores for the shared processor pool. |  |
| **shared_processor_pool_placement_groups** | [**Array&lt;SharedProcessorPoolPlacementGroup&gt;**](SharedProcessorPoolPlacementGroup.md) | The list of placement groups the shared processor pool is a member of. | [optional] |
| **status** | **String** | The status of the shared processor pool. | [optional] |
| **status_detail** | **String** | Additional details about the status of the shared processor pool. | [optional] |
| **user_tags** | **Array&lt;String&gt;** | List of user tags | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SharedProcessorPoolDetailSharedProcessorPool.new(
  allocated_cores: null,
  available_cores: null,
  creation_date: null,
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

