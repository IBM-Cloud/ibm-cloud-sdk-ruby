# IbmCloudPower::VPNaaSOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dead_peer_detection** | [**DeadPeerDetection**](DeadPeerDetection.md) |  |  |
| **ike_policy_options** | [**IKEPolicyOptions**](IKEPolicyOptions.md) |  |  |
| **ike_policy_template** | [**IKEPolicyTemplate**](IKEPolicyTemplate.md) |  |  |
| **ip_sec_policy_options** | [**IPSecPolicyOptions**](IPSecPolicyOptions.md) |  |  |
| **ip_sec_policy_template** | [**IPSecPolicyTemplate**](IPSecPolicyTemplate.md) |  |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VPNaaSOptions.new(
  dead_peer_detection: null,
  ike_policy_options: null,
  ike_policy_template: null,
  ip_sec_policy_options: null,
  ip_sec_policy_template: null
)
```

