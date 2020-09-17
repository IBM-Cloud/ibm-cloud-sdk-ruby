# IbmCloudVpc::InstanceInitialization

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**keys** | [**Array&lt;KeyReferenceInstanceInitializationContext&gt;**](KeyReferenceInstanceInitializationContext.md) | Collection of references to public SSH keys used at instance initialization | 
**password** | [**InstanceInitializationPassword**](InstanceInitializationPassword.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceInitialization.new(keys: null,
                                 password: null)
```


