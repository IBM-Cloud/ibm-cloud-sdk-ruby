# IbmCloudPower::PVMInstanceUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **license_repository_capacity** | **Integer** | The VTL license repository capacity TB value | [optional] |
| **memory** | **Float** | Amount of memory allocated (in GB) | [optional] |
| **migratable** | **Boolean** | (deprecated - replaced by pinPolicy) Indicates if the server is allowed to migrate between hosts | [optional][default to true] |
| **pin_policy** | [**PinPolicy**](PinPolicy.md) |  | [optional] |
| **proc_type** | **String** | Processor type (dedicated, shared, capped) | [optional] |
| **processors** | **Float** | Number of processors allocated | [optional] |
| **sap_profile_id** | **String** | If an SAP pvm-instance, the SAP profile ID to switch to (only while shutdown) | [optional] |
| **server_name** | **String** | Name of the server to create | [optional] |
| **software_licenses** | [**SoftwareLicenses**](SoftwareLicenses.md) |  | [optional] |
| **storage_pool_affinity** | **Boolean** | Indicates if all volumes attached to the server must reside in the same storage pool; If set to false then volumes from any storage type and pool can be attached to the PVMInstance; Impacts PVMInstance snapshot, capture, and clone, for capture and clone - only data volumes that are of the same storage type and in the same storage pool of the PVMInstance&#39;s boot volume can be included; for snapshot - all data volumes to be included in the snapshot must reside in the same storage type and pool. Once set to false, cannot be set back to true unless all volumes attached reside in the same storage type and pool. | [optional][default to true] |
| **virtual_cores** | [**VirtualCores**](VirtualCores.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceUpdate.new(
  license_repository_capacity: null,
  memory: null,
  migratable: null,
  pin_policy: null,
  proc_type: null,
  processors: null,
  sap_profile_id: null,
  server_name: null,
  software_licenses: null,
  storage_pool_affinity: null,
  virtual_cores: null
)
```

