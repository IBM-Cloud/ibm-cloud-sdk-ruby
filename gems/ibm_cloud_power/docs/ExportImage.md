# IbmCloudPower::ExportImage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bucket_name** | **String** | Cloud Object Storage Bucket name | 
**region** | **String** | Cloud Object Storage Region; required for IBM COS | [optional] 
**access_key** | **String** | Cloud Object Storage Access key | 
**secret_key** | **String** | Cloud Object Storage Secret key | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::ExportImage.new(bucket_name: null,
                                 region: null,
                                 access_key: null,
                                 secret_key: null)
```


