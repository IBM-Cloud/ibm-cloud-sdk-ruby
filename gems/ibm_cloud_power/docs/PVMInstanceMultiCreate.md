# IbmCloudPower::PVMInstanceMultiCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **affinity_policy** | **String** | Affinity policy for pvm-instances being created; affinity for the same host, anti-affinity for different hosts, none for no preference | [optional][default to &#39;none&#39;] |
| **count** | **Integer** | Number of pvm-instances to create | [optional] |
| **numerical** | **String** | Where to place the numerical number of the multi-created instance | [optional][default to &#39;suffix&#39;] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceMultiCreate.new(
  affinity_policy: null,
  count: null,
  numerical: null
)
```

