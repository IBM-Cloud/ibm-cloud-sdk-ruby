# IbmCloudPower::PVMInstanceOperation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operation_type** | **String** | Name of the operation to execute; can be job or boot | 
**operation** | [**Operations**](Operations.md) |  | 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::PVMInstanceOperation.new(operation_type: null,
                                 operation: null)
```


