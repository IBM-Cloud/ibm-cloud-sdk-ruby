# IbmCloudPower::PodCapacity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pod_data** | [**PodData**](PodData.md) |  | [optional] |
| **storage_controllers** | [**Hash&lt;String, StorageController&gt;**](StorageController.md) | List of available storage controllers within a particular DataCenter | [optional] |
| **system_pools** | [**Hash&lt;String, SystemPoolCapacity&gt;**](SystemPoolCapacity.md) | List of available system pools within a Pod | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PodCapacity.new(
  pod_data: null,
  storage_controllers: null,
  system_pools: null
)
```

