# IbmCloudPower::Datacenter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capabilities** | **Hash&lt;String, Boolean&gt;** | Datacenter Capabilities |  |
| **capabilities_details** | [**CapabilitiesDetails**](CapabilitiesDetails.md) |  | [optional] |
| **href** | **String** | Link to Datacenter Region | [optional] |
| **location** | [**DatacenterLocation**](DatacenterLocation.md) |  |  |
| **status** | **String** | The Datacenter status |  |
| **type** | **String** | The Datacenter type |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::Datacenter.new(
  capabilities: null,
  capabilities_details: null,
  href: null,
  location: null,
  status: null,
  type: null
)
```

