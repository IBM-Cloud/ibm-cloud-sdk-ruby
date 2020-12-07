# IbmCloudPower::ImageReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**image_id** | **String** | Image ID | 
**name** | **String** | Image Name | 
**state** | **String** | Image State | 
**description** | **String** | Description | 
**storage_type** | **String** | Storage type for image | 
**creation_date** | **DateTime** | Creation Date | 
**last_update_date** | **DateTime** | Last Update Date | 
**specifications** | [**ImageSpecifications**](ImageSpecifications.md) |  | 
**href** | **String** | Link to Image resource | 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::ImageReference.new(image_id: null,
                                 name: null,
                                 state: null,
                                 description: null,
                                 storage_type: null,
                                 creation_date: null,
                                 last_update_date: null,
                                 specifications: null,
                                 href: null)
```


