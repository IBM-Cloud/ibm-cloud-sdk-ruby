# IbmCloudPower::PVMInstanceReferenceV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **configuration** | [**PVMInstanceConfiguration**](PVMInstanceConfiguration.md) | The pvm instance server configuration | [optional] |
| **cores** | [**PVMInstanceCores**](PVMInstanceCores.md) | The pvm instance cores information |  |
| **creation_date** | **Time** | Date/Time of PVM creation | [optional] |
| **crn** | **String** | The CRN for this resource | [optional] |
| **deployment** | [**PvmInstanceDeployment**](PvmInstanceDeployment.md) | The pvm instance deployment information |  |
| **health** | [**PVMInstanceV2Health**](PVMInstanceV2Health.md) |  | [optional] |
| **host** | [**PvmInstanceHost**](PvmInstanceHost.md) | The pvm instance host information | [optional] |
| **href** | **String** | Link to Cloud Instance resource |  |
| **id** | **String** | PCloud PVM Instance ID |  |
| **memory** | [**PVMInstanceMemory**](PVMInstanceMemory.md) | The pvm instance memory information |  |
| **name** | **String** | Name of the server |  |
| **network_ports** | [**Array&lt;PVMInstanceV2NetworkPort&gt;**](PVMInstanceV2NetworkPort.md) | The pvm instance network ports information |  |
| **operating_system** | [**PVMInstanceOperatingSystem**](PVMInstanceOperatingSystem.md) | The pvm instance OS system information |  |
| **placement_group** | [**PvmInstancePlacementGroup**](PvmInstancePlacementGroup.md) | The pvm instance placement group information | [optional] |
| **status** | **String** | The status of the instance |  |
| **virtual_cores** | [**PVMInstanceVirtualCores**](PVMInstanceVirtualCores.md) | The pvm instance virtual CPU information | [optional] |
| **virtual_serial_number** | [**GetServerVirtualSerialNumber**](GetServerVirtualSerialNumber.md) | Information about Virtual Serial Number assigned to the PVM Instance | [optional] |
| **vpmem_volumes** | [**Array&lt;VPMemVolumeReference&gt;**](VPMemVolumeReference.md) | List of vPMEM volumes attached to this PVM Instance | [optional] |

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
  virtual_cores: null,
  virtual_serial_number: null,
  vpmem_volumes: null
)
```

