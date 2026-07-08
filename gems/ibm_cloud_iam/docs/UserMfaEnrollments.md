# IbmCloudIam::UserMfaEnrollments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **iam_id** | **String** | IAMid of the user |  |
| **effective_mfa_type** | **String** | currently effective mfa type i.e. id_based_mfa or account_based_mfa | [optional] |
| **id_based_mfa** | [**IdBasedMfaEnrollment**](IdBasedMfaEnrollment.md) |  | [optional] |
| **account_based_mfa** | [**AccountBasedMfaEnrollment**](AccountBasedMfaEnrollment.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::UserMfaEnrollments.new(
  iam_id: null,
  effective_mfa_type: null,
  id_based_mfa: null,
  account_based_mfa: null
)
```

