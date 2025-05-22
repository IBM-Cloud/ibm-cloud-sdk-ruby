# IbmCloudPower::PVMInstance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | [**Array&lt;PVMInstanceNetwork&gt;**](PVMInstanceNetwork.md) | (deprecated - replaced by networks) The list of addresses and their network information | [optional] |
| **console_language** | [**ConsoleLanguage**](ConsoleLanguage.md) |  | [optional] |
| **creation_date** | **Time** | Date/Time of PVM creation | [optional] |
| **crn** | **String** | The CRN for this resource | [optional] |
| **dedicated_host_id** | **String** | ID of the dedicated host where the PVM Instance is running, if applicable | [optional] |
| **deployment_type** | **String** | The custom deployment type | [optional] |
| **disk_size** | **Float** | Size of allocated disk (in GB) |  |
| **fault** | [**PVMInstanceFault**](PVMInstanceFault.md) |  | [optional] |
| **health** | [**PVMInstanceHealth**](PVMInstanceHealth.md) |  | [optional] |
| **host_id** | **Integer** | The PVM Instance Host ID (Internal Use Only) | [optional] |
| **image_id** | **String** | The ImageID used by the server |  |
| **license_repository_capacity** | **Integer** | The VTL license repository capacity TB value | [optional] |
| **maxmem** | **Float** | Maximum amount of memory that can be allocated (in GB, for resize) | [optional] |
| **maxproc** | **Float** | Maximum number of processors that can be allocated (for resize) | [optional] |
| **memory** | **Float** | Amount of memory allocated (in GB) |  |
| **migratable** | **Boolean** | whether the instance can be migrated | [optional][default to true] |
| **minmem** | **Float** | Minimum amount of memory that can be allocated (in GB, for resize) | [optional] |
| **minproc** | **Float** | Minimum number of processors that can be allocated (for resize) | [optional] |
| **network_ids** | **Array&lt;String&gt;** | (deprecated - replaced by networks) List of Network IDs |  |
| **networks** | [**Array&lt;PVMInstanceNetwork&gt;**](PVMInstanceNetwork.md) | The pvm instance networks information | [optional] |
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
| **storage_connection** | **String** | The storage connection type | [optional] |
| **storage_pool** | **String** | Storage Pool where server is deployed | [optional] |
| **storage_pool_affinity** | **Boolean** | Indicates if all volumes attached to the server must reside in the same storage pool; Defaults to true when initially deploying a PVMInstance | [optional][default to true] |
| **storage_type** | **String** | Storage type where server is deployed |  |
| **sys_type** | **String** | System type used to host the instance | [optional] |
| **task_state** | **String** | Represents the task state of a virtual machine (VM). | [optional] |
| **updated_date** | **Time** | Date/Time of PVM last update | [optional] |
| **user_tags** | **Array&lt;String&gt;** | List of user tags | [optional] |
| **virtual_cores** | [**VirtualCores**](VirtualCores.md) |  | [optional] |
| **virtual_serial_number** | [**GetServerVirtualSerialNumber**](GetServerVirtualSerialNumber.md) |  | [optional] |
| **volume_ids** | **Array&lt;String&gt;** | List of volume IDs |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstance.new(
  addresses: null,
  console_language: null,
  creation_date: null,
  crn: null,
  dedicated_host_id: null,
  deployment_type: null,
  disk_size: null,
  fault: null,
  health: null,
  host_id: null,
  image_id: null,
  license_repository_capacity: null,
  maxmem: null,
  maxproc: null,
  memory: null,
  migratable: null,
  minmem: null,
  minproc: null,
  network_ids: null,
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
  storage_connection: null,
  storage_pool: null,
  storage_pool_affinity: null,
  storage_type: null,
  sys_type: null,
  task_state: null,
  updated_date: null,
  user_tags: null,
  virtual_cores: null,
  virtual_serial_number: null,
  volume_ids: null
)
```

