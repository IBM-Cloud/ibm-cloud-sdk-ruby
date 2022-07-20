# IbmCloudPower::ImageReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_id** | **String** | Image ID |  |
| **name** | **String** | Image Name |  |
| **state** | **String** | Image State |  |
| **description** | **String** | Description |  |
| **storage_type** | **String** | Storage type for image |  |
| **storage_pool** | **String** | Storage pool where the image is located |  |
| **creation_date** | **Time** | Creation Date |  |
| **last_update_date** | **Time** | Last Update Date |  |
| **specifications** | [**ImageSpecifications**](ImageSpecifications.md) |  |  |
| **href** | **String** | Link to Image resource |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::ImageReference.new(
  image_id: null,
  name: null,
  state: null,
  description: null,
  storage_type: null,
  storage_pool: null,
  creation_date: null,
  last_update_date: null,
  specifications: null,
  href: null
)
```

