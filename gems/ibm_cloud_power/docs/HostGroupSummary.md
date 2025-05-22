# IbmCloudPower::HostGroupSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access** | **String** | Whether the host group is a primary or secondary host group | [optional] |
| **href** | **String** | Link to the host group resource | [optional] |
| **name** | **String** | Name of the host group | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::HostGroupSummary.new(
  access: null,
  href: null,
  name: null
)
```

