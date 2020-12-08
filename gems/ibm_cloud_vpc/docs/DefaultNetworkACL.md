# IbmCloudVpc::DefaultNetworkACL

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | The date and time that the network ACL was created | 
**crn** | **String** | The CRN for this network ACL | 
**href** | **String** | The URL for this network ACL | 
**id** | **String** | The unique identifier for this network ACL | 
**name** | **String** | The name of the default network ACL created for a VPC. The name will be a hyphenated list of randomly-selected words at creation, but may be user-specified with a subsequent request. | 
**resource_group** | [**ResourceGroupReference**](ResourceGroupReference.md) | The resource group for the default network ACL for a VPC. Set to the VPC&#39;s resource group at creation. | 
**rules** | [**Array&lt;NetworkACLRuleItem&gt;**](NetworkACLRuleItem.md) | The ordered rules for the default network ACL for a VPC.  Defaults to two rules which allow all inbound and outbound traffic, respectively.  Rules for the default network ACL may be changed, added, or removed. | 
**subnets** | [**Array&lt;SubnetReference&gt;**](SubnetReference.md) | The subnets to which this network ACL is attached | 
**vpc** | [**VPCReference**](VPCReference.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::DefaultNetworkACL.new(created_at: null,
                                 crn: crn:v1:bluemix:public:is:us-south:a/123456::network-acl:a4e28308-8ee7-46ab-8108-9f881f22bdbf,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/network_acls/a4e28308-8ee7-46ab-8108-9f881f22bdbf,
                                 id: a4e28308-8ee7-46ab-8108-9f881f22bdbf,
                                 name: mnemonic-ersatz-eatery-malaise,
                                 resource_group: null,
                                 rules: null,
                                 subnets: null,
                                 vpc: null)
```


