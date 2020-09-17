# IbmCloudVpc::DefaultSecurityGroup

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | The date and time that this security group was created | 
**crn** | **String** | The security group&#39;s CRN | 
**href** | **String** | The security group&#39;s canonical URL. | 
**id** | **String** | The unique identifier for this security group | 
**name** | **String** | The name of the default security group created for a VPC. The name will be a hyphenated list of randomly-selected words at creation, but may be user-specified with a subsequent request. | 
**resource_group** | [**ResourceGroupReference**](ResourceGroupReference.md) |  | 
**rules** | [**Array&lt;SecurityGroupRule&gt;**](SecurityGroupRule.md) | Array of rules for the default security group for a VPC. Defaults to allowing all outbound traffic, and allowing all inbound traffic from other interfaces in the VPC’s default security group. Rules in the default security group may be changed, added or removed. | 
**vpc** | [**VPCReference**](VPCReference.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::DefaultSecurityGroup.new(created_at: null,
                                 crn: crn:v1:bluemix:public:is:us-south:a/123456::security-group:be5df5ca-12a0-494b-907e-aa6ec2bfa271,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/security_groups/be5df5ca-12a0-494b-907e-aa6ec2bfa271,
                                 id: be5df5ca-12a0-494b-907e-aa6ec2bfa271,
                                 name: observant-chip-emphatic-engraver,
                                 resource_group: null,
                                 rules: [{&quot;direction&quot;:&quot;outbound&quot;,&quot;id&quot;:&quot;2ca703ed-3c1a-4873-aabe-ce730d279b72&quot;,&quot;ip_version&quot;:&quot;ipv4&quot;,&quot;protocol&quot;:&quot;all&quot;},{&quot;direction&quot;:&quot;inbound&quot;,&quot;id&quot;:&quot;57463014-5ef7-48ae-8b23-506a812190c8&quot;,&quot;ip_version&quot;:&quot;ipv4&quot;,&quot;protocol&quot;:&quot;all&quot;,&quot;remote&quot;:{&quot;id&quot;:&quot;be5df5ca-12a0-494b-907e-aa6ec2bfa271&quot;,&quot;name&quot;:&quot;observant-chip-emphatic-engraver&quot;}}],
                                 vpc: null)
```


