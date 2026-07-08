# IbmCloudIam::TestResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idp_id** | **String** |  | [optional] |
| **entity_tag** | **String** |  | [optional] |
| **started_at** | **Integer** |  | [optional] |
| **modified_at** | **String** |  | [optional] |
| **idp_version** | **String** |  | [optional] |
| **steps** | [**Array&lt;TestResultStepsInner&gt;**](TestResultStepsInner.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::TestResult.new(
  idp_id: null,
  entity_tag: null,
  started_at: null,
  modified_at: null,
  idp_version: null,
  steps: null
)
```

