# IbmCloudPower::SharedProcessorPoolDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **servers** | [**Array&lt;SharedProcessorPoolServer&gt;**](SharedProcessorPoolServer.md) | The list of virtual server instances (VSIs) deployed in the shared processor pool (SPP). |  |
| **shared_processor_pool** | [**SharedProcessorPoolDetailSharedProcessorPool**](SharedProcessorPoolDetailSharedProcessorPool.md) |  |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SharedProcessorPoolDetail.new(
  servers: null,
  shared_processor_pool: null
)
```

