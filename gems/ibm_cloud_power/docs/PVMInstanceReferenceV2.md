# IbmCloudPower::PVMInstanceReferenceV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **configuration** | [**PVMInstanceConfiguration**](PVMInstanceConfiguration.md) |  | [optional] |
| **cores** | [**PVMInstanceCores**](PVMInstanceCores.md) |  |  |
| **creation_date** | **Time** | Date/Time of PVM creation | [optional] |
| **crn** | **String** |  | [optional] |
| **deployment** | [**PvmInstanceDeployment**](PvmInstanceDeployment.md) |  |  |
| **health** | [**PVMInstanceV2Health**](PVMInstanceV2Health.md) |  | [optional] |
| **host** | [**PvmInstanceHost**](PvmInstanceHost.md) |  | [optional] |
| **href** | **String** | Link to Cloud Instance resource |  |
| **id** | **String** | PCloud PVM Instance ID |  |
| **memory** | [**PVMInstanceMemory**](PVMInstanceMemory.md) |  |  |
| **name** | **String** | Name of the server |  |
| **network_ports** | [**Array&lt;PVMInstanceV2NetworkPort&gt;**](PVMInstanceV2NetworkPort.md) | The pvm instance network ports information |  |
| **operating_system** | [**PVMInstanceOperatingSystem**](PVMInstanceOperatingSystem.md) |  |  |
| **placement_group** | [**PvmInstancePlacementGroup**](PvmInstancePlacementGroup.md) |  | [optional] |
| **status** | **String** | The status of the instance |  |
| **virtual_cores** | [**PVMInstanceVirtualCores**](PVMInstanceVirtualCores.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceReferenceV2.new(
  configuration: null,
  cores: null,
  creation_date: null,
  crn: null,
  deployment: null,
  health: null,
  host: null,
  href: null,
  id: null,
  memory: null,
  name: null,
  network_ports: null,
  operating_system: null,
  placement_group: null,
  status: null,
  virtual_cores: null
)
```

