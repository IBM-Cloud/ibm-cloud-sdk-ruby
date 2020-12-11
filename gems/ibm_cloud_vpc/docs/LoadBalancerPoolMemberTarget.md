# IbmCloudVpc::LoadBalancerPoolMemberTarget

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**crn** | **String** | The CRN for this virtual server instance | 
**deleted** | [**Deleted**](Deleted.md) |  | [optional] 
**href** | **String** | The URL for this virtual server instance | 
**id** | **String** | The unique identifier for this virtual server instance | 
**name** | **String** | The user-defined name for this virtual server instance (and default system hostname) | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerPoolMemberTarget.new(crn: crn:v1:bluemix:public:is:us-south-1:a/123456::instance:1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 deleted: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/instances/1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 id: 1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 name: my-instance)
```


