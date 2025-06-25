# IbmCloudPower::CapabilitiesDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disaster_recovery** | [**DisasterRecovery**](DisasterRecovery.md) |  |  |
| **supported_systems** | [**SupportedSystems**](SupportedSystems.md) |  |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CapabilitiesDetails.new(
  disaster_recovery: null,
  supported_systems: null
)
```

