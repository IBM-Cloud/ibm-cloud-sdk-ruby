# IbmCloudVpc::InstanceTemplateReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**crn** | **String** | The CRN for this instance template | 
**href** | **String** | The URL for this instance template | 
**id** | **String** | The unique identifier for this instance template | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceTemplateReference.new(crn: crn:v1:bluemix:public:is:us-south-1:a/123456::instance-template:1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/instance/templates/1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 id: a6b1a881-2ce8-41a3-80fc-36316a73f803)
```


