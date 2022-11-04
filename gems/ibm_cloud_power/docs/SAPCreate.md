# IbmCloudPower::SAPCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deployment_type** | **String** | Custom SAP Deployment Type Information (For Internal Use Only) | [optional] |
| **image_id** | **String** | Image ID of the sap image to use for the server |  |
| **instances** | [**PVMInstanceMultiCreate**](PVMInstanceMultiCreate.md) |  | [optional] |
| **name** | **String** | Name of the sap pvm-instance |  |
| **networks** | [**Array&lt;PVMInstanceAddNetwork&gt;**](PVMInstanceAddNetwork.md) | The pvm instance networks information |  |
| **pin_policy** | [**PinPolicy**](PinPolicy.md) |  | [optional] |
| **placement_group** | **String** | The placement group for the server | [optional] |
| **profile_id** | **String** | SAP Profile ID for the amount of cores and memory |  |
| **ssh_key_name** | **String** | The name of the SSH Key to provide to the server for authenticating | [optional] |
| **storage_affinity** | [**StorageAffinity**](StorageAffinity.md) |  | [optional] |
| **storage_pool** | **String** | Storage Pool for server deployment; if provided then storageAffinity and storageType will be ignored; Only valid when you deploy one of the IBM supplied stock images. Storage type and pool for a custom image (an imported image or an image that is created from a PVMInstance capture) defaults to the storage type and pool the image was created in | [optional] |
| **storage_type** | **String** | Storage type for server deployment; will be ignored if storagePool or storageAffinity is provided; Only valid when you deploy one of the IBM supplied stock images. Storage type and pool for a custom image (an imported image or an image that is created from a PVMInstance capture) defaults to the storage type and pool the image was created in | [optional] |
| **sys_type** | **String** | System type used to host the instance. Only e880, e980, e1080 are supported | [optional] |
| **user_data** | **String** | Cloud init user defined data | [optional] |
| **volume_ids** | **Array&lt;String&gt;** | List of Volume IDs to attach to the pvm-instance on creation | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SAPCreate.new(
  deployment_type: null,
  image_id: null,
  instances: null,
  name: null,
  networks: null,
  pin_policy: null,
  placement_group: null,
  profile_id: null,
  ssh_key_name: null,
  storage_affinity: null,
  storage_pool: null,
  storage_type: null,
  sys_type: null,
  user_data: null,
  volume_ids: null
)
```

