# IbmCloudVpc::InstanceGroupManager

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aggregation_window** | **Integer** | The time window in seconds to aggregate metrics prior to evaluation | [optional] [default to 90]
**cooldown** | **Integer** | The duration of time in seconds to pause further scale actions after scaling has taken place | [optional] [default to 300]
**href** | **String** | The URL for this instance group manager | 
**id** | **String** | The unique identifier for this instance group manager | 
**management_enabled** | **Boolean** | If set to &#x60;true&#x60;, this manager will control the instance group. | [default to true]
**manager_type** | **String** | The type of instance group manager. | 
**max_membership_count** | **Integer** | The maximum number of members in a managed instance group | [optional] 
**min_membership_count** | **Integer** | The minimum number of members in a managed instance group | [optional] [default to 1]
**name** | **String** | The user-defined name for this instance group manager. Names must be unique within the instance group. | 
**policies** | [**Array&lt;InstanceGroupManagerPolicyReference&gt;**](InstanceGroupManagerPolicyReference.md) | The policies of the instance group manager | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceGroupManager.new(aggregation_window: 120,
                                 cooldown: 210,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/instance_groups/1e09281b-f177-46fb-baf1-bc152b2e391a/managers/dd754295-e9e0-4c9d-bf6c-58fbc59e5727,
                                 id: 1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 management_enabled: null,
                                 manager_type: null,
                                 max_membership_count: 10,
                                 min_membership_count: 10,
                                 name: my-instance-group-manager,
                                 policies: null)
```


