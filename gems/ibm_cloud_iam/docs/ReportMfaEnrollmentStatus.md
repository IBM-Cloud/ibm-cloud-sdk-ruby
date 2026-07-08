# IbmCloudIam::ReportMfaEnrollmentStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_by** | **String** | IAMid of the user who triggered the report |  |
| **reference** | **String** | Unique reference used to generate the report |  |
| **report_time** | **String** | Date time at which report is generated. Date is in ISO format. |  |
| **account_id** | **String** | BSS account id of the user who triggered the report |  |
| **ims_account_id** | **String** | IMS account id of the user who triggered the report | [optional] |
| **users** | [**Array&lt;UserReportMfaEnrollmentStatus&gt;**](UserReportMfaEnrollmentStatus.md) | List of users | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::ReportMfaEnrollmentStatus.new(
  created_by: null,
  reference: null,
  report_time: null,
  account_id: null,
  ims_account_id: null,
  users: null
)
```

