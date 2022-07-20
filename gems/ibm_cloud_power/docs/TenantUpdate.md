# IbmCloudPower::TenantUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **icn** | **String** | IBM Customer Number | [optional] |
| **peering_networks** | [**Array&lt;PeeringNetwork&gt;**](PeeringNetwork.md) | Peering Network Information (optional) | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::TenantUpdate.new(
  icn: null,
  peering_networks: null
)
```

