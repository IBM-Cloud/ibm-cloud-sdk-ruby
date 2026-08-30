# IbmCloudResourceController::LastOperation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The last operation type of the resource instance. |  |
| **state** | **String** | The last operation state of the resoure instance. This indicates if the resource&#39;s last operation is in progress, succeeded or failed. |  |
| **sub_type** | **String** | The last operation sub type of the resoure instance. | [optional] |
| **async** | **Boolean** | A boolean that indicates if the resource is provisioned asynchronously or not. |  |
| **description** | **String** | The description of the status of last operation. |  |
| **reason_code** | **String** | Optional string that states the reason code for the last operation state change. | [optional] |
| **poll_after** | **Float** | A field which indicates the time after which the instance&#39;s last operation is to be polled. | [optional] |
| **cancelable** | **Boolean** | A boolean that indicates if the resource&#39;s last operation is cancelable or not. |  |
| **poll** | **Boolean** | A boolean that indicates if the resource broker&#39;s last operation can be polled or not. |  |

## Example

```ruby
require 'ibm_cloud_resource_controller'

instance = IbmCloudResourceController::LastOperation.new(
  type: null,
  state: null,
  sub_type: null,
  async: null,
  description: null,
  reason_code: null,
  poll_after: null,
  cancelable: null,
  poll: null
)
```

