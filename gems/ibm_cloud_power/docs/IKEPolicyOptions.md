# IbmCloudPower::IKEPolicyOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authentications** | **Array&lt;String&gt;** |  |  |
| **dh_groups** | **Array&lt;Float&gt;** |  |  |
| **encryptions** | **Array&lt;String&gt;** |  |  |
| **versions** | **Array&lt;Float&gt;** |  |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::IKEPolicyOptions.new(
  authentications: [&quot;sha1&quot;,&quot;md5&quot;,&quot;sha-256&quot;,&quot;sha-384&quot;],
  dh_groups: [1,2,5,14,19,20,24],
  encryptions: [&quot;3des-cbc&quot;,&quot;aes-128-cbc&quot;,&quot;aes-128-gcm&quot;,&quot;aes-192-cbc&quot;,&quot;aes-256-cbc&quot;,&quot;aes-256-gcm&quot;,&quot;des-cbc&quot;],
  versions: [1,2]
)
```

