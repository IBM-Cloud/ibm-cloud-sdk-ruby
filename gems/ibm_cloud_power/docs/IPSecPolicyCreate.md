# IbmCloudPower::IPSecPolicyCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authentication** | [**IPSECPolicyAuthentication**](IPSECPolicyAuthentication.md) |  | [optional] |
| **dh_group** | **Integer** | Diffie-Hellman group |  |
| **encryption** | **String** | connection encryption policy |  |
| **key_lifetime** | **Integer** | Policy key lifetime |  |
| **name** | **String** | IPSec Policy name |  |
| **pfs** | **Boolean** | Perfect Forward Secrecy |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::IPSecPolicyCreate.new(
  authentication: null,
  dh_group: 2,
  encryption: aes-256-cbc,
  key_lifetime: 28800,
  name: ipSecPolicy2,
  pfs: true
)
```

