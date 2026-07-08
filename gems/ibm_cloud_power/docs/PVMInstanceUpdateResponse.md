# IbmCloudPower::PVMInstanceUpdateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_remote_restart** | **Boolean** | if set to false, automated remote restart is disabled for the VM | [optional] |
| **default_trusted_profile** | [**UpdateTrustedProfile**](UpdateTrustedProfile.md) | default IAM trusted profile to use for this virtual server instance | [optional] |
| **license_repository_capacity** | **Integer** | The VTL license repository capacity TiB value | [optional] |
| **memory** | **Float** | Amount of memory allocated (in GiB) | [optional] |
| **metadata_service** | [**UpdateMetadataService**](UpdateMetadataService.md) | The metadata service configuration | [optional] |
| **pin_policy** | [**PinPolicy**](PinPolicy.md) |  | [optional] |
| **preferred_processor_compatibility_mode** | **String** | Preferred processor compatibility mode | [optional] |
| **proc_type** | **String** | Processor type (dedicated, shared, capped) | [optional] |
| **processors** | **Float** | Number of processors allocated | [optional] |
| **server_name** | **String** | Name of the server | [optional] |
| **status_url** | **String** | URL to check for status of the operation (for now, just the URL for the GET on the server, which has status information) | [optional] |
| **storage_pool_affinity** | **Boolean** | Indicates if all volumes attached to the server must reside in the same storage pool; If set to false then volumes from any storage type and pool can be attached to the PVMInstance; Impacts PVMInstance snapshot, capture, and clone, for capture and clone - only data volumes that are of the same storage type and in the same storage pool of the PVMInstance&#39;s boot volume can be included; for snapshot - all data volumes to be included in the snapshot must reside in the same storage type and pool. Once set to false, cannot be set back to true unless all volumes attached reside in the same storage type and pool. | [optional][default to true] |
| **virtual_cores** | [**VirtualCores**](VirtualCores.md) | The pvm instance virtual CPU information | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceUpdateResponse.new(
  allow_remote_restart: null,
  default_trusted_profile: null,
  license_repository_capacity: null,
  memory: null,
  metadata_service: null,
  pin_policy: null,
  preferred_processor_compatibility_mode: null,
  proc_type: null,
  processors: null,
  server_name: null,
  status_url: null,
  storage_pool_affinity: null,
  virtual_cores: null
)
```

