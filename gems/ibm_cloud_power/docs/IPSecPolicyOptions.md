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
  authentications: [&quot;sha1&quot;,&quot;sha2&quot;,&quot;sha-256&quot;],
  dh_groups: [1,2,5,14,19,20],
  encryptions: [&quot;3des-cbc&quot;,&quot;aes-128-cbc&quot;,&quot;aes-128-gcm&quot;,&quot;aes-256-cbc&quot;,&quot;aes-256-gcm&quot;,&quot;des-cbc&quot;]
)
```

