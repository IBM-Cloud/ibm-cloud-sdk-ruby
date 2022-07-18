# IbmCloudPower::IKEPolicyCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authentication** | **String** | authentication of the IKE Policy |  |
| **dh_group** | **Integer** | DH group of the IKE Policy |  |
| **encryption** | **String** | encryption of the IKE Policy |  |
| **key_lifetime** | **Integer** | Policy key lifetime |  |
| **name** | **String** | name of the IKE Policy |  |
| **preshared_key** | **String** | Preshared key used in this IKE Policy (length of preshared key must be even) |  |
| **version** | **Integer** | version of the IKE Policy |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::IKEPolicyCreate.new(
  authentication: sha1,
  dh_group: 19,
  encryption: 3des-cbc,
  key_lifetime: 28800,
  name: ikePolicy1,
  preshared_key: null,
  version: 2
)
```

