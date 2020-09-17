# IbmCloudVpc::VolumeReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**crn** | **String** | The CRN for this volume | 
**href** | **String** | The URL for this volume | 
**id** | **String** | The unique identifier for this volume | 
**name** | **String** | The unique user-defined name for this volume | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VolumeReference.new(crn: crn:v1:bluemix:public:is:us-south-1:a/123456::volume:1a6b7274-678d-4dfb-8981-c71dd9d4daa5,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/volumes/1a6b7274-678d-4dfb-8981-c71dd9d4daa5,
                                 id: 1a6b7274-678d-4dfb-8981-c71dd9d4daa5,
                                 name: my-volume)
```


