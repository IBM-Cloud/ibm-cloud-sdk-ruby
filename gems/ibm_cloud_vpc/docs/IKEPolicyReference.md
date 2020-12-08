# IbmCloudVpc::IKEPolicyReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deleted** | [**Deleted**](Deleted.md) |  | [optional] 
**href** | **String** | The IKE policy&#39;s canonical URL | 
**id** | **String** | The unique identifier for this IKE policy | 
**name** | **String** | The user-defined name for this IKE policy | 
**resource_type** | **String** | The resource type | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::IKEPolicyReference.new(deleted: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/ike_policies/ddf51bec-3424-11e8-b467-0ed5f89f718b,
                                 id: ddf51bec-3424-11e8-b467-0ed5f89f718b,
                                 name: my-ike-policy,
                                 resource_type: null)
```


