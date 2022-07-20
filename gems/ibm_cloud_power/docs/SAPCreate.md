# IbmCloudPower::SAPCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the sap pvm-instance |  |
| **image_id** | **String** | Image ID of the sap image to use for the server |  |
| **profile_id** | **String** | SAP Profile ID for the amount of cores and memory |  |
| **networks** | [**Array&lt;PVMInstanceAddNetwork&gt;**](PVMInstanceAddNetwork.md) | The pvm instance networks information |  |
| **volume_ids** | **Array&lt;String&gt;** | List of Volume IDs to attach to the pvm-instance on creation | [optional] |
| **storage_affinity** | [**StorageAffinity**](StorageAffinity.md) |  | [optional] |
| **storage_pool** | **String** | Storage Pool for server deployment; if provided then storageAffinity and storageType will be ignored; Only valid when you deploy one of the IBM supplied stock images. Storage type and pool for a custom image (an imported image or an image that is created from a PVMInstance capture) defaults to the storage type and pool the image was created in | [optional] |
| **storage_type** | **String** | Storage type for server deployment; will be ignored if storagePool or storageAffinityPolicy is provided; Only valid when you deploy one of the IBM supplied stock images. Storage type and pool for a custom image (an imported or an image that is created from a PVMInstance capture) defaults to the storage type and pool the image was created in | [optional] |
| **instances** | [**PVMInstanceMultiCreate**](PVMInstanceMultiCreate.md) |  | [optional] |
| **ssh_key_name** | **String** | The name of the SSH Key to provide to the server for authenticating | [optional] |
| **user_data** | **String** | Cloud-init user-defined data. The user-defined data is made available to the VM instance as a config drive. | [optional] |
| **pin_policy** | [**PinPolicy**](PinPolicy.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SAPCreate.new(
  name: null,
  image_id: null,
  profile_id: null,
  networks: null,
  volume_ids: null,
  storage_affinity: null,
  storage_pool: null,
  storage_type: null,
  instances: null,
  ssh_key_name: null,
  user_data: null,
  pin_policy: null
)
```

