# IbmCloudPower::PVMInstanceConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **console_language** | [**ConsoleLanguage**](ConsoleLanguage.md) | Console language and code | [optional] |
| **license_repository_capacity** | **Integer** | The VTL license repository capacity TiB value | [optional] |
| **sap_profile** | [**SAPProfileReference**](SAPProfileReference.md) | If this is an SAP pvm-instance the profile reference will link to the SAP profile | [optional] |
| **software_licenses** | [**SoftwareLicenses**](SoftwareLicenses.md) | The pvm instance Software Licenses | [optional] |
| **system_reference_codes** | **Array&lt;Array&lt;SRC&gt;&gt;** | The pvm instance system reference code lists | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceConfiguration.new(
  console_language: null,
  license_repository_capacity: null,
  sap_profile: null,
  software_licenses: null,
  system_reference_codes: null
)
```

