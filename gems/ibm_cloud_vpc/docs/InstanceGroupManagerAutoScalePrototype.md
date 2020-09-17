# IbmCloudVpc::InstanceGroupManagerAutoScalePrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aggregation_window** | **Integer** | The time window in seconds to aggregate metrics prior to evaluation | [optional] [default to 90]
**cooldown** | **Integer** | The duration of time in seconds to pause further scale actions after scaling has taken place | [optional] [default to 300]
**manager_type** | **String** | The type of instance group manager. | [default to &#39;autoscale&#39;]
**max_membership_count** | **Integer** | The maximum number of members in a managed instance group | 
**min_membership_count** | **Integer** | The minimum number of members in a managed instance group | [optional] [default to 1]

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceGroupManagerAutoScalePrototype.new(aggregation_window: 120,
                                 cooldown: 210,
                                 manager_type: null,
                                 max_membership_count: 10,
                                 min_membership_count: 10)
```


