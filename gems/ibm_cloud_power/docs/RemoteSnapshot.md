# IbmCloudPower::RemoteSnapshot

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the remote snapshot | [optional] |
| **name** | **String** | Name of the remote snapshot |  |
| **propagate_user_tags** | **Boolean** | Indicates whether or not any user supplied tags will be propagated to the copy volumes of the remote snapshot. | [optional][default to false] |
| **user_tags** | **Array&lt;String&gt;** | User supplied tags that will be associated with the remote snapshot. | [optional] |
| **workspace_crn** | **String** | CRN of the user&#39;s workspace in the remote data center that will own the remote snapshot data. Required if the user has multiple workspaces in the remote data center. | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::RemoteSnapshot.new(
  description: null,
  name: null,
  propagate_user_tags: null,
  user_tags: null,
  workspace_crn: null
)
```

