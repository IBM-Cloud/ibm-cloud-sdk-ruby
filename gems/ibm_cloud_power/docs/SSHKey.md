# IbmCloudPower::SSHKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_date** | **Time** | Date of sshkey creation | [optional] |
| **name** | **String** | User defined name for the SSH key |  |
| **ssh_key** | **String** | SSH RSA key |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SSHKey.new(
  creation_date: null,
  name: null,
  ssh_key: null
)
```

