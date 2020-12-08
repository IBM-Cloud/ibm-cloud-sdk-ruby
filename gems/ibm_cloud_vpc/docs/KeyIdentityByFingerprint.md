# IbmCloudVpc::KeyIdentityByFingerprint

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fingerprint** | **String** | The fingerprint for this key.  The value is returned base64-encoded and prefixed with the hash algorithm (always &#x60;SHA256&#x60;). | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::KeyIdentityByFingerprint.new(fingerprint: SHA256:yxavE4CIOL2NlsqcurRO3xGjkP6m/0mp8ugojH5yxlY)
```


