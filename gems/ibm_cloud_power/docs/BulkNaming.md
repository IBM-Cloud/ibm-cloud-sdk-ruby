# IbmCloudPower::BulkNaming

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_name** | **String** | Bulk naming will consist of 4 parts. The 1st part will be the prefix \&quot;clone-\&quot;. The 2nd part will be the user supplied baseName. The 3rd part is an optional user selected suffix.  The 4th and final part will be a dash (-) plus an ascending sequence number, starting with 1. If the VOLUME-NAME is selected for the 2nd part baseName, then part 4 will only be added if the volume name will not be unique. |  |
| **suffix** | **String** | Each cloned volume name may be appended by an optional suffix. A suffix can be one of; \&quot;DATE-TIME\&quot; or \&quot;5-RANDOM-DIGITS\&quot;. If DATE-TIME is specified, then the current UTC date and time will be used in the format (yyyy-mm-dd_hh-mm-ss.nnn). If 5-RANDOM-DIGITS is specified, then a random 5-digit number will be generated. | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::BulkNaming.new(
  base_name: null,
  suffix: null
)
```

