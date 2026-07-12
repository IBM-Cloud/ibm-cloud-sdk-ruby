# IbmCloudGlobalTagging::HealthSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan** | **String** | plan service | [optional] |
| **status** | **String** | status service | [optional] |
| **dep_status** | **String** | status dependencies service | [optional] |
| **service_input** | **String** | service input | [optional] |
| **response_time** | **Integer** | response Time | [optional] |
| **deploy_version** | **String** | deploy version | [optional] |
| **dep_cloudant_tag_db** | **Integer** | Cloudant cluster dependencies status | [optional] |
| **service_output** | **String** | service output | [optional] |
| **dep_istio_egress** | **Integer** | Istio cluster dependencies status | [optional] |
| **dep_maintenance** | **Integer** | Maintenance status | [optional] |
| **dep_iam_xacml** | **Integer** | IAM dependency status | [optional] |
| **dep_user_mgmt** | **Integer** | User management dependency status | [optional] |

## Example

```ruby
require 'ibm_cloud_global_tagging'

instance = IbmCloudGlobalTagging::HealthSummary.new(
  plan: null,
  status: null,
  dep_status: null,
  service_input: null,
  response_time: null,
  deploy_version: null,
  dep_cloudant_tag_db: null,
  service_output: null,
  dep_istio_egress: null,
  dep_maintenance: null,
  dep_iam_xacml: null,
  dep_user_mgmt: null
)
```

