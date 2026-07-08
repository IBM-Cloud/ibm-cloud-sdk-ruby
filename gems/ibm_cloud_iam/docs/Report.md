# IbmCloudIam::Report

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_by** | **String** | IAMid of the user who triggered the report |  |
| **reference** | **String** | Unique reference used to generate the report |  |
| **report_duration** | **String** | Duration in hours for which the report is generated. |  |
| **report_start_time** | **String** | Start time of the report |  |
| **report_end_time** | **String** | End time of the report |  |
| **users** | [**Array&lt;UserActivity&gt;**](UserActivity.md) | List of users | [optional] |
| **apikeys** | [**Array&lt;ApikeyActivity&gt;**](ApikeyActivity.md) | List of apikeys | [optional] |
| **serviceids** | [**Array&lt;EntityActivity&gt;**](EntityActivity.md) | List of serviceids | [optional] |
| **profiles** | [**Array&lt;EntityActivity&gt;**](EntityActivity.md) | List of profiles | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::Report.new(
  created_by: null,
  reference: null,
  report_duration: null,
  report_start_time: null,
  report_end_time: null,
  users: null,
  apikeys: null,
  serviceids: null,
  profiles: null
)
```

