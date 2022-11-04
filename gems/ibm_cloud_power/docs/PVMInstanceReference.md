# IbmCloudPower::PVMInstanceReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | [**Array&lt;PVMInstanceNetwork&gt;**](PVMInstanceNetwork.md) | (deprecated - replaced by networks) The list of addresses and their network information | [optional] |
| **console_language** | [**ConsoleLanguage**](ConsoleLanguage.md) |  | [optional] |
| **creation_date** | **Time** | Date/Time of PVM creation | [optional] |
| **disk_size** | **Float** | Size of allocated disk (in GB) |  |
| **fault** | [**PVMInstanceFault**](PVMInstanceFault.md) |  | [optional] |
| **health** | [**PVMInstanceHealth**](PVMInstanceHealth.md) |  | [optional] |
| **host_id** | **Integer** | The PVM Instance Host ID (Internal Use Only) | [optional] |
| **href** | **String** | Link to Cloud Instance resource |  |
| **image_id** | **String** | The ImageID used by the server |  |
| **license_repository_capacity** | **Integer** | The VTL license repository capacity TB value | [optional] |
| **maxmem** | **Float** | Maximum amount of memory that can be allocated (in GB, for resize) | [optional] |
| **maxproc** | **Float** | Maximum number of processors that can be allocated (for resize) | [optional] |
| **memory** | **Float** | Amount of memory allocated (in GB) |  |
| **minmem** | **Float** | Minimum amount of memory that can be allocated (in GB, for resize) | [optional] |
| **minproc** | **Float** | Minimum number of processors that can be allocated (for resize) | [optional] |
| **networks** | [**Array&lt;PVMInstanceNetwork&gt;**](PVMInstanceNetwork.md) | The list of addresses and their network information | [optional] |
| **operating_system** | **String** | OS system information (usually version and build) | [optional] |
| **os_type** | **String** | Type of the OS [aix, ibmi, rhel, sles, vtl, rhcos] |  |
| **pin_policy** | **String** | VM pinning policy to use [none, soft, hard] | [optional] |
| **placement_group** | **String** | The placement group of the server | [optional][default to &#39;none&#39;] |
| **proc_type** | **String** | Processor type (dedicated, shared, capped) | [default to &#39;dedicated&#39;] |
| **processors** | **Float** | Number of processors allocated |  |
| **progress** | **Float** | The progress of an operation | [optional] |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **sap_profile** | [**SAPProfileReference**](SAPProfileReference.md) |  | [optional] |
| **server_name** | **String** | Name of the server |  |
| **shared_processor_pool** | **String** | The shared processor pool of the server | [optional] |
| **shared_processor_pool_id** | **String** | The shared processor pool id | [optional] |
| **software_licenses** | [**SoftwareLicenses**](SoftwareLicenses.md) |  | [optional] |
| **srcs** | **Array&lt;Array&lt;SRC&gt;&gt;** | The pvm instance SRC lists | [optional] |
| **status** | **String** | The status of the instance |  |
| **storage_pool** | **String** | Storage Pool where server is deployed | [optional] |
| **storage_pool_affinity** | **Boolean** | Indicates if all volumes attached to the server must reside in the same storage pool | [optional][default to true] |
| **storage_type** | **String** | Storage type of the deployment storage pool | [optional] |
| **sys_type** | **String** | System type used to host the instance | [optional] |
| **updated_date** | **Time** | Date/Time of PVM last update | [optional] |
| **virtual_cores** | [**VirtualCores**](VirtualCores.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceReference.new(
  addresses: null,
  console_language: null,
  creation_date: null,
  disk_size: null,
  fault: null,
  health: null,
  host_id: null,
  href: null,
  image_id: null,
  license_repository_capacity: null,
  maxmem: null,
  maxproc: null,
  memory: null,
  minmem: null,
  minproc: null,
  networks: null,
  operating_system: null,
  os_type: null,
  pin_policy: null,
  placement_group: null,
  proc_type: null,
  processors: null,
  progress: null,
  pvm_instance_id: null,
  sap_profile: null,
  server_name: null,
  shared_processor_pool: null,
  shared_processor_pool_id: null,
  software_licenses: null,
  srcs: null,
  status: null,
  storage_pool: null,
  storage_pool_affinity: null,
  storage_type: null,
  sys_type: null,
  updated_date: null,
  virtual_cores: null
)
```

