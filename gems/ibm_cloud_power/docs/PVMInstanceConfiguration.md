# IbmCloudPower::PVMInstanceConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **console_language** | [**ConsoleLanguage**](ConsoleLanguage.md) |  | [optional] |
| **license_repository_capacity** | **Integer** | The VTL license repository capacity TB value | [optional] |
| **sap_profile** | [**SAPProfileReference**](SAPProfileReference.md) |  | [optional] |
| **software_licenses** | [**SoftwareLicenses**](SoftwareLicenses.md) |  | [optional] |
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

