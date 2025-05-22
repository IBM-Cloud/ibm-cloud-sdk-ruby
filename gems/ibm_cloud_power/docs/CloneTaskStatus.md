# IbmCloudPower::CloneTaskStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloned_volumes** | [**Array&lt;ClonedVolume&gt;**](ClonedVolume.md) | List of cloned volumes created from the clone volumes task | [optional] |
| **failed_reason** | **String** | The reason the clone volumes task has failed | [optional] |
| **percent_complete** | **Integer** | Snapshot completion percentage |  |
| **status** | **String** | Status of the clone volumes task |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloneTaskStatus.new(
  cloned_volumes: null,
  failed_reason: null,
  percent_complete: null,
  status: null
)
```

