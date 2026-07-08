# IbmCloudIam::CreateServiceIdRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ID of the account the service ID belongs to. |  |
| **group_id** | **String** | ID of the group to which the service ID belongs to. If the value is not set, the service ID is bound to the default group. | [optional] |
| **name** | **String** | Name of the Service Id. The name is not checked for uniqueness. Therefore multiple names with the same value can exist. Access is done via the UUID of the Service Id. |  |
| **description** | **String** | The optional description of the Service Id. The &#39;description&#39; property is only available if a description was provided during a create of a Service Id. | [optional] |
| **unique_instance_crns** | **Array&lt;String&gt;** | Optional list of CRNs (string array) which point to the services connected to the service ID. | [optional] |
| **apikey** | [**ApiKeyInsideCreateServiceIdRequest**](ApiKeyInsideCreateServiceIdRequest.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::CreateServiceIdRequest.new(
  account_id: null,
  group_id: null,
  name: null,
  description: null,
  unique_instance_crns: null,
  apikey: null
)
```

