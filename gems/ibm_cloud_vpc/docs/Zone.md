# IbmCloudVpc::Zone

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**href** | **String** | The URL for this zone | 
**name** | **String** | The name for this zone | 
**region** | [**RegionReference**](RegionReference.md) |  | 
**status** | **String** | The availability status of this zone. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::Zone.new(href: https://us-south.iaas.cloud.ibm.com/v1/regions/us-south/zones/us-south-1,
                                 name: us-south-1,
                                 region: null,
                                 status: null)
```


