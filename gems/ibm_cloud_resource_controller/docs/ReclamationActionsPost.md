# IbmCloudResourceController::ReclamationActionsPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_by** | **String** | The request initiator, if different from the request token. | [optional] |
| **comment** | **String** | A comment to describe the action. | [optional] |

## Example

```ruby
require 'ibm_cloud_resource_controller'

instance = IbmCloudResourceController::ReclamationActionsPost.new(
  request_by: null,
  comment: null
)
```

