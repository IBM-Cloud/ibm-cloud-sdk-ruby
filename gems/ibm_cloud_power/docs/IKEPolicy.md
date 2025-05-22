# IbmCloudPower::IKEPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authentication** | [**IKEPolicyAuthentication**](IKEPolicyAuthentication.md) |  |  |
| **dh_group** | **Integer** | DH group of the IKE Policy |  |
| **encryption** | **String** | encryption of the IKE Policy |  |
| **id** | **String** | unique identifier of the IKE Policy object |  |
| **key_lifetime** | **Integer** | Policy key lifetime |  |
| **name** | **String** | name of the IKE Policy |  |
| **version** | **Integer** | version of the IKE Policy |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::IKEPolicy.new(
  authentication: null,
  dh_group: 2,
  encryption: aes-256-cbc,
  id: 7edc8988-eb18-4b5c-a594-0d73d8254463,
  key_lifetime: 28800,
  name: ikePolicy1,
  version: 2
)
```

