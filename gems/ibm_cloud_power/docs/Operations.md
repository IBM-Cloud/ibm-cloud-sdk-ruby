# IbmCloudPower::Operations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **boot_mode** | **String** | Name of the server boot mode a(Boot from disk using copy A), b(Boot from disk using copy B), c(Reserved for IBM lab use only), d(Boot from media/drives) | [optional] |
| **operating_mode** | **String** | Name of the server operating mode | [optional] |
| **task** | **String** | Name of the job task to execute | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::Operations.new(
  boot_mode: null,
  operating_mode: null,
  task: null
)
```

