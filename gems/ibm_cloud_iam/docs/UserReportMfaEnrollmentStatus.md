# IbmCloudIam::UserReportMfaEnrollmentStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **iam_id** | **String** | IAMid of the user |  |
| **name** | **String** | Name of the user | [optional] |
| **username** | **String** | Username of the user |  |
| **email** | **String** | Email of the user | [optional] |
| **effective_mfa_type** | **String** | currently effective mfa type i.e. id_based_mfa or account_based_mfa |  |
| **id_based_mfa** | [**IdBasedMfaEnrollment**](IdBasedMfaEnrollment.md) |  |  |
| **account_based_mfa** | [**AccountBasedMfaEnrollment**](AccountBasedMfaEnrollment.md) |  |  |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::UserReportMfaEnrollmentStatus.new(
  iam_id: null,
  name: null,
  username: null,
  email: null,
  effective_mfa_type: null,
  id_based_mfa: null,
  account_based_mfa: null
)
```

