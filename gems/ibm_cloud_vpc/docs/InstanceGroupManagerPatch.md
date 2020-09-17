# IbmCloudVpc::InstanceGroupManagerPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aggregation_window** | **Integer** | The time window in seconds to aggregate metrics prior to evaluation | [optional] [default to 90]
**cooldown** | **Integer** | The duration of time in seconds to pause further scale actions after scaling has taken place | [optional] [default to 300]
**management_enabled** | **Boolean** | If set to &#x60;true&#x60;, this manager will control the instance group. | [optional] [default to true]
**max_membership_count** | **Integer** | The maximum number of members in a managed instance group | [optional] 
**min_membership_count** | **Integer** | The minimum number of members in a managed instance group | [optional] [default to 1]
**name** | **String** | The user-defined name for this instance group manager. Names must be unique within the instance group. | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceGroupManagerPatch.new(aggregation_window: 120,
                                 cooldown: 210,
                                 management_enabled: null,
                                 max_membership_count: 10,
                                 min_membership_count: 10,
                                 name: my-instance-group-manager)
```


