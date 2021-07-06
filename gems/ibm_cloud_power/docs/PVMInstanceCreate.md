# IbmCloudPower::PVMInstanceCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_name** | **String** | Name of the server to create | 
**replicants** | **Float** | Number of duplicate instances to create in this request | [optional] 
**replicant_naming_scheme** | **String** | How to name the created vms | [optional] [default to &#39;suffix&#39;]
**replicant_affinity_policy** | **String** | Affinity policy for replicants being created; affinity for the same host, anti-affinity for different hosts, none for no preference | [optional] [default to &#39;none&#39;]
**image_id** | **String** | Image ID of the image to use for the server | 
**processors** | **Float** | Number of processors allocated | 
**proc_type** | **String** | Processor type (dedicated, shared, capped) | [default to &#39;dedicated&#39;]
**memory** | **Float** | Amount of memory allocated (in GB) | 
**network_i_ds** | **Array&lt;String&gt;** | (deprecated - replaced by networks) List of Network IDs | [optional] 
**networks** | [**Array&lt;PVMInstanceAddNetwork&gt;**](PVMInstanceAddNetwork.md) | The pvm instance networks information | [optional] 
**volume_i_ds** | **Array&lt;String&gt;** | List of volume IDs | [optional] 
**key_pair_name** | **String** | The name of the SSH key pair provided to the server for authenticating users (looked up in the tenant&#39;s list of keys) | [optional] 
**sys_type** | **String** | System type used to host the instance | [optional] 
**migratable** | **Boolean** | Indicates if the server is allowed to migrate between hosts | [optional] [default to true]
**user_data** | **String** | Cloud-init user-defined data. The user-defined data is made available to the VM instance as a config drive. | [optional] 
**storage_type** | **String** | Storage type for server deployment. Only valid when you deploy one of the IBM supplied **stock** images. Storage type for a custom image (an imported image or an image that is created from a VM capture) defaults to the storage type the image was created in | [optional] 
**software_licenses** | [**SoftwareLicenses**](SoftwareLicenses.md) |  | [optional] 
**pin_policy** | [**PinPolicy**](PinPolicy.md) |  | [optional] 
**virtual_cores** | [**VirtualCores**](VirtualCores.md) |  | [optional] 
**placement_group** | **String** | The placement group for the server | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::PVMInstanceCreate.new(server_name: null,
                                 replicants: null,
                                 replicant_naming_scheme: null,
                                 replicant_affinity_policy: null,
                                 image_id: null,
                                 processors: null,
                                 proc_type: null,
                                 memory: null,
                                 network_i_ds: null,
                                 networks: null,
                                 volume_i_ds: null,
                                 key_pair_name: null,
                                 sys_type: null,
                                 migratable: null,
                                 user_data: null,
                                 storage_type: null,
                                 software_licenses: null,
                                 pin_policy: null,
                                 virtual_cores: null,
                                 placement_group: null)
```


