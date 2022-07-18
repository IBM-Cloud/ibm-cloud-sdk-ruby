# IbmCloudPower::IKEPolicyUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authentication** | **String** | authentication of the IKE Policy | [optional] |
| **dh_group** | **Integer** | DH group of the IKE Policy | [optional] |
| **encryption** | **String** | encryption of the IKE Policy | [optional] |
| **key_lifetime** | **Integer** | Policy key lifetime | [optional] |
| **name** | **String** | name of the IKE Policy | [optional] |
| **preshared_key** | **String** | Preshared key used in this IKE Policy (length of preshared key must be even) | [optional] |
| **version** | **Integer** | version of the IKE Policy | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::IKEPolicyUpdate.new(
  authentication: sha1,
  dh_group: 19,
  encryption: 3des-cbc,
  key_lifetime: 28800,
  name: ikePolicy1,
  preshared_key: null,
  version: 2
)
```

