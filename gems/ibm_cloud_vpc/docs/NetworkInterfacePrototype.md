# IbmCloudVpc::NetworkInterfacePrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_ip_spoofing** | **Boolean** | Indicates whether IP spoofing is allowed on this interface. If false, IP spoofing is prevented on this interface. If true, IP spoofing is allowed on this interface. | [optional] [default to false]
**name** | **String** | The user-defined name for this network interface. If unspecified, the name will be a hyphenated list of randomly-selected words. | [optional] 
**primary_ipv4_address** | **String** |  | [optional] 
**security_groups** | [**Array&lt;SecurityGroupIdentity&gt;**](SecurityGroupIdentity.md) | Collection of security groups | [optional] 
**subnet** | [**SubnetIdentity**](SubnetIdentity.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::NetworkInterfacePrototype.new(allow_ip_spoofing: true,
                                 name: my-network-interface,
                                 primary_ipv4_address: null,
                                 security_groups: [{&quot;id&quot;:&quot;be5df5ca-12a0-494b-907e-aa6ec2bfa271&quot;},{&quot;crn&quot;:&quot;crn:v1:bluemix:public:is:us-south:a/123456::security-group:be5df5ca-12a0-494b-907e-aa6ec2bfa271&quot;}],
                                 subnet: null)
```


