# IbmCloudPower::ImageSpecifications

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **architecture** | **String** | Architecture | [optional] |
| **container_format** | **String** | Container Format | [optional] |
| **disk_format** | **String** | Disk Format | [optional] |
| **endianness** | **String** | Endianness | [optional] |
| **hypervisor_type** | **String** | Hypervisor Type | [optional] |
| **image_type** | **String** | Image Type | [optional] |
| **operating_system** | **String** | Operating System | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::ImageSpecifications.new(
  architecture: null,
  container_format: null,
  disk_format: null,
  endianness: null,
  hypervisor_type: null,
  image_type: null,
  operating_system: null
)
```

