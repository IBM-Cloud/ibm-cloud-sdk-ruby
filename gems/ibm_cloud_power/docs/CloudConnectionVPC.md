# IbmCloudPower::CloudConnectionVPC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vpc_id** | **String** | CRN of the specific service |  |
| **name** | **String** | vpc name | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloudConnectionVPC.new(
  vpc_id: null,
  name: null
)
```

