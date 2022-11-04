# IbmCloudPower::SharedProcessorPoolDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **servers** | [**Array&lt;SharedProcessorPoolServer&gt;**](SharedProcessorPoolServer.md) | list of servers deployed in the Shared Processor Pool |  |
| **shared_processor_pool** | [**SharedProcessorPool**](SharedProcessorPool.md) |  |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SharedProcessorPoolDetail.new(
  servers: null,
  shared_processor_pool: null
)
```

