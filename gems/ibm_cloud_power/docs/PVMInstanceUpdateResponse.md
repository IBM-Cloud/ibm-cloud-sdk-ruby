# IbmCloudPower::PVMInstanceUpdateResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_name** | **String** | Name of the server to create | [optional] 
**status_url** | **String** | URL to check for status of the operation (for now, just the URL for the GET on the server, which has status information from powervc) | [optional] 
**processors** | **Float** | Number of processors allocated | [optional] 
**proc_type** | **String** | Processor type (dedicated, shared, capped) | [optional] 
**memory** | **Float** | Amount of memory allocated (in GB) | [optional] 
**pin_policy** | [**PinPolicy**](PinPolicy.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::PVMInstanceUpdateResponse.new(server_name: null,
                                 status_url: null,
                                 processors: null,
                                 proc_type: null,
                                 memory: null,
                                 pin_policy: null)
```


