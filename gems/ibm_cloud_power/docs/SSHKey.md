# IbmCloudPower::SSHKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | User defined name for the SSH key |  |
| **ssh_key** | **String** | SSH RSA key |  |
| **creation_date** | **Time** | Date of sshkey creation | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SSHKey.new(
  name: null,
  ssh_key: null,
  creation_date: null
)
```

