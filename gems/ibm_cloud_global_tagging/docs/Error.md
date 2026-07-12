# IbmCloudGlobalTagging::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | A code that identifies the error. |  |
| **response** | **String** | The response received for the request. |  |
| **message** | **String** | A description of the error detected in the request. |  |
| **level** | **String** | The severity level of the error. |  |
| **description** | **String** | A description of the solution to the error. | [optional] |
| **more_info** | **String** | The location of additional information about the error. | [optional] |

## Example

```ruby
require 'ibm_cloud_global_tagging'

instance = IbmCloudGlobalTagging::Error.new(
  code: null,
  response: null,
  message: null,
  level: null,
  description: null,
  more_info: null
)
```

