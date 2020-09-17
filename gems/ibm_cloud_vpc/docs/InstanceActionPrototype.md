# IbmCloudVpc::InstanceActionPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**force** | **Boolean** | If set to true, the action will be forced immediately, and all queued actions deleted. Ignored for the start action. | [optional] 
**type** | **String** | The type of action | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceActionPrototype.new(force: null,
                                 type: null)
```


