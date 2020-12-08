# IbmCloudVpc::NetworkACL

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | The date and time that the network ACL was created | 
**crn** | **String** | The CRN for this network ACL | 
**href** | **String** | The URL for this network ACL | 
**id** | **String** | The unique identifier for this network ACL | 
**name** | **String** | The user-defined name for this network ACL | 
**resource_group** | [**ResourceGroupReference**](ResourceGroupReference.md) | The resource group for this network ACL | 
**rules** | [**Array&lt;NetworkACLRuleItem&gt;**](NetworkACLRuleItem.md) | The ordered rules for this network ACL. If no rules exist, all traffic will be denied. | 
**subnets** | [**Array&lt;SubnetReference&gt;**](SubnetReference.md) | The subnets to which this network ACL is attached | 
**vpc** | [**VPCReference**](VPCReference.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::NetworkACL.new(created_at: null,
                                 crn: crn:v1:bluemix:public:is:us-south:a/123456::network-acl:a4e28308-8ee7-46ab-8108-9f881f22bdbf,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/network_acls/a4e28308-8ee7-46ab-8108-9f881f22bdbf,
                                 id: a4e28308-8ee7-46ab-8108-9f881f22bdbf,
                                 name: my-network-acl,
                                 resource_group: null,
                                 rules: null,
                                 subnets: null,
                                 vpc: null)
```


