# IbmCloudVpc::NetworkACLIdentity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier for this network ACL | 
**crn** | **String** | The CRN for this network ACL | 
**href** | **String** | The URL for this network ACL | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::NetworkACLIdentity.new(id: a4e28308-8ee7-46ab-8108-9f881f22bdbf,
                                 crn: crn:v1:bluemix:public:is:us-south:a/123456::network-acl:a4e28308-8ee7-46ab-8108-9f881f22bdbf,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/network_acls/a4e28308-8ee7-46ab-8108-9f881f22bdbf)
```


