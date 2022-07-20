# IbmCloudPower::CloudConnection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_connection_id** | **String** | cloud connection ID |  |
| **name** | **String** | name of the cloud connection |  |
| **speed** | **Integer** | speed of the cloud connection (speed in megabits per second) |  |
| **global_routing** | **Boolean** | enable global routing for this cloud connection (default&#x3D;false) |  |
| **classic** | [**CloudConnectionEndpointClassic**](CloudConnectionEndpointClassic.md) |  | [optional] |
| **vpc** | [**CloudConnectionEndpointVPC**](CloudConnectionEndpointVPC.md) |  | [optional] |
| **creation_date** | **Time** | creation date |  |
| **user_ip_address** | **String** | user IP address |  |
| **ibm_ip_address** | **String** | IBM IP address |  |
| **port** | **Integer** | port |  |
| **link_status** | **String** | link status |  |
| **metered** | **Boolean** | metered |  |
| **networks** | [**Array&lt;NetworkReference&gt;**](NetworkReference.md) | Network References | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloudConnection.new(
  cloud_connection_id: null,
  name: null,
  speed: null,
  global_routing: null,
  classic: null,
  vpc: null,
  creation_date: null,
  user_ip_address: null,
  ibm_ip_address: null,
  port: null,
  link_status: null,
  metered: null,
  networks: null
)
```

