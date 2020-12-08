# IbmCloudVpc::SecurityGroup

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | The date and time that this security group was created | 
**crn** | **String** | The security group&#39;s CRN | 
**href** | **String** | The security group&#39;s canonical URL. | 
**id** | **String** | The unique identifier for this security group | 
**name** | **String** | The user-defined name for this security group. Names must be unique within the VPC the security group resides in. | 
**network_interfaces** | [**Array&lt;NetworkInterfaceReference&gt;**](NetworkInterfaceReference.md) | Array of references to network interfaces | 
**resource_group** | [**ResourceGroupReference**](ResourceGroupReference.md) |  | 
**rules** | [**Array&lt;SecurityGroupRule&gt;**](SecurityGroupRule.md) | Array of rules for this security group. If no rules exist, all traffic will be denied. | 
**vpc** | [**VPCReference**](VPCReference.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::SecurityGroup.new(created_at: null,
                                 crn: crn:v1:bluemix:public:is:us-south:a/123456::security-group:be5df5ca-12a0-494b-907e-aa6ec2bfa271,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/security_groups/be5df5ca-12a0-494b-907e-aa6ec2bfa271,
                                 id: be5df5ca-12a0-494b-907e-aa6ec2bfa271,
                                 name: my-security-group,
                                 network_interfaces: null,
                                 resource_group: null,
                                 rules: null,
                                 vpc: null)
```


