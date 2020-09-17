# IbmCloudVpc::NetworkACLReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**crn** | **String** | The CRN for this network ACL | 
**href** | **String** | The URL for this network ACL | 
**id** | **String** | The unique identifier for this network ACL | 
**name** | **String** | The user-defined name for this network ACL | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::NetworkACLReference.new(crn: crn:v1:bluemix:public:is:us-south:a/123456::network-acl:a4e28308-8ee7-46ab-8108-9f881f22bdbf,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/network_acls/a4e28308-8ee7-46ab-8108-9f881f22bdbf,
                                 id: a4e28308-8ee7-46ab-8108-9f881f22bdbf,
                                 name: my-network-acl)
```


