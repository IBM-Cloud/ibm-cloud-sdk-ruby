# IbmCloudPower::IPSecPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authentication** | [**IPSECPolicyAuthentication**](IPSECPolicyAuthentication.md) |  |  |
| **dh_group** | **Integer** | Diffie-Hellman group |  |
| **encryption** | **String** | connection encryption policy |  |
| **id** | **String** | unique identifier of the IPSec Policy |  |
| **key_lifetime** | **Integer** | Policy key lifetime |  |
| **name** | **String** | IPSec Policy name |  |
| **pfs** | **Boolean** | Perfect Forward Secrecy |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::IPSecPolicy.new(
  authentication: null,
  dh_group: 2,
  encryption: aes-256-cbc,
  id: 6edc8988-eb18-4b5c-a594-0d73d8254463,
  key_lifetime: 28800,
  name: ipSecPolicy2,
  pfs: true
)
```

