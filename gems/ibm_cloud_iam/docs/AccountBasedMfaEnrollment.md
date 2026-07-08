# IbmCloudIam::AccountBasedMfaEnrollment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **security_questions** | [**MfaEnrollmentTypeStatus**](MfaEnrollmentTypeStatus.md) |  |  |
| **totp** | [**MfaEnrollmentTypeStatus**](MfaEnrollmentTypeStatus.md) |  |  |
| **verisign** | [**MfaEnrollmentTypeStatus**](MfaEnrollmentTypeStatus.md) |  |  |
| **complies** | **Boolean** | The enrollment complies to the effective requirement. |  |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::AccountBasedMfaEnrollment.new(
  security_questions: null,
  totp: null,
  verisign: null,
  complies: null
)
```

