# IbmCloudIam::CreateTemplateAssignmentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | ID of the template to assign |  |
| **template_version** | **Integer** | Version of the template to assign |  |
| **target_type** | **String** | Type of target to deploy to |  |
| **target** | **String** | Identifier of target to deploy to |  |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::CreateTemplateAssignmentRequest.new(
  template_id: null,
  template_version: null,
  target_type: null,
  target: null
)
```

