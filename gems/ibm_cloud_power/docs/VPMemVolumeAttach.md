# IbmCloudPower::VPMemVolumeAttach

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_tags** | **Array&lt;String&gt;** | List of user tags | [optional] |
| **vpmem_volumes** | [**Array&lt;VPMemVolumeCreate&gt;**](VPMemVolumeCreate.md) | Description of volumes to create |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VPMemVolumeAttach.new(
  user_tags: null,
  vpmem_volumes: null
)
```

