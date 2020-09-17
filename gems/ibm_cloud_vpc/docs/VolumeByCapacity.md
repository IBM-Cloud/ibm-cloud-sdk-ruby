# IbmCloudVpc::VolumeByCapacity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**capacity** | **Integer** | The capacity of the volume in gigabytes. Note that the specified minimum and maximum capacity values for creating or updating volumes may expand in the future. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VolumeByCapacity.new(capacity: 100)
```


