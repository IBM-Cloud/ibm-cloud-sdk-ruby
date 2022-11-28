# IbmCloudPower::IPSecPolicyOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authentications** | **Array&lt;String&gt;** |  |  |
| **dh_groups** | **Array&lt;Float&gt;** |  |  |
| **encryptions** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::IPSecPolicyOptions.new(
  authentications: [&quot;hmac-sha-256-128&quot;,&quot;hmac-sha1-96&quot;,&quot;none&quot;],
  dh_groups: [1,2,5,14,19,20],
  encryptions: [&quot;aes-256-cbc&quot;,&quot;aes-192-cbc&quot;,&quot;aes-128-cbc&quot;,&quot;aes-256-gcm&quot;,&quot;aes-128-gcm&quot;,&quot;3des-cbc&quot;]
)
```

