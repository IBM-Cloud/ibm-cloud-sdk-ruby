# IbmCloudVpc::LoadBalancerListenerPolicyRedirectURLPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**http_status_code** | **Integer** | The http status code in the redirect response. | [optional] 
**url** | **String** | The redirect target URL. | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerListenerPolicyRedirectURLPatch.new(http_status_code: null,
                                 url: https://www.redirect.com)
```


