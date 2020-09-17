# IbmCloudPower::SSHKey

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | User defined name for the SSH key | 
**ssh_key** | **String** | SSH RSA key | 
**creation_date** | **DateTime** | Date of sshkey creation | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::SSHKey.new(name: null,
                                 ssh_key: null,
                                 creation_date: null)
```


