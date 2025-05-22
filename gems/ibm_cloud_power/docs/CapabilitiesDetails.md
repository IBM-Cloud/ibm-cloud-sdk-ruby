# IbmCloudPower::CapabilitiesDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disaster_recovery** | [**CapabilitiesDetailsDisasterRecovery**](CapabilitiesDetailsDisasterRecovery.md) |  |  |
| **supported_systems** | [**CapabilitiesDetailsSupportedSystems**](CapabilitiesDetailsSupportedSystems.md) |  |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CapabilitiesDetails.new(
  disaster_recovery: null,
  supported_systems: null
)
```

