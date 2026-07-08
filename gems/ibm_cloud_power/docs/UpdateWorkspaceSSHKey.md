# IbmCloudPower::UpdateWorkspaceSSHKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the sshkey | [optional] |
| **name** | **String** | User defined name for the SSH key | [optional] |
| **ssh_key** | **String** | SSH RSA key | [optional] |
| **visibility** | **String** | Visibility of the sshkey; workspace suggests ssh-key is only accessible in a workspace, account suggests ssh-key is accessible throughout an account | [optional][default to &#39;workspace&#39;] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::UpdateWorkspaceSSHKey.new(
  description: null,
  name: null,
  ssh_key: null,
  visibility: null
)
```

