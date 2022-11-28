# IbmCloudPower::CloudConnection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **classic** | [**CloudConnectionEndpointClassic**](CloudConnectionEndpointClassic.md) |  | [optional] |
| **cloud_connection_id** | **String** | cloud connection ID |  |
| **connection_mode** | **String** | type of service the gateway is attached to | [optional] |
| **creation_date** | **Time** | creation date |  |
| **global_routing** | **Boolean** | enable global routing for this cloud connection (default&#x3D;false) |  |
| **ibm_ip_address** | **String** | IBM IP address |  |
| **link_status** | **String** | link status |  |
| **metered** | **Boolean** | metered |  |
| **name** | **String** | name of the cloud connection |  |
| **networks** | [**Array&lt;NetworkReference&gt;**](NetworkReference.md) | Network References | [optional] |
| **port** | **String** | port |  |
| **speed** | **Integer** | speed of the cloud connection (speed in megabits per second) |  |
| **user_ip_address** | **String** | user IP address |  |
| **vpc** | [**CloudConnectionEndpointVPC**](CloudConnectionEndpointVPC.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloudConnection.new(
  classic: null,
  cloud_connection_id: null,
  connection_mode: null,
  creation_date: null,
  global_routing: null,
  ibm_ip_address: null,
  link_status: null,
  metered: null,
  name: null,
  networks: null,
  port: null,
  speed: null,
  user_ip_address: null,
  vpc: null
)
```

