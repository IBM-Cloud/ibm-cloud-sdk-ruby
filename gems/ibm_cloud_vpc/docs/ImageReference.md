# IbmCloudVpc::ImageReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**crn** | **String** | The CRN for this image | 
**href** | **String** | The URL for this image | 
**id** | **String** | The unique identifier for this image | 
**name** | **String** | The user-defined or system-provided name for this image | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::ImageReference.new(crn: crn:v1:bluemix:public:is:us-south:a/123456::image:72b27b5c-f4b0-48bb-b954-5becc7c1dcb8,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/images/72b27b5c-f4b0-48bb-b954-5becc7c1dcb8,
                                 id: 72b27b5c-f4b0-48bb-b954-5becc7c1dcb8,
                                 name: my-image)
```


