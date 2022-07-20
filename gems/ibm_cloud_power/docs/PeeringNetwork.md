# IbmCloudPower::PeeringNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_name** | **String** | Name of project to be peered |  |
| **cidr** | **String** | Network in CIDR notation (192.168.0.0/24) |  |
| **dns_servers** | **Array&lt;String&gt;** | DNS Servers | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PeeringNetwork.new(
  project_name: null,
  cidr: null,
  dns_servers: null
)
```

