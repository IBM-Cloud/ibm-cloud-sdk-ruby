# IbmCloudPower::Image

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**image_id** | **String** | Image ID | 
**name** | **String** | Image Name | 
**state** | **String** | Image State | [optional] 
**description** | **String** | Description | [optional] 
**size** | **Float** | Image Size | 
**storage_type** | **String** | Storage type for image | 
**storage_pool** | **String** | Storage pool where the image is located | 
**creation_date** | **DateTime** | Creation Date | 
**last_update_date** | **DateTime** | Last Update Date | 
**specifications** | [**ImageSpecifications**](ImageSpecifications.md) |  | [optional] 
**volumes** | [**Array&lt;ImageVolume&gt;**](ImageVolume.md) | Image Volumes | [optional] 
**servers** | **Array&lt;String&gt;** | List of Servers that have deployed the image | [optional] 
**taskref** | [**TaskReference**](TaskReference.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::Image.new(image_id: null,
                                 name: null,
                                 state: null,
                                 description: null,
                                 size: null,
                                 storage_type: null,
                                 storage_pool: null,
                                 creation_date: null,
                                 last_update_date: null,
                                 specifications: null,
                                 volumes: null,
                                 servers: null,
                                 taskref: null)
```


