# IbmCloudPower::PvmInstanceDeployment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **machine_type** | **String** | Machine type used to host the instance | [optional] |
| **pin_policy** | **String** | VM pin policy to use [none, soft, hard] | [optional] |
| **processor_mode** | **String** | Processor mode (dedicated, shared, capped) | [default to &#39;dedicated&#39;] |
| **type** | **String** | Type of Deployment [SAP-RISE, EPIC] | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PvmInstanceDeployment.new(
  machine_type: null,
  pin_policy: null,
  processor_mode: null,
  type: null
)
```

