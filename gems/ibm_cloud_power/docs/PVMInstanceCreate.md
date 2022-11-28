# IbmCloudPower::PVMInstanceCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deployment_type** | **String** | The custom deployment type | [optional] |
| **image_id** | **String** | Image ID of the image to use for the server |  |
| **key_pair_name** | **String** | The name of the SSH key pair provided to the server for authenticating users (looked up in the tenant&#39;s list of keys) | [optional] |
| **license_repository_capacity** | **Integer** | The VTL license repository capacity TB value | [optional] |
| **memory** | **Float** | Amount of memory allocated (in GB) |  |
| **migratable** | **Boolean** | (deprecated - replaced by pinPolicy) Indicates if the server is allowed to migrate between hosts | [optional][default to true] |
| **network_ids** | **Array&lt;String&gt;** | (deprecated - replaced by networks) List of Network IDs | [optional] |
| **networks** | [**Array&lt;PVMInstanceAddNetwork&gt;**](PVMInstanceAddNetwork.md) | The pvm instance networks information | [optional] |
| **pin_policy** | [**PinPolicy**](PinPolicy.md) |  | [optional] |
| **placement_group** | **String** | The placement group for the server | [optional] |
| **proc_type** | **String** | Processor type (dedicated, shared, capped) | [default to &#39;dedicated&#39;] |
| **processors** | **Float** | Number of processors allocated |  |
| **replicant_affinity_policy** | **String** | Affinity policy for replicants being created; affinity for the same host, anti-affinity for different hosts, none for no preference | [optional][default to &#39;none&#39;] |
| **replicant_naming_scheme** | **String** | How to name the created vms | [optional][default to &#39;suffix&#39;] |
| **replicants** | **Float** | Number of duplicate instances to create in this request | [optional] |
| **server_name** | **String** | Name of the server to create |  |
| **shared_processor_pool** | **String** | The shared processor pool for server deployment | [optional] |
| **software_licenses** | [**SoftwareLicenses**](SoftwareLicenses.md) |  | [optional] |
| **storage_affinity** | [**StorageAffinity**](StorageAffinity.md) |  | [optional] |
| **storage_connection** | **String** | The storage connection type | [optional] |
| **storage_pool** | **String** | Storage Pool for server deployment; if provided then storageAffinity and storageType will be ignored; Only valid when you deploy one of the IBM supplied stock images. Storage type and pool for a custom image (an imported image or an image that is created from a PVMInstance capture) defaults to the storage type and pool the image was created in | [optional] |
| **storage_type** | **String** | Storage type for server deployment; will be ignored if storagePool or storageAffinity is provided; Only valid when you deploy one of the IBM supplied stock images. Storage type and pool for a custom image (an imported image or an image that is created from a PVMInstance capture) defaults to the storage type and pool the image was created in | [optional] |
| **sys_type** | **String** | System type used to host the instance | [optional] |
| **user_data** | **String** | Cloud init user defined data | [optional] |
| **virtual_cores** | [**VirtualCores**](VirtualCores.md) |  | [optional] |
| **volume_ids** | **Array&lt;String&gt;** | List of volume IDs | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceCreate.new(
  deployment_type: null,
  image_id: null,
  key_pair_name: null,
  license_repository_capacity: null,
  memory: null,
  migratable: null,
  network_ids: null,
  networks: null,
  pin_policy: null,
  placement_group: null,
  proc_type: null,
  processors: null,
  replicant_affinity_policy: null,
  replicant_naming_scheme: null,
  replicants: null,
  server_name: null,
  shared_processor_pool: null,
  software_licenses: null,
  storage_affinity: null,
  storage_connection: null,
  storage_pool: null,
  storage_type: null,
  sys_type: null,
  user_data: null,
  virtual_cores: null,
  volume_ids: null
)
```

