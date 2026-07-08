# IbmCloudIam::ProfileLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | the unique identifier of the link |  |
| **entity_tag** | **String** | version of the link |  |
| **created_at** | **Time** | If set contains a date time string of the creation date in ISO format. |  |
| **modified_at** | **Time** | If set contains a date time string of the last modification date in ISO format. |  |
| **name** | **String** | Optional name of the Link | [optional] |
| **cr_type** | **String** | The compute resource type. Valid values are VSI, PVS, BMS, IKS_SA, ROKS_SA, CE |  |
| **is_cross_account** | **Boolean** | Flag to indicate that the link provides cross account access. If not provided then the account scope of the CRN must match the Profile&#39;s account | [optional] |
| **link** | [**ProfileLinkLink**](ProfileLinkLink.md) |  |  |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::ProfileLink.new(
  id: null,
  entity_tag: null,
  created_at: null,
  modified_at: null,
  name: null,
  cr_type: null,
  is_cross_account: null,
  link: null
)
```

