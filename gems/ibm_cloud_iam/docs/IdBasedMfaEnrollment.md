# IbmCloudIam::IdBasedMfaEnrollment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trait_account_default** | [**MfaOptions**](MfaOptions.md) |  |  |
| **trait_user_specific** | [**MfaOptions**](MfaOptions.md) |  | [optional] |
| **trait_effective** | [**MfaOptions**](MfaOptions.md) |  |  |
| **complies** | **Boolean** | The enrollment complies to the effective requirement. |  |
| **comply_state** | **String** | Defines comply state for the account. Valid values:   * NO - User does not comply in the given account.   * ACCOUNT- User complies in the given account, but does not comply in at least one of the other account memberships.   * CROSS_ACCOUNT - User complies in the given account and across all other account memberships.  | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::IdBasedMfaEnrollment.new(
  trait_account_default: null,
  trait_user_specific: null,
  trait_effective: null,
  complies: null,
  comply_state: null
)
```

