# IbmCloudPower::PVMInstanceCapture

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capture_destination** | **String** | Destination for the deployable image | [default to &#39;cloud-storage&#39;] |
| **capture_name** | **String** | Name of the deployable image created for the captured PVMInstance |  |
| **capture_volume_ids** | **Array&lt;String&gt;** | List of Data volume IDs to include in the captured PVMInstance | [optional] |
| **cloud_storage_access_key** | **String** | Cloud Storage Access key | [optional] |
| **cloud_storage_image_path** | **String** | Cloud Storage Image Path (bucket-name [/folder/../..]) | [optional] |
| **cloud_storage_region** | **String** | Cloud Storage Region | [optional] |
| **cloud_storage_secret_key** | **String** | Cloud Storage Secret key | [optional] |
| **user_tags** | **Array** |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceCapture.new(
  capture_destination: null,
  capture_name: null,
  capture_volume_ids: null,
  cloud_storage_access_key: null,
  cloud_storage_image_path: null,
  cloud_storage_region: null,
  cloud_storage_secret_key: null,
  user_tags: null
)
```

