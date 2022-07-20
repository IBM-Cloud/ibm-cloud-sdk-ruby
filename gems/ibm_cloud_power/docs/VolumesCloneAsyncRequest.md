# IbmCloudPower::VolumesCloneAsyncRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Base name of the new cloned volume(s). Cloned Volume names will be prefixed with &#39;clone-&#39;     and suffixed with ‘-#####’ (where ##### is a 5 digit random number) If multiple volumes cloned they will be further suffixed with an incremental number starting with 1.   Example volume names using name&#x3D;\&quot;volume-abcdef\&quot;     single volume clone will be named \&quot;clone-volume-abcdef-83081\&quot;     multi volume clone will be named \&quot;clone-volume-abcdef-73721-1\&quot;, \&quot;clone-volume-abcdef-73721-2\&quot;, ...  |  |
| **volume_ids** | **Array&lt;String&gt;** | List of volumes to be cloned |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumesCloneAsyncRequest.new(
  name: null,
  volume_ids: null
)
```

