# IbmCloudPower::PVMInstanceReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **server_name** | **String** | Name of the server |  |
| **image_id** | **String** | The ImageID used by the server |  |
| **processors** | **Float** | Number of processors allocated |  |
| **minproc** | **Float** | Minimum number of processors that can be allocated (for resize) | [optional] |
| **maxproc** | **Float** | Maximum number of processors that can be allocated (for resize) | [optional] |
| **proc_type** | **String** | Processor type (dedicated, shared, capped) | [default to &#39;dedicated&#39;] |
| **memory** | **Float** | Amount of memory allocated (in GB) |  |
| **minmem** | **Float** | Minimum amount of memory that can be allocated (in GB, for resize) | [optional] |
| **maxmem** | **Float** | Maximum amount of memory that can be allocated (in GB, for resize) | [optional] |
| **disk_size** | **Float** | Size of allocated disk (in GB) |  |
| **addresses** | [**Array&lt;PVMInstanceNetwork&gt;**](PVMInstanceNetwork.md) | (deprecated - replaced by networks) The list of addresses and their network information | [optional] |
| **networks** | [**Array&lt;PVMInstanceNetwork&gt;**](PVMInstanceNetwork.md) | The list of addresses and their network information | [optional] |
| **status** | **String** | The status of the instance |  |
| **progress** | **Float** | The progress of an operation | [optional] |
| **fault** | [**PVMInstanceFault**](PVMInstanceFault.md) |  | [optional] |
| **creation_date** | **Time** | Date/Time of PVM creation | [optional] |
| **updated_date** | **Time** | Date/Time of PVM last update | [optional] |
| **storage_pool** | **String** | Storage Pool where server is deployed | [optional] |
| **storage_pool_affinity** | **Boolean** | Indicates if all volumes attached to the server must reside in the same storage pool | [optional][default to true] |
| **storage_type** | **String** | Storage type of the deployment storage pool | [optional] |
| **sys_type** | **String** | System type used to host the instance | [optional] |
| **health** | [**PVMInstanceHealth**](PVMInstanceHealth.md) |  | [optional] |
| **href** | **String** | Link to Cloud Instance resource |  |
| **software_licenses** | [**SoftwareLicenses**](SoftwareLicenses.md) |  | [optional] |
| **srcs** | **Array&lt;Array&lt;SRC&gt;&gt;** | The pvm instance SRC lists | [optional] |
| **pin_policy** | **String** | VM pinning policy to use [none, soft, hard] | [optional] |
| **os_type** | **String** | Type of the OS [aix, ibmi, rhel, sles] |  |
| **operating_system** | **String** | OS system information (usually version and build) | [optional] |
| **sap_profile** | [**SAPProfileReference**](SAPProfileReference.md) |  | [optional] |
| **virtual_cores** | [**VirtualCores**](VirtualCores.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceReference.new(
  pvm_instance_id: null,
  server_name: null,
  image_id: null,
  processors: null,
  minproc: null,
  maxproc: null,
  proc_type: null,
  memory: null,
  minmem: null,
  maxmem: null,
  disk_size: null,
  addresses: null,
  networks: null,
  status: null,
  progress: null,
  fault: null,
  creation_date: null,
  updated_date: null,
  storage_pool: null,
  storage_pool_affinity: null,
  storage_type: null,
  sys_type: null,
  health: null,
  href: null,
  software_licenses: null,
  srcs: null,
  pin_policy: null,
  os_type: null,
  operating_system: null,
  sap_profile: null,
  virtual_cores: null
)
```

