# IbmCloudPower::WorkspaceSSHKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_date** | **Time** | Date/Time of sshkey creation | [optional] |
| **description** | **String** | Description of the sshkey | [optional] |
| **id** | **String** | Unique id of ssh-key |  |
| **name** | **String** | User defined name for the SSH key |  |
| **primary_workspace** | **Boolean** | Indicates if the current workspace owns the ssh key or not |  |
| **ssh_key** | **String** | SSH RSA key |  |
| **visibility** | **String** | Visibility of the sshkey; workspace suggests ssh-key is only accessible in a workspace, account suggests ssh-key is accessible throughout an account | [optional][default to &#39;workspace&#39;] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::WorkspaceSSHKey.new(
  creation_date: null,
  description: null,
  id: null,
  name: null,
  primary_workspace: null,
  ssh_key: null,
  visibility: null
)
```

