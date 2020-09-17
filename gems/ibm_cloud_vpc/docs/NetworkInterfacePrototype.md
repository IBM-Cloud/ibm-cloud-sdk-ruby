# IbmCloudVpc::NetworkInterfacePrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The user-defined name for this network interface. If unspecified, the name will be a hyphenated list of randomly-selected words. | [optional] 
**primary_ipv4_address** | **String** | The primary IPv4 address. If specified, it must be an available address on the network interface&#39;s subnet. If unspecified, an available address on the subnet will be automatically selected. | [optional] 
**security_groups** | [**Array&lt;SecurityGroupIdentity&gt;**](SecurityGroupIdentity.md) | Collection of security groups | [optional] 
**subnet** | [**SubnetIdentity**](SubnetIdentity.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::NetworkInterfacePrototype.new(name: my-network-interface,
                                 primary_ipv4_address: 10.0.0.5,
                                 security_groups: [{&quot;id&quot;:&quot;be5df5ca-12a0-494b-907e-aa6ec2bfa271&quot;},{&quot;crn&quot;:&quot;crn:v1:bluemix:public:is:us-south:a/123456::security-group:be5df5ca-12a0-494b-907e-aa6ec2bfa271&quot;}],
                                 subnet: null)
```


