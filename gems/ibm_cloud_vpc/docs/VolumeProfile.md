# IbmCloudVpc::VolumeProfile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**family** | **String** | The product family this volume profile belongs to | [optional] 
**href** | **String** | The URL for this volume profile | 
**name** | **String** | The name for this volume profile | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VolumeProfile.new(family: tiered,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/volume/profiles/general-purpose,
                                 name: general-purpose)
```


