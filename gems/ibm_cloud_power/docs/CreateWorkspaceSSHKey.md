# IbmCloudPower::CreateWorkspaceSSHKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the sshkey | [optional] |
| **name** | **String** | User defined name for the SSH key |  |
| **ssh_key** | **String** | SSH RSA key |  |
| **visibility** | **String** | Visibility of the sshkey; workspace suggests ssh-key is only accessible in a workspace, account suggests ssh-key is accessible throughout an account | [optional][default to &#39;workspace&#39;] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CreateWorkspaceSSHKey.new(
  description: null,
  name: null,
  ssh_key: null,
  visibility: null
)
```

