# IbmCloudVpc::VPC

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**classic_access** | **Boolean** | Indicates whether this VPC is connected to Classic Infrastructure. If true, this VPC&#39;s resources have private network connectivity to the account&#39;s Classic Infrastructure resources. Only one VPC, per region, may be connected in this way. This value is set at creation and subsequently immutable. | 
**created_at** | **DateTime** | The date and time that the VPC was created | 
**crn** | **String** | The CRN for this VPC | 
**cse_source_ips** | [**Array&lt;VPCCSESourceIP&gt;**](VPCCSESourceIP.md) | Array of CSE ([Cloud Service Endpoint](https://cloud.ibm.com/docs/resources?topic&#x3D;resources-service-endpoints)) source IP addresses for the VPC. The VPC will have one CSE source IP address per zone. | [optional] 
**default_network_acl** | [**NetworkACLReference**](NetworkACLReference.md) |  | 
**default_security_group** | [**SecurityGroupReference**](SecurityGroupReference.md) |  | 
**href** | **String** | The URL for this VPC | 
**id** | **String** | The unique identifier for this VPC | 
**name** | **String** | The unique user-defined name for this VPC | 
**resource_group** | [**ResourceGroupReference**](ResourceGroupReference.md) |  | 
**status** | **String** | The status of this VPC | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VPC.new(classic_access: false,
                                 created_at: null,
                                 crn: crn:v1:bluemix:public:is:us-south:a/123456::vpc:4727d842-f94f-4a2d-824a-9bc9b02c523b,
                                 cse_source_ips: null,
                                 default_network_acl: null,
                                 default_security_group: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/vpcs/4727d842-f94f-4a2d-824a-9bc9b02c523b,
                                 id: 4727d842-f94f-4a2d-824a-9bc9b02c523b,
                                 name: my-vpc,
                                 resource_group: null,
                                 status: null)
```


