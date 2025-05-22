# IbmCloudPower::StorageController

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | Display Name of the Storage Controller |  |
| **health** | **String** | Health status of this storage controller |  |
| **pool_storage** | **Float** | Free storage in user pools on this storage controller (GB) |  |
| **pool_total_storage** | **Float** | Total storage capacity of user pools in this storage controller (GB) |  |
| **pools** | [**Hash&lt;String, StoragePoolCombined&gt;**](StoragePoolCombined.md) | List of storage pools within this storage controller |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::StorageController.new(
  display_name: null,
  health: null,
  pool_storage: null,
  pool_total_storage: null,
  pools: null
)
```

