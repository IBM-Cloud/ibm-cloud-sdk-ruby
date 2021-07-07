# IbmCloudPower::CloudConnectionVirtualPrivateCloudsVirtualPrivateClouds

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**classic_access** | **Boolean** | indicates if vpc uses classic architecture | 
**vpc_id** | **String** | CRN of the specific service | 
**name** | **String** | name for the vpc | 
**status** | **String** | status of this vpc | 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::CloudConnectionVirtualPrivateCloudsVirtualPrivateClouds.new(classic_access: null,
                                 vpc_id: null,
                                 name: null,
                                 status: null)
```


