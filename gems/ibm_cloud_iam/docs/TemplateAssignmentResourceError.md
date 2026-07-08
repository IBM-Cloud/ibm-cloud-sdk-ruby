# IbmCloudIam::TemplateAssignmentResourceError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the error | [optional] |
| **error_code** | **String** | Internal error code | [optional] |
| **message** | **String** | Error message detailing the nature of the error | [optional] |
| **status_code** | **String** | Internal status code for the error | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::TemplateAssignmentResourceError.new(
  name: null,
  error_code: null,
  message: null,
  status_code: null
)
```

