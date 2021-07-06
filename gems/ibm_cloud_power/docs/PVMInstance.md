# IbmCloudPower::PVMInstance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pvm_instance_id** | **String** | PCloud PVM Instance ID | 
**server_name** | **String** | Name of the server | 
**image_id** | **String** | The ImageID used by the server | 
**processors** | **Float** | Number of processors allocated | 
**minproc** | **Float** | Minimum number of processors that can be allocated (for resize) | [optional] 
**maxproc** | **Float** | Maximum number of processors that can be allocated (for resize) | [optional] 
**proc_type** | **String** | Processor type (dedicated, shared, capped) | [default to &#39;dedicated&#39;]
**memory** | **Float** | Amount of memory allocated (in GB) | 
**minmem** | **Float** | Minimum amount of memory that can be allocated (in GB, for resize) | [optional] 
**maxmem** | **Float** | Maximum amount of memory that can be allocated (in GB, for resize) | [optional] 
**disk_size** | **Float** | Size of allocated disk (in GB) | 
**network_i_ds** | **Array&lt;String&gt;** | (deprecated - replaced by networks) List of Network IDs | 
**volume_i_ds** | **Array&lt;String&gt;** | List of volume IDs | 
**addresses** | [**Array&lt;PVMInstanceNetwork&gt;**](PVMInstanceNetwork.md) | (deprecated - replaced by networks) The list of addresses and their network information | [optional] 
**networks** | [**Array&lt;PVMInstanceNetwork&gt;**](PVMInstanceNetwork.md) | The pvm instance networks information | [optional] 
**status** | **String** | The status of the instance | 
**progress** | **Float** | The progress of an operation | [optional] 
**fault** | [**PVMInstanceFault**](PVMInstanceFault.md) |  | [optional] 
**creation_date** | **DateTime** | Date/Time of PVM creation | [optional] 
**updated_date** | **DateTime** | Date/Time of PVM last update | [optional] 
**sys_type** | **String** | System type used to host the instance | [optional] 
**health** | [**PVMInstanceHealth**](PVMInstanceHealth.md) |  | [optional] 
**migratable** | **Boolean** | whether the instance can be migrated | [optional] [default to true]
**storage_type** | **String** | Storage type where server is deployed | 
**software_licenses** | [**SoftwareLicenses**](SoftwareLicenses.md) |  | [optional] 
**srcs** | **Array&lt;Array&lt;SRC&gt;&gt;** | The pvm instance SRC lists | [optional] 
**pin_policy** | **String** | VM pinning policy to use [none, soft, hard] | [optional] 
**os_type** | **String** | Type of the OS [aix, ibmi, redhat, sles] | 
**operating_system** | **String** | OS system information (usually version and build) | [optional] 
**sap_profile** | [**SAPProfileReference**](SAPProfileReference.md) |  | [optional] 
**virtual_cores** | [**VirtualCores**](VirtualCores.md) |  | [optional] 
**placement_group** | **String** | The placement group of the server | [optional] [default to &#39;none&#39;]

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::PVMInstance.new(pvm_instance_id: null,
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
                                 network_i_ds: null,
                                 volume_i_ds: null,
                                 addresses: null,
                                 networks: null,
                                 status: null,
                                 progress: null,
                                 fault: null,
                                 creation_date: null,
                                 updated_date: null,
                                 sys_type: null,
                                 health: null,
                                 migratable: null,
                                 storage_type: null,
                                 software_licenses: null,
                                 srcs: null,
                                 pin_policy: null,
                                 os_type: null,
                                 operating_system: null,
                                 sap_profile: null,
                                 virtual_cores: null,
                                 placement_group: null)
```


