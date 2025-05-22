# IbmCloudPower::PVMInstanceUpdateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **license_repository_capacity** | **Integer** | The VTL license repository capacity TB value | [optional] |
| **memory** | **Float** | Amount of memory allocated (in GB) | [optional] |
| **pin_policy** | [**PinPolicy**](PinPolicy.md) |  | [optional] |
| **proc_type** | **String** | Processor type (dedicated, shared, capped) | [optional] |
| **processors** | **Float** | Number of processors allocated | [optional] |
| **server_name** | **String** | Name of the server | [optional] |
| **status_url** | **String** | URL to check for status of the operation (for now, just the URL for the GET on the server, which has status information from powervc) | [optional] |
| **storage_pool_affinity** | **Boolean** | Indicates if all volumes attached to the server must reside in the same storage pool; If set to false then volumes from any storage type and pool can be attached to the PVMInstance; Impacts PVMInstance snapshot, capture, and clone, for capture and clone - only data volumes that are of the same storage type and in the same storage pool of the PVMInstance&#39;s boot volume can be included; for snapshot - all data volumes to be included in the snapshot must reside in the same storage type and pool. Once set to false, cannot be set back to true unless all volumes attached reside in the same storage type and pool. | [optional][default to true] |
| **virtual_cores** | [**VirtualCores**](VirtualCores.md) |  | [optional] |

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
  status_url: null,
  storage_pool_affinity: null,
  virtual_cores: null
)
```

