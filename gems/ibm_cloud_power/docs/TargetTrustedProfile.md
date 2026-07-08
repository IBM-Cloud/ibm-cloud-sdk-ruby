# IbmCloudPower::TargetTrustedProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **crn** | **String** | The CRN for the trusted profile | [optional] |
| **id** | **String** | Unique identifier for the trusted profile | [optional] |
| **name** | **String** | name of the trusted profile (requires the trusted profile read IAM action when used with autolink) | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::TargetTrustedProfile.new(
  crn: null,
  id: null,
  name: null
)
```

