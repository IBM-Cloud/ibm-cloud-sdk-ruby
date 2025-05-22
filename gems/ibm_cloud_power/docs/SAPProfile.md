# IbmCloudPower::SAPProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **certified** | **Boolean** | Has certification been performed on profile |  |
| **cores** | **Integer** | Amount of cores |  |
| **default_system** | **String** | System to use if not provided | [optional] |
| **full_system_profile** | **Boolean** | Requires full system for deployment | [optional] |
| **memory** | **Integer** | Amount of memory (in GB) |  |
| **profile_id** | **String** | SAP Profile ID |  |
| **saps** | **Integer** | SAP Application Performance Standard | [optional] |
| **smt_mode** | **Integer** | Required smt mode for that profile | [optional] |
| **supported_systems** | **Array&lt;String&gt;** | List of supported systems | [optional] |
| **type** | **String** | Type of profile | [default to &#39;balanced&#39;] |
| **workload_types** | **Array&lt;String&gt;** | List of supported workload types | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SAPProfile.new(
  certified: null,
  cores: null,
  default_system: null,
  full_system_profile: null,
  memory: null,
  profile_id: null,
  saps: null,
  smt_mode: null,
  supported_systems: null,
  type: null,
  workload_types: null
)
```

