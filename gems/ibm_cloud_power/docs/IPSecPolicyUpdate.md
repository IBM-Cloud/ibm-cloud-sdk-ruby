# IbmCloudPower::IPSecPolicyUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authentication** | **String** | authentication encryption type | [optional] |
| **dh_group** | **Integer** | Diffie-Hellman group | [optional] |
| **encryption** | **String** | connection encryption policy | [optional] |
| **key_lifetime** | **Integer** | Policy key lifetime | [optional] |
| **name** | **String** | IPSec Policy name | [optional] |
| **pfs** | **Boolean** | Perfect Forward Secrecy | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::IPSecPolicyUpdate.new(
  authentication: null,
  dh_group: 2,
  encryption: 3des-cbc,
  key_lifetime: 28800,
  name: ipSecPolicy2,
  pfs: true
)
```

