# IbmCloudPower::PVMInstanceMultiCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **Integer** | Number of pvm-instances to create | [optional] 
**affinity_policy** | **String** | Affinity policy for pvm-instances being created; affinity for the same host, anti-affinity for different hosts, none for no preference | [optional] [default to &#39;none&#39;]
**numerical** | **String** | Where to place the numerical number of the multi-created instance | [optional] [default to &#39;suffix&#39;]

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::PVMInstanceMultiCreate.new(count: null,
                                 affinity_policy: null,
                                 numerical: null)
```


