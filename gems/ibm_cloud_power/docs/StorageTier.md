# IbmCloudPower::StorageTier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description, storage tier label | [optional] |
| **name** | **String** | Name of the storage tier | [optional] |
| **state** | **String** | State of the storage tier (active or inactive) | [optional][default to &#39;active&#39;] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::StorageTier.new(
  description: null,
  name: null,
  state: null
)
```

