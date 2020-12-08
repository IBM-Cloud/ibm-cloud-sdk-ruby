# IbmCloudVpc::NetworkInterface

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_ip_spoofing** | **Boolean** | Indicates whether IP spoofing is allowed on this interface. If false, IP spoofing is prevented on this interface. If true, IP spoofing is allowed on this interface. | [default to false]
**created_at** | **DateTime** | The date and time that the network interface was created | 
**floating_ips** | [**Array&lt;FloatingIPReference&gt;**](FloatingIPReference.md) | Array of references to floating IPs associated with this network interface | [optional] 
**href** | **String** | The URL for this network interface | 
**id** | **String** | The unique identifier for this network interface | 
**name** | **String** | The user-defined name for this network interface | 
**port_speed** | **Integer** | The network interface port speed in Mbps | 
**primary_ipv4_address** | **String** | The primary IPv4 address | 
**resource_type** | **String** | The resource type | 
**security_groups** | [**Array&lt;SecurityGroupReference&gt;**](SecurityGroupReference.md) | Collection of security groups | 
**status** | **String** | The status of the network interface | 
**subnet** | [**SubnetReference**](SubnetReference.md) |  | 
**type** | **String** | The type of this network interface as it relates to an instance | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::NetworkInterface.new(allow_ip_spoofing: true,
                                 created_at: null,
                                 floating_ips: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/instances/1e09281b-f177-46fb-baf1-bc152b2e391a/network_interfaces/10c02d81-0ecb-4dc5-897d-28392913b81e,
                                 id: 10c02d81-0ecb-4dc5-897d-28392913b81e,
                                 name: my-network-interface,
                                 port_speed: 1000,
                                 primary_ipv4_address: 192.168.3.4,
                                 resource_type: null,
                                 security_groups: null,
                                 status: available,
                                 subnet: null,
                                 type: primary)
```


