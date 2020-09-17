# IbmCloudVpc::InstanceInitializationPassword

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**encrypted_password** | **String** | The administrator password at initialization, encrypted using &#x60;encryption_key&#x60;, and returned base64-encoded | 
**encryption_key** | [**KeyReferenceInstanceInitializationContext**](KeyReferenceInstanceInitializationContext.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceInitializationPassword.new(encrypted_password: null,
                                 encryption_key: null)
```


