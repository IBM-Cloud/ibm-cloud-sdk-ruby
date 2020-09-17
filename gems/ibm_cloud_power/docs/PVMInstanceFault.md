# IbmCloudPower::PVMInstanceFault

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **Float** | The fault status of the server, if any | [optional] 
**details** | **String** | The fault details of the server, if any | [optional] 
**message** | **String** | The fault message of the server, if any | [optional] 
**created** | **DateTime** | The date and time the fault occurred | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::PVMInstanceFault.new(code: null,
                                 details: null,
                                 message: null,
                                 created: null)
```


