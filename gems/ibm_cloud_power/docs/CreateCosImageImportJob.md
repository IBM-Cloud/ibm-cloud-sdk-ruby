# IbmCloudPower::CreateCosImageImportJob

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_key** | **String** | Cloud Object Storage access key; required for buckets with private access | [optional] |
| **bucket_access** | **String** | indicates if the bucket has public or private access public access require no authentication keys private access requires hmac authentication keys (access,secret) | [optional][default to &#39;private&#39;] |
| **bucket_name** | **String** | Cloud Object Storage bucket name; bucket-name[/optional/folder] |  |
| **image_filename** | **String** | Cloud Object Storage image filename |  |
| **image_name** | **String** | Name for the image that will be loaded into the boot image catalog |  |
| **os_type** | **String** | Image OS Type, required if importing a raw image; raw images can only be imported using the command line interface | [optional] |
| **region** | **String** | Cloud Object Storage region |  |
| **secret_key** | **String** | Cloud Object Storage secret key; required for buckets with private access | [optional] |
| **storage_affinity** | [**StorageAffinity**](StorageAffinity.md) |  | [optional] |
| **storage_pool** | **String** | Storage pool where the image will be loaded, if provided then storageType and storageAffinity will be ignored | [optional] |
| **storage_type** | **String** | Type of storage; will be ignored if storagePool or storageAffinity is provided. If only using storageType for storage selection then the storage pool with the most available space will be selected | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CreateCosImageImportJob.new(
  access_key: null,
  bucket_access: null,
  bucket_name: null,
  image_filename: null,
  image_name: null,
  os_type: null,
  region: null,
  secret_key: null,
  storage_affinity: null,
  storage_pool: null,
  storage_type: null
)
```

