# IbmCloudPower::PCloudVPMemVolumesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_pvminstances_vpmem_volumes_delete**](PCloudVPMemVolumesApi.md#pcloud_pvminstances_vpmem_volumes_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/vpmem-volumes/{vpmem_volume_id} | Delete a vPMEM volume attached to this PVM Instance |
| [**pcloud_pvminstances_vpmem_volumes_get**](PCloudVPMemVolumesApi.md#pcloud_pvminstances_vpmem_volumes_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/vpmem-volumes/{vpmem_volume_id} | Get information about a vPMEM volume |
| [**pcloud_pvminstances_vpmem_volumes_getall**](PCloudVPMemVolumesApi.md#pcloud_pvminstances_vpmem_volumes_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/vpmem-volumes | List all vPMEM volumes attached to this PVM Instance |
| [**pcloud_pvminstances_vpmem_volumes_post**](PCloudVPMemVolumesApi.md#pcloud_pvminstances_vpmem_volumes_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/vpmem-volumes | Create a vPMEM volume to be attached to this PVM Instance |
| [**pcloud_pvminstances_vpmem_volumes_put**](PCloudVPMemVolumesApi.md#pcloud_pvminstances_vpmem_volumes_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/vpmem-volumes/{vpmem_volume_id} | Update a vPMEM volume attached to this PVM Instance |


## pcloud_pvminstances_vpmem_volumes_delete

> Object pcloud_pvminstances_vpmem_volumes_delete(cloud_instance_id, pvm_instance_id, vpmem_volume_id)

Delete a vPMEM volume attached to this PVM Instance

vPMEM volumes of PVM Instances using SAP profiles will return carved out memory. Other cases are a reduction from total memory.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPMemVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
vpmem_volume_id = 'vpmem_volume_id_example' # String | vPMEM Volume ID

begin
  # Delete a vPMEM volume attached to this PVM Instance
  result = api_instance.pcloud_pvminstances_vpmem_volumes_delete(cloud_instance_id, pvm_instance_id, vpmem_volume_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPMemVolumesApi->pcloud_pvminstances_vpmem_volumes_delete: #{e}"
end
```

#### Using the pcloud_pvminstances_vpmem_volumes_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_pvminstances_vpmem_volumes_delete_with_http_info(cloud_instance_id, pvm_instance_id, vpmem_volume_id)

```ruby
begin
  # Delete a vPMEM volume attached to this PVM Instance
  data, status_code, headers = api_instance.pcloud_pvminstances_vpmem_volumes_delete_with_http_info(cloud_instance_id, pvm_instance_id, vpmem_volume_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPMemVolumesApi->pcloud_pvminstances_vpmem_volumes_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **vpmem_volume_id** | **String** | vPMEM Volume ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_pvminstances_vpmem_volumes_get

> <VPMemVolumeReference> pcloud_pvminstances_vpmem_volumes_get(cloud_instance_id, pvm_instance_id, vpmem_volume_id)

Get information about a vPMEM volume

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPMemVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
vpmem_volume_id = 'vpmem_volume_id_example' # String | vPMEM Volume ID

begin
  # Get information about a vPMEM volume
  result = api_instance.pcloud_pvminstances_vpmem_volumes_get(cloud_instance_id, pvm_instance_id, vpmem_volume_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPMemVolumesApi->pcloud_pvminstances_vpmem_volumes_get: #{e}"
end
```

#### Using the pcloud_pvminstances_vpmem_volumes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VPMemVolumeReference>, Integer, Hash)> pcloud_pvminstances_vpmem_volumes_get_with_http_info(cloud_instance_id, pvm_instance_id, vpmem_volume_id)

```ruby
begin
  # Get information about a vPMEM volume
  data, status_code, headers = api_instance.pcloud_pvminstances_vpmem_volumes_get_with_http_info(cloud_instance_id, pvm_instance_id, vpmem_volume_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VPMemVolumeReference>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPMemVolumesApi->pcloud_pvminstances_vpmem_volumes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **vpmem_volume_id** | **String** | vPMEM Volume ID |  |

### Return type

[**VPMemVolumeReference**](VPMemVolumeReference.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_pvminstances_vpmem_volumes_getall

> <VPMemVolumes> pcloud_pvminstances_vpmem_volumes_getall(cloud_instance_id, pvm_instance_id)

List all vPMEM volumes attached to this PVM Instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPMemVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID

begin
  # List all vPMEM volumes attached to this PVM Instance
  result = api_instance.pcloud_pvminstances_vpmem_volumes_getall(cloud_instance_id, pvm_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPMemVolumesApi->pcloud_pvminstances_vpmem_volumes_getall: #{e}"
end
```

#### Using the pcloud_pvminstances_vpmem_volumes_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VPMemVolumes>, Integer, Hash)> pcloud_pvminstances_vpmem_volumes_getall_with_http_info(cloud_instance_id, pvm_instance_id)

```ruby
begin
  # List all vPMEM volumes attached to this PVM Instance
  data, status_code, headers = api_instance.pcloud_pvminstances_vpmem_volumes_getall_with_http_info(cloud_instance_id, pvm_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VPMemVolumes>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPMemVolumesApi->pcloud_pvminstances_vpmem_volumes_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |

### Return type

[**VPMemVolumes**](VPMemVolumes.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_pvminstances_vpmem_volumes_post

> <VPMemVolumes> pcloud_pvminstances_vpmem_volumes_post(cloud_instance_id, pvm_instance_id, body)

Create a vPMEM volume to be attached to this PVM Instance

vPMEM volumes of PVM Instances using SAP profiles will be carved out of profile total memory. Other cases are in addition to total memory.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPMemVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
body = IbmCloudPower::VPMemVolumeAttach.new({vpmem_volumes: [IbmCloudPower::VPMemVolumeCreate.new({name: 'name_example', size: 37})]}) # VPMemVolumeAttach | PVM Instance vPMEM volume create parameters

begin
  # Create a vPMEM volume to be attached to this PVM Instance
  result = api_instance.pcloud_pvminstances_vpmem_volumes_post(cloud_instance_id, pvm_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPMemVolumesApi->pcloud_pvminstances_vpmem_volumes_post: #{e}"
end
```

#### Using the pcloud_pvminstances_vpmem_volumes_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VPMemVolumes>, Integer, Hash)> pcloud_pvminstances_vpmem_volumes_post_with_http_info(cloud_instance_id, pvm_instance_id, body)

```ruby
begin
  # Create a vPMEM volume to be attached to this PVM Instance
  data, status_code, headers = api_instance.pcloud_pvminstances_vpmem_volumes_post_with_http_info(cloud_instance_id, pvm_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VPMemVolumes>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPMemVolumesApi->pcloud_pvminstances_vpmem_volumes_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **body** | [**VPMemVolumeAttach**](VPMemVolumeAttach.md) | PVM Instance vPMEM volume create parameters |  |

### Return type

[**VPMemVolumes**](VPMemVolumes.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_vpmem_volumes_put

> <VPMemVolumeReference> pcloud_pvminstances_vpmem_volumes_put(cloud_instance_id, pvm_instance_id, vpmem_volume_id, body)

Update a vPMEM volume attached to this PVM Instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVPMemVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
vpmem_volume_id = 'vpmem_volume_id_example' # String | vPMEM Volume ID
body = IbmCloudPower::VPMemVolumeUpdate.new({name: 'name_example'}) # VPMemVolumeUpdate | Parameters to update a vPMEM volume

begin
  # Update a vPMEM volume attached to this PVM Instance
  result = api_instance.pcloud_pvminstances_vpmem_volumes_put(cloud_instance_id, pvm_instance_id, vpmem_volume_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPMemVolumesApi->pcloud_pvminstances_vpmem_volumes_put: #{e}"
end
```

#### Using the pcloud_pvminstances_vpmem_volumes_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VPMemVolumeReference>, Integer, Hash)> pcloud_pvminstances_vpmem_volumes_put_with_http_info(cloud_instance_id, pvm_instance_id, vpmem_volume_id, body)

```ruby
begin
  # Update a vPMEM volume attached to this PVM Instance
  data, status_code, headers = api_instance.pcloud_pvminstances_vpmem_volumes_put_with_http_info(cloud_instance_id, pvm_instance_id, vpmem_volume_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VPMemVolumeReference>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVPMemVolumesApi->pcloud_pvminstances_vpmem_volumes_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **vpmem_volume_id** | **String** | vPMEM Volume ID |  |
| **body** | [**VPMemVolumeUpdate**](VPMemVolumeUpdate.md) | Parameters to update a vPMEM volume |  |

### Return type

[**VPMemVolumeReference**](VPMemVolumeReference.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

