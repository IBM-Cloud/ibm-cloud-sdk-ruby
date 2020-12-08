# IbmCloudVpc::InstanceIdentity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier for this virtual server instance | 
**crn** | **String** | The CRN for this virtual server instance | 
**href** | **String** | The URL for this virtual server instance | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceIdentity.new(id: 1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 crn: crn:v1:bluemix:public:is:us-south-1:a/123456::instance:1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/instances/1e09281b-f177-46fb-baf1-bc152b2e391a)
```


