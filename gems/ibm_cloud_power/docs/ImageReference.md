# IbmCloudPower::ImageReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_date** | **Time** | Creation Date |  |
| **crn** | **String** |  | [optional] |
| **description** | **String** | Description |  |
| **href** | **String** | Link to Image resource |  |
| **image_id** | **String** | Image ID |  |
| **last_update_date** | **Time** | Last Update Date |  |
| **name** | **String** | Image Name |  |
| **specifications** | [**ImageSpecifications**](ImageSpecifications.md) |  |  |
| **state** | **String** | Image State |  |
| **storage_pool** | **String** | Storage pool where image resides |  |
| **storage_type** | **String** | Storage type for image |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::ImageReference.new(
  creation_date: null,
  crn: null,
  description: null,
  href: null,
  image_id: null,
  last_update_date: null,
  name: null,
  specifications: null,
  state: null,
  storage_pool: null,
  storage_type: null
)
```

