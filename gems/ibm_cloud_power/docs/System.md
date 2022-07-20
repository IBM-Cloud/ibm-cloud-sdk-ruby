# IbmCloudPower::System

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cores** | **Float** | The host available Processor units |  |
| **id** | **Integer** | The host identifier | [optional] |
| **memory** | **Integer** | The host available RAM memory in GiB |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::System.new(
  cores: null,
  id: null,
  memory: null
)
```

