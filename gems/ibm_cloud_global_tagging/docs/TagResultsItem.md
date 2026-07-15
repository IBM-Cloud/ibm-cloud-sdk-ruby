# IbmCloudGlobalTagging::TagResultsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** | The CRN or IMS ID of the resource |  |
| **is_error** | **Boolean** | It is &#x60;true&#x60; if the operation exits with an error. | [optional] |
| **message** | **String** | Error message returned when the operation fails | [optional] |

## Example

```ruby
require 'ibm_cloud_global_tagging'

instance = IbmCloudGlobalTagging::TagResultsItem.new(
  resource_id: null,
  is_error: null,
  message: null
)
```

