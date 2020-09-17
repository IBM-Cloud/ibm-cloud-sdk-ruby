# IbmCloudPower::CloudInstanceCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tenant_id** | **String** | The tenant ID that owns this cloud instance | 
**region** | **String** | The region the cloud instance lives | 
**processors** | **Float** | Number of processors allowed | 
**proc_units** | **Float** | Number of processor units allowed | 
**memory** | **Float** | Amount of memory allowed | 
**instances** | **Float** | Number of power instances allowed | [optional] 
**storage** | **Float** | Amount of storage allowed (TB) | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::CloudInstanceCreate.new(tenant_id: null,
                                 region: null,
                                 processors: null,
                                 proc_units: null,
                                 memory: null,
                                 instances: null,
                                 storage: null)
```


