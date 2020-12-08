# IbmCloudVpc::NetworkACLRuleReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deleted** | [**Deleted**](Deleted.md) |  | [optional] 
**href** | **String** | The URL for this network ACL rule | 
**id** | **String** | The unique identifier for this network ACL rule | 
**name** | **String** | The user-defined name for this network ACL rule | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::NetworkACLRuleReference.new(deleted: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/network_acls/a4e28308-8ee7-46ab-8108-9f881f22bdbf/rules/8daca77a-4980-4d33-8f3e-7038797be8f9,
                                 id: 8daca77a-4980-4d33-8f3e-7038797be8f9,
                                 name: my-rule-1)
```


