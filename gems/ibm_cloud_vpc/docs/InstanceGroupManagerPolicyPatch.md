# IbmCloudVpc::InstanceGroupManagerPolicyPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metric_type** | **String** | The type of metric to be evaluated | [optional] 
**metric_value** | **Integer** | The metric value to be evaluated | [optional] 
**name** | **String** | The user-defined name for this instance group manager policy. Names must be unique within the instance group manager. | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceGroupManagerPolicyPatch.new(metric_type: null,
                                 metric_value: null,
                                 name: my-instance-group-manager-policy)
```


