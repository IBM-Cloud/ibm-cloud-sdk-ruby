# IbmCloudVpc::SecurityGroupReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**crn** | **String** | The security group&#39;s CRN | 
**href** | **String** | The security group&#39;s canonical URL. | 
**id** | **String** | The unique identifier for this security group | 
**name** | **String** | The user-defined name for this security group. Names must be unique within the VPC the security group resides in. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::SecurityGroupReference.new(crn: crn:v1:bluemix:public:is:us-south:a/123456::security-group:be5df5ca-12a0-494b-907e-aa6ec2bfa271,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/security_groups/be5df5ca-12a0-494b-907e-aa6ec2bfa271,
                                 id: be5df5ca-12a0-494b-907e-aa6ec2bfa271,
                                 name: my-security-group)
```


