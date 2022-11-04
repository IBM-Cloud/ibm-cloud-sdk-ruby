# IbmCloudPower::PVMInstanceUpdateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **license_repository_capacity** | **Integer** | The VTL license repository capacity TB value | [optional] |
| **memory** | **Float** | Amount of memory allocated (in GB) | [optional] |
| **pin_policy** | [**PinPolicy**](PinPolicy.md) |  | [optional] |
| **proc_type** | **String** | Processor type (dedicated, shared, capped) | [optional] |
| **processors** | **Float** | Number of processors allocated | [optional] |
| **server_name** | **String** | Name of the server to create | [optional] |
| **status_url** | **String** | URL to check for status of the operation (for now, just the URL for the GET on the server, which has status information from powervc) | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceUpdateResponse.new(
  license_repository_capacity: null,
  memory: null,
  pin_policy: null,
  proc_type: null,
  processors: null,
  server_name: null,
  status_url: null
)
```

