# IbmCloudPower::PeerSubnets

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **peer_subnets** | **Array&lt;String&gt;** | an array of strings containing CIDR of peer subnets | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PeerSubnets.new(
  peer_subnets: [&quot;128.170.1.0/20&quot;,&quot;128.169.1.0/24&quot;,&quot;128.168.1.0/27&quot;,&quot;128.170.1.0/32&quot;]
)
```

