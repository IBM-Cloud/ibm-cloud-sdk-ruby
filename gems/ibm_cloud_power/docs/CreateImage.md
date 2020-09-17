# IbmCloudPower::CreateImage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source** | **String** | Source of the image | 
**image_id** | **String** | Image ID of existing source image; required for copy image | [optional] 
**image_name** | **String** | Name to give created image; required for import image | [optional] 
**image_path** | **String** | (deprecated - replaced by region, imageFilename and bucketName) Path to image starting with service endpoint and ending with image filename | [optional] 
**region** | **String** | Cloud Storage Region; only required to access IBM Cloud Storage | [optional] 
**image_filename** | **String** | Cloud Storage image filename; required for import image | [optional] 
**bucket_name** | **String** | Cloud Storage bucket name; bucket-name[/optional/folder]; required for import image | [optional] 
**access_key** | **String** | Cloud Storage access key; required for import image | [optional] 
**secret_key** | **String** | Cloud Storage secret key; required for import image | [optional] 
**os_type** | **String** | Image OS Type, required if importing a raw image; raw images can only be imported using the command line interface | [optional] 
**disk_type** | **String** | Type of Disk | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::CreateImage.new(source: null,
                                 image_id: null,
                                 image_name: null,
                                 image_path: null,
                                 region: null,
                                 image_filename: null,
                                 bucket_name: null,
                                 access_key: null,
                                 secret_key: null,
                                 os_type: null,
                                 disk_type: null)
```


