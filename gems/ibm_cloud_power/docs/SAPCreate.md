# IbmCloudPower::SAPCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_remote_restart** | **Boolean** | if set to false, automated remote restart is disabled for the VM | [optional][default to true] |
| **default_trusted_profile** | [**TrustedProfile**](TrustedProfile.md) | default IAM trusted profile to use for this virtual server instance | [optional] |
| **deployment_target** | [**DeploymentTarget**](DeploymentTarget.md) | The deployment of a dedicated host | [optional] |
| **deployment_type** | **String** | Custom SAP Deployment Type Information (For Internal Use Only) | [optional] |
| **image_id** | **String** | Image ID of the sap image to use for the server |  |
| **instances** | [**PVMInstanceMultiCreate**](PVMInstanceMultiCreate.md) |  | [optional] |
| **metadata_service** | [**MetadataService**](MetadataService.md) | The metadata service configuration | [optional] |
| **name** | **String** | Name of the sap pvm-instance |  |
| **networks** | [**Array&lt;PVMInstanceAddNetwork&gt;**](PVMInstanceAddNetwork.md) | The pvm instance networks information |  |
| **pin_policy** | [**PinPolicy**](PinPolicy.md) |  | [optional] |
| **placement_group** | **String** | The placement group for the server | [optional] |
| **preferred_processor_compatibility_mode** | **String** | Preferred processor compatibility mode | [optional] |
| **profile_id** | **String** | SAP Profile ID for the amount of cores and memory |  |
| **ssh_key_name** | **String** | The name of the SSH Key to provide to the server for authenticating | [optional] |
| **storage_affinity** | [**StorageAffinity**](StorageAffinity.md) | The storage affinity data; ignored if storagePool is provided; Only valid when you deploy one of the IBM supplied stock images. Storage pool for a custom image (an imported image or an image that is created from a PVMInstance capture) defaults to the storage pool the image was created in | [optional] |
| **storage_pool** | **String** | Storage Pool for server deployment; if provided then storageAffinity and storageType will be ignored; Only valid when you deploy one of the IBM supplied stock images. Storage pool for a custom image (an imported image or an image that is created from a PVMInstance capture) defaults to the storage pool the image was created in | [optional] |
| **storage_pool_affinity** | **Boolean** | Indicates if all volumes attached to the server must reside in the same storage pool; Defaults to true when initially deploying a PVMInstance | [optional][default to true] |
| **storage_type** | **String** | Storage type for server deployment; if storageType is not provided the storage type will default to &#39;tier3&#39;. | [optional] |
| **sys_type** | **String** | System type used to host the instance. Only e980, s1022, e1050, e1080, s1122, e1150, and e1180 are supported | [optional] |
| **user_data** | **String** | Cloud init user defined data; For FLS, only cloud-config user-data is supported and data must not be compressed or exceed 63K | [optional] |
| **user_tags** | **Array&lt;String&gt;** | List of user tags | [optional] |
| **volume_ids** | **Array&lt;String&gt;** | List of Volume IDs to attach to the pvm-instance on creation | [optional] |
| **vpmem_volumes** | [**Array&lt;VPMemVolumeCreate&gt;**](VPMemVolumeCreate.md) | The vPMEM volumes information. Only one volume is supported at this time. | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SAPCreate.new(
  allow_remote_restart: null,
  default_trusted_profile: null,
  deployment_target: null,
  deployment_type: null,
  image_id: null,
  instances: null,
  metadata_service: null,
  name: null,
  networks: null,
  pin_policy: null,
  placement_group: null,
  preferred_processor_compatibility_mode: null,
  profile_id: null,
  ssh_key_name: null,
  storage_affinity: null,
  storage_pool: null,
  storage_pool_affinity: null,
  storage_type: null,
  sys_type: null,
  user_data: null,
  user_tags: null,
  volume_ids: null,
  vpmem_volumes: null
)
```

