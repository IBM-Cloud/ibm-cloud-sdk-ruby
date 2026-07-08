# IbmCloudPower::VPMemVolumeReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_date** | **Time** | The date and time when the volume was created |  |
| **crn** | **String** | The CRN for this resource | [optional] |
| **error_code** | **String** | Error code for the vPMEM volume | [optional] |
| **href** | **String** | Link to vPMEM volume resource |  |
| **name** | **String** | Volume Name |  |
| **pvm_instance_id** | **String** | PVM Instance ID which the volume is attached to |  |
| **reason** | **String** | Reason for error | [optional] |
| **size** | **Float** | Volume Size (GiB) |  |
| **status** | **String** | Status of the volume |  |
| **updated_date** | **Time** | The date and time when the volume was updated | [optional] |
| **uuid** | **String** | Volume ID |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VPMemVolumeReference.new(
  creation_date: null,
  crn: null,
  error_code: null,
  href: null,
  name: null,
  pvm_instance_id: null,
  reason: null,
  size: null,
  status: null,
  updated_date: null,
  uuid: null
)
```

