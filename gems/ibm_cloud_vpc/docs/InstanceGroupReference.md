# IbmCloudVpc::InstanceGroupReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**crn** | **String** | The CRN for this instance group | 
**deleted** | [**Deleted**](Deleted.md) |  | [optional] 
**href** | **String** | The URL for this instance group | 
**id** | **String** | The unique identifier for this instance group | 
**name** | **String** | The user-defined name for this instance group | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceGroupReference.new(crn: crn:v1:bluemix:public:is:us-south-1:a/123456::instance-group:1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 deleted: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/instance_groups/1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 id: 1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 name: my-instance-group)
```


