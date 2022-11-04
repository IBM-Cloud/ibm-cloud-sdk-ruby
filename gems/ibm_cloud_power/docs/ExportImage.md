# IbmCloudPower::ExportImage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_key** | **String** | Cloud Object Storage Access key |  |
| **bucket_name** | **String** | Cloud Object Storage Bucket name |  |
| **region** | **String** | Cloud Object Storage Region; required for IBM COS | [optional] |
| **secret_key** | **String** | Cloud Object Storage Secret key | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::ExportImage.new(
  access_key: null,
  bucket_name: null,
  region: null,
  secret_key: null
)
```

