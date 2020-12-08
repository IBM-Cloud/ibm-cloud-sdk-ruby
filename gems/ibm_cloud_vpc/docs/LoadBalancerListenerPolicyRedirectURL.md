# IbmCloudVpc::LoadBalancerListenerPolicyRedirectURL

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**http_status_code** | **Integer** | The http status code in the redirect response. | 
**url** | **String** | The redirect target URL. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerListenerPolicyRedirectURL.new(http_status_code: null,
                                 url: https://www.redirect.com)
```


