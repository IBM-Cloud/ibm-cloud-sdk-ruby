# IbmCloudPower::SoftwareLicenses

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ibmi_css** | **Boolean** | IBMi Cloud Storage Solution | [optional][default to false] |
| **ibmi_dbq** | **Boolean** | IBMi Cloud Storage Solution | [optional][default to false] |
| **ibmi_pha** | **Boolean** | IBMi Power High Availability IASP Management Software License | [optional][default to false] |
| **ibmi_phafsm** | **Boolean** | IBMi Power High Availability Full System Manager (FSM) Software License | [optional][default to false] |
| **ibmi_phafsm_count** | **Integer** | Number of IBMi Power High Availability Full System Manager (FSM) Managed Servers | [optional] |
| **ibmi_rds** | **Boolean** | IBMi Rational Dev Studio | [optional][default to false] |
| **ibmi_rds_users** | **Integer** | IBMi Rational Dev Studio Number of User Licenses | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SoftwareLicenses.new(
  ibmi_css: null,
  ibmi_dbq: null,
  ibmi_pha: null,
  ibmi_phafsm: null,
  ibmi_phafsm_count: null,
  ibmi_rds: null,
  ibmi_rds_users: null
)
```

