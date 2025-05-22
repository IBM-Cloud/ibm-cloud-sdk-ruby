# IbmCloudPower::SharedProcessorPoolServer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cpus** | **Float** | The amount of cpus for the server | [optional] |
| **uncapped** | **Boolean** | Identifies if uncapped or not | [optional] |
| **availability_zone** | **String** | Availability zone for the server | [optional] |
| **id** | **String** | The server ID | [optional] |
| **memory** | **Integer** | The amount of memory for the server | [optional] |
| **name** | **String** | The server name | [optional] |
| **status** | **String** | Status of the server | [optional] |
| **vcpus** | **Integer** | The amout of vcpus for the server | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SharedProcessorPoolServer.new(
  cpus: null,
  uncapped: null,
  availability_zone: null,
  id: null,
  memory: null,
  name: null,
  status: null,
  vcpus: null
)
```

