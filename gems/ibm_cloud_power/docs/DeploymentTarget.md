# IbmCloudPower::DeploymentTarget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The uuid of the host group or host |  |
| **type** | **String** | specify if deploying to a host group or a host |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::DeploymentTarget.new(
  id: null,
  type: null
)
```

