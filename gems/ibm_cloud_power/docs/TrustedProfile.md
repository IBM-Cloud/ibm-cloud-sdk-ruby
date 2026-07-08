# IbmCloudPower::TrustedProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **autolink** | **Boolean** | If set to true, the system will create a link to the specified trusted profile during server creation. Regardless of whether a link is created by the system or manually using the IAM Identity service, it will be automatically deleted when the server is deleted. | [optional][default to true] |
| **target** | [**TargetTrustedProfile**](TargetTrustedProfile.md) | Either the ID or the CRN must be set in the target, but only one can be specified at a time. |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::TrustedProfile.new(
  autolink: null,
  target: null
)
```

