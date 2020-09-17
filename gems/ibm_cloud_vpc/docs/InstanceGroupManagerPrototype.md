# IbmCloudVpc::InstanceGroupManagerPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**management_enabled** | **Boolean** | If set to &#x60;true&#x60;, this manager will control the instance group. | [optional] [default to true]
**name** | **String** | The user-defined name for this instance group manager. Names must be unique within the instance group. | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceGroupManagerPrototype.new(management_enabled: null,
                                 name: my-instance-group-manager)
```


