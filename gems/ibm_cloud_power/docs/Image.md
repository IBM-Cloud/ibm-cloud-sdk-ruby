# IbmCloudPower::Image

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_date** | **Time** | Creation Date |  |
| **crn** | **String** |  | [optional] |
| **description** | **String** | Description | [optional] |
| **image_id** | **String** | Image ID |  |
| **last_update_date** | **Time** | Last Update Date |  |
| **max_image_volume_size** | **Float** | Maximum image volume size for multi-volume image |  |
| **name** | **String** | Image Name |  |
| **servers** | **Array&lt;String&gt;** | List of Servers that have deployed the image | [optional] |
| **size** | **Float** | Image Size |  |
| **specifications** | [**ImageSpecifications**](ImageSpecifications.md) |  | [optional] |
| **state** | **String** | Image State | [optional] |
| **storage_pool** | **String** | Storage pool where the image resides |  |
| **storage_type** | **String** | Storage type for image |  |
| **taskref** | [**TaskReference**](TaskReference.md) |  | [optional] |
| **user_tags** | **Array** |  | [optional] |
| **volumes** | [**Array&lt;ImageVolume&gt;**](ImageVolume.md) | Image Volumes | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::Image.new(
  creation_date: null,
  crn: null,
  description: null,
  image_id: null,
  last_update_date: null,
  max_image_volume_size: null,
  name: null,
  servers: null,
  size: null,
  specifications: null,
  state: null,
  storage_pool: null,
  storage_type: null,
  taskref: null,
  user_tags: null,
  volumes: null
)
```

