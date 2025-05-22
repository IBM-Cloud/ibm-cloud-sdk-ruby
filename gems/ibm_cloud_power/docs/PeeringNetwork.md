# IbmCloudPower::PeeringNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cidr** | **String** | Network in CIDR notation (192.168.0.0/24) |  |
| **dns_servers** | **Array&lt;String&gt;** | DNS Servers | [optional] |
| **project_name** | **String** | Name of project to be peered |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PeeringNetwork.new(
  cidr: null,
  dns_servers: null,
  project_name: null
)
```

