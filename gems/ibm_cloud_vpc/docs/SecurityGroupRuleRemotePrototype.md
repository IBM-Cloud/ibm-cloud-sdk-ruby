# IbmCloudVpc::SecurityGroupRuleRemotePrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **String** | The IP address. This property may add support for IPv6 addresses in the future. When processing a value in this property, verify that the address is in an expected format. If it is not, log an error. Optionally halt processing and surface the error, or bypass the resource on which the unexpected IP address format was encountered. | 
**cidr_block** | **String** | The CIDR block. This property may add support for IPv6 CIDR blocks in the future. When processing a value in this property, verify that the CIDR block is in an expected format. If it is not, log an error. Optionally halt processing and surface the error, or bypass the resource on which the unexpected CIDR block format was encountered. | 
**id** | **String** | The unique identifier for this security group | 
**crn** | **String** | The security group&#39;s CRN | 
**href** | **String** | The security group&#39;s canonical URL. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::SecurityGroupRuleRemotePrototype.new(address: null,
                                 cidr_block: null,
                                 id: be5df5ca-12a0-494b-907e-aa6ec2bfa271,
                                 crn: crn:v1:bluemix:public:is:us-south:a/123456::security-group:be5df5ca-12a0-494b-907e-aa6ec2bfa271,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/security_groups/be5df5ca-12a0-494b-907e-aa6ec2bfa271)
```


