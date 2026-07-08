# IbmCloudIam::CreateProfileLinkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Optional name of the Link | [optional] |
| **cr_type** | **String** | The compute resource type. Valid values are VSI, PVS, BMS, IKS_SA, ROKS_SA, CE |  |
| **is_cross_account** | **Boolean** | Flag to indicate that the link provides cross account access. If not provided then the account scope of the CRN must match the Profile&#39;s account | [optional] |
| **link** | [**CreateProfileLinkRequestLink**](CreateProfileLinkRequestLink.md) |  |  |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::CreateProfileLinkRequest.new(
  name: null,
  cr_type: null,
  is_cross_account: null,
  link: null
)
```

