# IbmCloudPower::UpdateMetadataService

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Indicates whether the metadata service endpoint will be available to the virtual server instance. |  |
| **force_disable** | **Boolean** | When true, allow the metadata service to be disabled while the VSI is active.  | [optional] |
| **force_enable** | **Boolean** | When true, allow the metadata service to be enabled while the VSI is active. The user is responsible for manually configuring networking on the VSI after the update. Only supported on Linux VSIs.  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::UpdateMetadataService.new(
  enabled: null,
  force_disable: null,
  force_enable: null
)
```

