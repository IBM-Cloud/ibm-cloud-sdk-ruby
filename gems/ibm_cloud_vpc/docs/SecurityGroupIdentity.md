# IbmCloudVpc::SecurityGroupIdentity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier for this security group | 
**crn** | **String** | The security group&#39;s CRN | 
**href** | **String** | The security group&#39;s canonical URL. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::SecurityGroupIdentity.new(id: be5df5ca-12a0-494b-907e-aa6ec2bfa271,
                                 crn: crn:v1:bluemix:public:is:us-south:a/123456::security-group:be5df5ca-12a0-494b-907e-aa6ec2bfa271,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/security_groups/be5df5ca-12a0-494b-907e-aa6ec2bfa271)
```


