# IbmCloudPower::SAPProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **certified** | **Boolean** | Has certification been performed on profile |  |
| **cores** | **Integer** | Amount of cores |  |
| **memory** | **Integer** | Amount of memory (in GB) |  |
| **profile_id** | **String** | SAP Profile ID |  |
| **type** | **String** | Type of profile | [default to &#39;balanced&#39;] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SAPProfile.new(
  certified: null,
  cores: null,
  memory: null,
  profile_id: null,
  type: null
)
```

