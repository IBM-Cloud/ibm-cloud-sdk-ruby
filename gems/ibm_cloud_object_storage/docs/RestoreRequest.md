# IbmCloudObjectStorage::RestoreRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**days** | **Integer** |  | [optional] 
**glacier_job_parameters** | [**GlacierJobParameters**](GlacierJobParameters.md) |  | [optional] 
**type** | [**RestoreRequestType**](RestoreRequestType.md) |  | [optional] 
**tier** | [**Tier**](Tier.md) |  | [optional] 
**description** | **String** |  | [optional] 
**output_location** | [**OutputLocation**](OutputLocation.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudObjectStorage'

instance = IbmCloudObjectStorage::RestoreRequest.new(days: null,
                                 glacier_job_parameters: null,
                                 type: null,
                                 tier: null,
                                 description: null,
                                 output_location: null)
```


