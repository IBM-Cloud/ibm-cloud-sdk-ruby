# IbmCloudPower::VolumeGroupCreateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the volume group |  |
| **name** | **String** | The name of the volume group |  |
| **status** | **String** | Status of the volume group |  |
| **status_detail** | **String** | Status details of the volume group | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumeGroupCreateResponse.new(
  id: null,
  name: null,
  status: null,
  status_detail: null
)
```

