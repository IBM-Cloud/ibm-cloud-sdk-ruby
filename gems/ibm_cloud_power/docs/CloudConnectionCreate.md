# IbmCloudPower::CloudConnectionCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | name of the cloud connection | 
**speed** | **Integer** | speed of the cloud connection (speed in megabits per second) | 
**global_routing** | **Boolean** | enable global routing for this cloud connection (default&#x3D;false) | [optional] 
**metered** | **Boolean** | enable metered for this cloud connection (default&#x3D;false) | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::CloudConnectionCreate.new(name: null,
                                 speed: null,
                                 global_routing: null,
                                 metered: null)
```


