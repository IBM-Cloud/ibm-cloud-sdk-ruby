# IbmCloudGlobalTagging::HealthResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | **String** | Name of the microservice | [optional] |
| **version** | **String** | Version of the microservice | [optional] |
| **health** | [**Array&lt;HealthSummary&gt;**](HealthSummary.md) | Information about of microservice health | [optional] |
| **region** | **String** | Information about kubernetes cluster | [optional] |
| **timestamp** | **String** | Current timestamp | [optional] |

## Example

```ruby
require 'ibm_cloud_global_tagging'

instance = IbmCloudGlobalTagging::HealthResponse.new(
  service: null,
  version: null,
  health: null,
  region: null,
  timestamp: null
)
```

