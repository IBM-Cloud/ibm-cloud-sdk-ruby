# IbmCloudPower::PVMInstanceOperatingSystem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of the OS [aix, ibmi, rhel, sles, vtl, rhcos] |  |
| **version** | **String** | OS system information (usually version and build) | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceOperatingSystem.new(
  type: null,
  version: null
)
```

