# IbmCloudPower::SharedProcessorPoolServer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cpus** | **Float** | The number of CPUs for the VSI. | [optional] |
| **uncapped** | **Boolean** | Indicates whether the VSI is uncapped. | [optional] |
| **availability_zone** | **String** | The availability zone of the VSI. | [optional] |
| **id** | **String** | The unique identifier of the virtual server instance (VSI). | [optional] |
| **memory** | **Integer** | The amount of memory of the VSI, in mebibytes (MiB). | [optional] |
| **name** | **String** | The name of the VSI. | [optional] |
| **status** | **String** | The status of the VSI. | [optional] |
| **vcpus** | **Integer** | The number of virtual CPUs for the VSI. | [optional] |

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

