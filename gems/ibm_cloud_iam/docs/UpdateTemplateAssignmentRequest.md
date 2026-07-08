# IbmCloudIam::UpdateTemplateAssignmentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_version** | **Integer** | Template version to be applied to the assignment. To retry all failed assignments, provide the existing version. To migrate to a different version, provide the new version number. |  |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::UpdateTemplateAssignmentRequest.new(
  template_version: null
)
```

