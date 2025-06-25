# IbmCloudPower::VolumesCloneRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | Display name for the new cloned volumes. Cloned Volume names will be prefixed with &#39;clone-&#39;. If multiple volumes cloned they will be suffix with a &#39;-&#39; and an incremental number starting with 1.   Example volume names using displayName&#x3D;\&quot;volume-abcdef\&quot;     single volume clone will be named \&quot;clone-volume-abcdef\&quot;     multi volume clone will be named \&quot;clone-volume-abcdef-1\&quot;, \&quot;clone-volume-abcdef-2\&quot;, ... For multiple volume clone, the provided name will be truncated to the first 20 characters.  |  |
| **volume_ids** | **Array&lt;String&gt;** | List of volumes to be cloned |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumesCloneRequest.new(
  display_name: null,
  volume_ids: null
)
```

