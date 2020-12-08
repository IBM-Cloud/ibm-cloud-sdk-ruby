# IbmCloudVpc::ReservedIPPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auto_delete** | **Boolean** | If set to &#x60;true&#x60;, this reserved IP will be automatically deleted when the target is deleted or when the reserved IP is unbound. The value cannot be set to &#x60;true&#x60; if the reserved IP is unbound. | [optional] 
**name** | **String** | The user-defined name for this reserved IP. Names must be unique within the subnet the reserved IP resides in. Names beginning with &#x60;ibm-&#x60; are reserved for provider-owned resources. | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::ReservedIPPatch.new(auto_delete: false,
                                 name: my-reserved-ip)
```


