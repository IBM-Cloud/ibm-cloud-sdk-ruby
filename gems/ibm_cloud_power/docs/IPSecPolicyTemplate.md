# IbmCloudPower::IPSecPolicyTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authentication** | **String** | ipSecPolicy Authentication default value |  |
| **dh_group** | **Integer** | ipSecPolicy DHGroup default value |  |
| **encryption** | **String** | ipSecPolicy Encryption default value |  |
| **key_lifetime** | **Integer** | Policy key lifetime |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::IPSecPolicyTemplate.new(
  authentication: sha256,
  dh_group: 2,
  encryption: 3des-cbc,
  key_lifetime: 28800
)
```

