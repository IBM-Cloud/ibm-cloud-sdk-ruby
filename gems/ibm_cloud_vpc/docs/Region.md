# IbmCloudVpc::Region

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**endpoint** | **String** | The API endpoint for this region. | 
**href** | **String** | The URL for this region | 
**name** | **String** | The name for this region | 
**status** | **String** | The availability status of this region | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::Region.new(endpoint: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/regions/us-south,
                                 name: us-south,
                                 status: null)
```


