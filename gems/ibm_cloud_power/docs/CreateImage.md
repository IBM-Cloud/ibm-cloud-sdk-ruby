# IbmCloudPower::CreateImage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | **String** | Source of the image. The root-project value is used to import an available stock image into a PCloud instance image catalog. The url value is used to import a custom image from a Cloud storage account into a PCloud instance image catalog. |  |
| **image_id** | **String** | Image ID of existing stock image; required for copy image | [optional] |
| **image_name** | **String** | Name to specify a custom image that is imported from Cloud Object Storage. You must not use this property when you import an available stock image. Stock image names cannot be changed. | [optional] |
| **image_path** | **String** | (deprecated - replaced by region, imageFilename and bucketName) Path to image starting with service endpoint and ending with image filename | [optional] |
| **region** | **String** | Cloud Storage Region; only required to access IBM Cloud Storage | [optional] |
| **image_filename** | **String** | Cloud Storage image filename; required for import image | [optional] |
| **bucket_name** | **String** | Cloud Storage bucket name; bucket-name[/optional/folder]; required for import image | [optional] |
| **access_key** | **String** | Cloud Storage access key; required for import image | [optional] |
| **secret_key** | **String** | Cloud Storage secret key; required for import image | [optional] |
| **os_type** | **String** | Image OS Type, required if importing a raw image; raw images can only be imported using the command line interface | [optional] |
| **storage_affinity** | [**StorageAffinity**](StorageAffinity.md) |  | [optional] |
| **storage_pool** | **String** | Storage pool where the image will be loaded; if provided then storageAffinity and diskType will be ignored; Used only when importing an image from cloud storage. | [optional] |
| **disk_type** | **String** | Type of Disk; will be ignored if storagePool or affinityPolicy is provided; Used only when importing an image from cloud storage. | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CreateImage.new(
  source: null,
  image_id: null,
  image_name: null,
  image_path: null,
  region: null,
  image_filename: null,
  bucket_name: null,
  access_key: null,
  secret_key: null,
  os_type: null,
  storage_affinity: null,
  storage_pool: null,
  disk_type: null
)
```

