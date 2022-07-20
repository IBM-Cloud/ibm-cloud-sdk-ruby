# IbmCloudPower::VolumesCloneCancel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **force** | **Boolean** | default False, Cancel will only be allowed if the status is &#39;prepared&#39;, or &#39;available&#39; True, Cancel will be allowed when the status is NOT completed, cancelling, cancelled, or failed  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumesCloneCancel.new(
  force: null
)
```

