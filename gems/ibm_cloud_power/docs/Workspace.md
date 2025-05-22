# IbmCloudPower::Workspace

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capabilities** | **Hash&lt;String, Boolean&gt;** | Workspace Capabilities |  |
| **details** | [**WorkspaceDetails**](WorkspaceDetails.md) |  |  |
| **id** | **String** | Workspace ID |  |
| **location** | [**WorkspaceLocation**](WorkspaceLocation.md) |  |  |
| **name** | **String** | The Workspace name |  |
| **status** | **String** | The Workspace status |  |
| **type** | **String** | The Workspace type |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::Workspace.new(
  capabilities: null,
  details: null,
  id: null,
  location: null,
  name: null,
  status: null,
  type: null
)
```

