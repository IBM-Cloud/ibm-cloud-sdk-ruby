# IbmCloudPower::IKEPolicyUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authentication** | [**IKEPolicyAuthentication**](IKEPolicyAuthentication.md) |  | [optional] |
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
  authentication: null,
  dh_group: 2,
  encryption: aes-256-cbc,
  key_lifetime: 28800,
  name: ikePolicy1,
  preshared_key: null,
  version: 2
)
```

