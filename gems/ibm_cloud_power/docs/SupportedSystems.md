# IbmCloudPower::SupportedSystems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dedicated** | **Array&lt;String&gt;** | List of all available dedicated host types |  |
| **general** | **Array&lt;String&gt;** | List of all available host types |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SupportedSystems.new(
  dedicated: null,
  general: null
)
```

