# IbmCloudVpc::InstanceGroupManagerPolicyReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**href** | **String** | The URL for this instance group manager policy | 
**id** | **String** | The unique identifier for this instance group manager policy | 
**name** | **String** | The user-defined name for this instance group manager policy. Names must be unique within the instance group manager. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceGroupManagerPolicyReference.new(href: https://us-south.iaas.cloud.ibm.com/v1/instance_groups/dd754295-e9e0-4c9d-bf6c-58fbc59e5727/managers/4c939b00-601f-11ea-bca2-000c29475bed/policies/1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 id: 1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 name: my-instance-group-manager-policy)
```


