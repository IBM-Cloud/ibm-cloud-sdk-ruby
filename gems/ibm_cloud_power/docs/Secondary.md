# IbmCloudPower::Secondary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the host group to create in the secondary workspace | [optional] |
| **workspace** | **String** | ID of the workspace to share the host group with |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::Secondary.new(
  name: null,
  workspace: null
)
```

