# IbmCloudPower::PVMInstanceUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_name** | **String** | Name of the server to create | [optional] 
**processors** | **Float** | Number of processors allocated | [optional] 
**proc_type** | **String** | Processor type (dedicated, shared, capped) | [optional] 
**memory** | **Float** | Amount of memory allocated (in GB) | [optional] 
**migratable** | **Boolean** | Indicates if the server is allowed to migrate between hosts | [optional] [default to true]
**software_licenses** | [**SoftwareLicenses**](SoftwareLicenses.md) |  | [optional] 
**pin_policy** | [**PinPolicy**](PinPolicy.md) |  | [optional] 
**sap_profile_id** | **String** | If an SAP pvm-instance, the SAP profile ID to switch to (only while shutdown) | [optional] 
**virtual_cores** | [**VirtualCores**](VirtualCores.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::PVMInstanceUpdate.new(server_name: null,
                                 processors: null,
                                 proc_type: null,
                                 memory: null,
                                 migratable: null,
                                 software_licenses: null,
                                 pin_policy: null,
                                 sap_profile_id: null,
                                 virtual_cores: null)
```


