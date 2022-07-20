# IbmCloudPower::ImageSpecifications

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_type** | **String** | Image Type | [optional] |
| **container_format** | **String** | Container Format | [optional] |
| **disk_format** | **String** | Disk Format | [optional] |
| **operating_system** | **String** | Operating System | [optional] |
| **hypervisor_type** | **String** | Hypervisor Type | [optional] |
| **architecture** | **String** | Architecture | [optional] |
| **endianness** | **String** | Endianness | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::ImageSpecifications.new(
  image_type: null,
  container_format: null,
  disk_format: null,
  operating_system: null,
  hypervisor_type: null,
  architecture: null,
  endianness: null
)
```

