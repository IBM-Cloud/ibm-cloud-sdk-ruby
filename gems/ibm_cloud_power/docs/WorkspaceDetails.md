# IbmCloudPower::WorkspaceDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_date** | **Time** | Workspace creation date |  |
| **crn** | **String** | The Workspace crn |  |
| **href** | **String** | Link to Workspace Resource | [optional] |
| **network_security_groups** | [**WorkspaceNetworkSecurityGroupsDetails**](WorkspaceNetworkSecurityGroupsDetails.md) |  | [optional] |
| **power_edge_router** | [**WorkspacePowerEdgeRouterDetails**](WorkspacePowerEdgeRouterDetails.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::WorkspaceDetails.new(
  creation_date: null,
  crn: null,
  href: null,
  network_security_groups: null,
  power_edge_router: null
)
```

