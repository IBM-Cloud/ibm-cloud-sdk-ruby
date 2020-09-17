# IbmCloudVpc::KeyReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**crn** | **String** | The CRN for this key | 
**fingerprint** | **String** | The fingerprint for this key.  The value is returned base64-encoded and prefixed with the hash algorithm (always &#x60;SHA256&#x60;). | 
**href** | **String** | The URL for this key | 
**id** | **String** | The unique identifier for this key | 
**name** | **String** | The user-defined name for this key | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::KeyReference.new(crn: crn:v1:bluemix:public:is:us-south:a/123456::key:a6b1a881-2ce8-41a3-80fc-36316a73f803,
                                 fingerprint: SHA256:yxavE4CIOL2NlsqcurRO3xGjkP6m/0mp8ugojH5yxlY,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/keys/a6b1a881-2ce8-41a3-80fc-36316a73f803,
                                 id: a6b1a881-2ce8-41a3-80fc-36316a73f803,
                                 name: my-key)
```


