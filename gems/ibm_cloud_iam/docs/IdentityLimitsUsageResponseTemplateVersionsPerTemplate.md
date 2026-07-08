# IbmCloudIam::IdentityLimitsUsageResponseTemplateVersionsPerTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum allowed versions per template |  |
| **templates** | [**Array&lt;TemplateCount&gt;**](TemplateCount.md) | List of templates with their version usage counts | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::IdentityLimitsUsageResponseTemplateVersionsPerTemplate.new(
  limit: null,
  templates: null
)
```

