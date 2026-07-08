# IbmCloudPower::NetworkPeer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_date** | **String** | time stamp for create network peer |  |
| **customer_asn** | **Integer** | ASN number at customer network side |  |
| **customer_cidr** | **String** | IP address used for configuring customer network interface with network subnet mask. customerCidr and ibmCidr must have matching network and subnet mask values. |  |
| **default_export_route_filter** | **String** | default action for export route filter * allow: allow * deny: deny  | [default to &#39;allow&#39;] |
| **default_import_route_filter** | **String** | default action for import route filter * allow: allow * deny: deny  | [default to &#39;allow&#39;] |
| **error** | **String** | error description |  |
| **export_route_filters** | [**Array&lt;RouteFilter&gt;**](RouteFilter.md) | List of export route filters |  |
| **ibm_asn** | **Integer** | ASN number at IBM PowerVS side |  |
| **ibm_cidr** | **String** | IP address used for configuring IBM network interface with network subnet mask. customerCidr and ibmCidr must have matching network and subnet mask values. |  |
| **id** | **String** | network peer id |  |
| **import_route_filters** | [**Array&lt;RouteFilter&gt;**](RouteFilter.md) | List of import route filters |  |
| **name** | **String** | user defined name |  |
| **peer_interface_id** | **String** | peer interface id. use API &#39;/v1/network-peers/interfaces&#39; to get a list of valid peer interface id |  |
| **state** | **String** | status of the network peer |  |
| **type** | **String** | type of the peer network * dcnetwork_bgp: broader gateway protocol is used to share routes between two autonomous network  | [default to &#39;dcnetwork_bgp&#39;] |
| **updated_date** | **String** | time stamp for update network peer |  |
| **vlan** | **Integer** | A vlan configured at the customer network. |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkPeer.new(
  creation_date: null,
  customer_asn: 64512,
  customer_cidr: 192.168.91.2/30,
  default_export_route_filter: allow,
  default_import_route_filter: allow,
  error: null,
  export_route_filters: null,
  ibm_asn: 64512,
  ibm_cidr: 192.168.91.1/30,
  id: 031ab7da-bca6-493f-ac55-1a2a26f19160,
  import_route_filters: null,
  name: newPeerNetwork,
  peer_interface_id: 031ab7da-bca6-493f-ac55-1a2a26f19160,
  state: active,
  type: dcnetwork_bgp,
  updated_date: null,
  vlan: 2000
)
```

