# IbmCloudVpc::ImageFile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**size** | **Integer** | The size of the stored image file rounded up to the next gigabyte.  This property may be absent if the associated image has a &#x60;status&#x60; of &#x60;pending&#x60; or &#x60;failed&#x60;. | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::ImageFile.new(size: null)
```


