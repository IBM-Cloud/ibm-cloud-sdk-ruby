# IbmCloudPower::SystemPool

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**systems** | [**Array&lt;System&gt;**](System.md) | The DataCenter list of servers and their available resources | [optional] 
**shared_core_ratio** | [**MinMaxDefault**](MinMaxDefault.md) |  | [optional] 
**max_available** | [**System**](System.md) |  | [optional] 
**capacity** | [**System**](System.md) |  | [optional] 
**max_cores_available** | [**System**](System.md) |  | [optional] 
**max_memory_available** | [**System**](System.md) |  | [optional] 
**core_memory_ratio** | **Float** | Processor to Memory (GB) Ratio | [optional] 
**type** | **String** | Type of system hardware | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::SystemPool.new(systems: null,
                                 shared_core_ratio: null,
                                 max_available: null,
                                 capacity: null,
                                 max_cores_available: null,
                                 max_memory_available: null,
                                 core_memory_ratio: null,
                                 type: null)
```


