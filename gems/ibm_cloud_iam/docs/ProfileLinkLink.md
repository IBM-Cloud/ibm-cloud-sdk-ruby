# IbmCloudIam::ProfileLinkLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **crn** | **String** | The CRN of the compute resource | [optional] |
| **namespace** | **String** | The compute resource namespace, only required if cr_type is IKS_SA or ROKS_SA | [optional] |
| **name** | **String** | Name of the compute resource, only required if cr_type is IKS_SA or ROKS_SA | [optional] |
| **component_type** | **String** | Component type of the compute resource, only required if cr_type is CE | [optional] |
| **component_name** | **String** | Component name of the compute resource, only required if cr_type is CE | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::ProfileLinkLink.new(
  crn: null,
  namespace: null,
  name: null,
  component_type: null,
  component_name: null
)
```

