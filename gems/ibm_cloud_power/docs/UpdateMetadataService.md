# IbmCloudPower::UpdateMetadataService

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Indicates whether the metadata service endpoint will be available to the virtual server |  |
| **force_disable** | **Boolean** | when true, allow the metadata service to be disabled while the VM is active.  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::UpdateMetadataService.new(
  enabled: null,
  force_disable: null
)
```

