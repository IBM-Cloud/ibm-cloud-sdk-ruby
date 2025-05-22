# IbmCloudPower::PvmInstanceHost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dedicated_host_id** | **String** | ID of the dedicated host where the PVM Instance is running, if applicable | [optional] |
| **id** | **Integer** | The PVM Instance Host ID (Internal Use Only) | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PvmInstanceHost.new(
  dedicated_host_id: null,
  id: null
)
```

