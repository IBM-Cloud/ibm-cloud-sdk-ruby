# IbmCloudPower::CloudConnectionVirtualPrivateCloudsVirtualPrivateCloudsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **classic_access** | **Boolean** | indicates if vpc uses classic architecture |  |
| **name** | **String** | name for the vpc |  |
| **status** | **String** | status of this vpc |  |
| **vpc_id** | **String** | virtual private cloud id |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloudConnectionVirtualPrivateCloudsVirtualPrivateCloudsInner.new(
  classic_access: null,
  name: null,
  status: null,
  vpc_id: null
)
```

