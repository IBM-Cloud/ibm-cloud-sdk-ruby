# IbmCloudIam::UpdateServiceIdRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the service ID to update. If specified in the request the parameter must not be empty. The name is not checked for uniqueness. Failure to this will result in an Error condition. | [optional] 
**description** | **String** | The description of the service ID to update. If specified an empty description will clear the description of the service ID. If an non empty value is provided the service ID will be updated. | [optional] 
**unique_instance_crns** | **Array&lt;String&gt;** | List of CRNs which point to the services connected to this service ID. If specified an empty list will clear all existing unique instance crns of the service ID. | [optional] 

## Code Sample

```ruby
require 'IbmCloudIam'

instance = IbmCloudIam::UpdateServiceIdRequest.new(name: null,
                                 description: null,
                                 unique_instance_crns: null)
```


