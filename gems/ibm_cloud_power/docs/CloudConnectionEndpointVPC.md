# IbmCloudPower::CloudConnectionEndpointVPC

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **Boolean** | enable vpc for this cloud connection (default&#x3D;false) | [optional] 
**vpcs** | [**Array&lt;CloudConnectionVPC&gt;**](CloudConnectionVPC.md) | vpc connections | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::CloudConnectionEndpointVPC.new(enabled: null,
                                 vpcs: null)
```


