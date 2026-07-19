# IbmCloudResourceController::Credentials

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **redacted** | **String** | If present, the user doesn&#39;t have the correct access to view the credentials and the details are redacted.  The string value identifies the level of access that&#39;s required to view the credential. For additional information, see [viewing a credential](https://cloud.ibm.com/docs/account?topic&#x3D;account-service_credentials&amp;interface&#x3D;ui#viewing-credentials-ui). | [optional] |
| **apikey** | **String** | The API key for the credentials. | [optional] |
| **iam_apikey_description** | **String** | The optional description of the API key. | [optional] |
| **iam_apikey_name** | **String** | The name of the API key. | [optional] |
| **iam_role_crn** | **String** | The CRN for the role of the credentials. | [optional] |
| **iam_serviceid_crn** | **String** | The CRN for the service ID of the credentials. | [optional] |

## Example

```ruby
require 'ibm_cloud_resource_controller'

instance = IbmCloudResourceController::Credentials.new(
  redacted: null,
  apikey: null,
  iam_apikey_description: null,
  iam_apikey_name: null,
  iam_role_crn: null,
  iam_serviceid_crn: null
)
```

