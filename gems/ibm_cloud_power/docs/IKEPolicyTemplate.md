# IbmCloudPower::IKEPolicyTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authentication** | **String** | ikePolicy Authentication default value |  |
| **dh_group** | **Integer** | ikePolicy DHGroup default value |  |
| **encryption** | **String** | ikePolicy Encryption default value |  |
| **key_lifetime** | **Integer** | Policy key lifetime |  |
| **version** | **Float** | ikePolicy Version default value |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::IKEPolicyTemplate.new(
  authentication: sha256,
  dh_group: 2,
  encryption: 3des-cbc,
  key_lifetime: 28800,
  version: 1
)
```

