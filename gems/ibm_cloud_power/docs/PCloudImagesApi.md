# IbmCloudPower::PCloudImagesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_cloudinstances_images_delete**](PCloudImagesApi.md#pcloud_cloudinstances_images_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/images/{image_id} | Delete an Image from a Cloud Instance |
| [**pcloud_cloudinstances_images_export_post**](PCloudImagesApi.md#pcloud_cloudinstances_images_export_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/images/{image_id}/export | Export an image |
| [**pcloud_cloudinstances_images_get**](PCloudImagesApi.md#pcloud_cloudinstances_images_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/images/{image_id} | Detailed info of an image |
| [**pcloud_cloudinstances_images_getall**](PCloudImagesApi.md#pcloud_cloudinstances_images_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/images | List all images for this cloud instance |
| [**pcloud_cloudinstances_images_post**](PCloudImagesApi.md#pcloud_cloudinstances_images_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/images | Create a new Image (from available images) |
| [**pcloud_cloudinstances_stockimages_get**](PCloudImagesApi.md#pcloud_cloudinstances_stockimages_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/stock-images/{image_id} | Detailed info of an available stock image |
| [**pcloud_cloudinstances_stockimages_getall**](PCloudImagesApi.md#pcloud_cloudinstances_stockimages_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/stock-images | List all available stock images |
| [**pcloud_images_get**](PCloudImagesApi.md#pcloud_images_get) | **GET** /pcloud/v1/images/{image_id} | Deprecated for /pcloud/v1/cloud-instances/{cloud_instance_id}/stock-images/{image_id} - Detailed info of an available stock image |
| [**pcloud_images_getall**](PCloudImagesApi.md#pcloud_images_getall) | **GET** /pcloud/v1/images | Deprecated for /pcloud/v1/cloud-instances/{cloud_instance_id}/stock-images - List all available stock images |
| [**pcloud_v1_cloudinstances_cosimages_get**](PCloudImagesApi.md#pcloud_v1_cloudinstances_cosimages_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/cos-images | Get detail of last cos-image import job |
| [**pcloud_v1_cloudinstances_cosimages_post**](PCloudImagesApi.md#pcloud_v1_cloudinstances_cosimages_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/cos-images | Create an cos-image import job |
| [**pcloud_v2_images_export_get**](PCloudImagesApi.md#pcloud_v2_images_export_get) | **GET** /pcloud/v2/cloud-instances/{cloud_instance_id}/images/{image_id}/export | Get detail of last image export job |
| [**pcloud_v2_images_export_post**](PCloudImagesApi.md#pcloud_v2_images_export_post) | **POST** /pcloud/v2/cloud-instances/{cloud_instance_id}/images/{image_id}/export | Add image export job to the jobs queue |


## pcloud_cloudinstances_images_delete

> Object pcloud_cloudinstances_images_delete(cloud_instance_id, image_id)

Delete an Image from a Cloud Instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudImagesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
image_id = 'image_id_example' # String | Image ID of a image

begin
  # Delete an Image from a Cloud Instance
  result = api_instance.pcloud_cloudinstances_images_delete(cloud_instance_id, image_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_cloudinstances_images_delete: #{e}"
end
```

#### Using the pcloud_cloudinstances_images_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_cloudinstances_images_delete_with_http_info(cloud_instance_id, image_id)

```ruby
begin
  # Delete an Image from a Cloud Instance
  data, status_code, headers = api_instance.pcloud_cloudinstances_images_delete_with_http_info(cloud_instance_id, image_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_cloudinstances_images_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **image_id** | **String** | Image ID of a image |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## pcloud_cloudinstances_images_export_post

> Object pcloud_cloudinstances_images_export_post(cloud_instance_id, image_id, body)

Export an image

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudImagesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
image_id = 'image_id_example' # String | Image ID of a image
body = IbmCloudPower::ExportImage.new({access_key: 'access_key_example', bucket_name: 'bucket_name_example'}) # ExportImage | Parameters for exporting an image

begin
  # Export an image
  result = api_instance.pcloud_cloudinstances_images_export_post(cloud_instance_id, image_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_cloudinstances_images_export_post: #{e}"
end
```

#### Using the pcloud_cloudinstances_images_export_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_cloudinstances_images_export_post_with_http_info(cloud_instance_id, image_id, body)

```ruby
begin
  # Export an image
  data, status_code, headers = api_instance.pcloud_cloudinstances_images_export_post_with_http_info(cloud_instance_id, image_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_cloudinstances_images_export_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **image_id** | **String** | Image ID of a image |  |
| **body** | [**ExportImage**](ExportImage.md) | Parameters for exporting an image |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_cloudinstances_images_get

> <Image> pcloud_cloudinstances_images_get(cloud_instance_id, image_id)

Detailed info of an image

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudImagesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
image_id = 'image_id_example' # String | Image ID of a image

begin
  # Detailed info of an image
  result = api_instance.pcloud_cloudinstances_images_get(cloud_instance_id, image_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_cloudinstances_images_get: #{e}"
end
```

#### Using the pcloud_cloudinstances_images_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> pcloud_cloudinstances_images_get_with_http_info(cloud_instance_id, image_id)

```ruby
begin
  # Detailed info of an image
  data, status_code, headers = api_instance.pcloud_cloudinstances_images_get_with_http_info(cloud_instance_id, image_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_cloudinstances_images_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **image_id** | **String** | Image ID of a image |  |

### Return type

[**Image**](Image.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_cloudinstances_images_getall

> <Images> pcloud_cloudinstances_images_getall(cloud_instance_id)

List all images for this cloud instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudImagesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # List all images for this cloud instance
  result = api_instance.pcloud_cloudinstances_images_getall(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_cloudinstances_images_getall: #{e}"
end
```

#### Using the pcloud_cloudinstances_images_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Images>, Integer, Hash)> pcloud_cloudinstances_images_getall_with_http_info(cloud_instance_id)

```ruby
begin
  # List all images for this cloud instance
  data, status_code, headers = api_instance.pcloud_cloudinstances_images_getall_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Images>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_cloudinstances_images_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**Images**](Images.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_cloudinstances_images_post

> <Image> pcloud_cloudinstances_images_post(cloud_instance_id, body)

Create a new Image (from available images)

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudImagesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::CreateImage.new({source: 'root-project'}) # CreateImage | Parameters for the creation of a new image from available images

begin
  # Create a new Image (from available images)
  result = api_instance.pcloud_cloudinstances_images_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_cloudinstances_images_post: #{e}"
end
```

#### Using the pcloud_cloudinstances_images_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> pcloud_cloudinstances_images_post_with_http_info(cloud_instance_id, body)

```ruby
begin
  # Create a new Image (from available images)
  data, status_code, headers = api_instance.pcloud_cloudinstances_images_post_with_http_info(cloud_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_cloudinstances_images_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **body** | [**CreateImage**](CreateImage.md) | Parameters for the creation of a new image from available images |  |

### Return type

[**Image**](Image.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_cloudinstances_stockimages_get

> <Image> pcloud_cloudinstances_stockimages_get(cloud_instance_id, image_id)

Detailed info of an available stock image

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudImagesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
image_id = 'image_id_example' # String | Image ID of a image

begin
  # Detailed info of an available stock image
  result = api_instance.pcloud_cloudinstances_stockimages_get(cloud_instance_id, image_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_cloudinstances_stockimages_get: #{e}"
end
```

#### Using the pcloud_cloudinstances_stockimages_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> pcloud_cloudinstances_stockimages_get_with_http_info(cloud_instance_id, image_id)

```ruby
begin
  # Detailed info of an available stock image
  data, status_code, headers = api_instance.pcloud_cloudinstances_stockimages_get_with_http_info(cloud_instance_id, image_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_cloudinstances_stockimages_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **image_id** | **String** | Image ID of a image |  |

### Return type

[**Image**](Image.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_cloudinstances_stockimages_getall

> <Images> pcloud_cloudinstances_stockimages_getall(cloud_instance_id, opts)

List all available stock images

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudImagesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
opts = {
  sap: true, # Boolean | Include SAP images with get available stock images
  vtl: true # Boolean | Include VTL images with get available stock images
}

begin
  # List all available stock images
  result = api_instance.pcloud_cloudinstances_stockimages_getall(cloud_instance_id, opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_cloudinstances_stockimages_getall: #{e}"
end
```

#### Using the pcloud_cloudinstances_stockimages_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Images>, Integer, Hash)> pcloud_cloudinstances_stockimages_getall_with_http_info(cloud_instance_id, opts)

```ruby
begin
  # List all available stock images
  data, status_code, headers = api_instance.pcloud_cloudinstances_stockimages_getall_with_http_info(cloud_instance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Images>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_cloudinstances_stockimages_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **sap** | **Boolean** | Include SAP images with get available stock images | [optional] |
| **vtl** | **Boolean** | Include VTL images with get available stock images | [optional] |

### Return type

[**Images**](Images.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_images_get

> <Image> pcloud_images_get(image_id)

Deprecated for /pcloud/v1/cloud-instances/{cloud_instance_id}/stock-images/{image_id} - Detailed info of an available stock image

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudImagesApi.new
image_id = 'image_id_example' # String | Image ID of a image

begin
  # Deprecated for /pcloud/v1/cloud-instances/{cloud_instance_id}/stock-images/{image_id} - Detailed info of an available stock image
  result = api_instance.pcloud_images_get(image_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_images_get: #{e}"
end
```

#### Using the pcloud_images_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> pcloud_images_get_with_http_info(image_id)

```ruby
begin
  # Deprecated for /pcloud/v1/cloud-instances/{cloud_instance_id}/stock-images/{image_id} - Detailed info of an available stock image
  data, status_code, headers = api_instance.pcloud_images_get_with_http_info(image_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_images_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_id** | **String** | Image ID of a image |  |

### Return type

[**Image**](Image.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_images_getall

> <Images> pcloud_images_getall(opts)

Deprecated for /pcloud/v1/cloud-instances/{cloud_instance_id}/stock-images - List all available stock images

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudImagesApi.new
opts = {
  sap: true, # Boolean | Include SAP images with get available stock images
  vtl: true # Boolean | Include VTL images with get available stock images
}

begin
  # Deprecated for /pcloud/v1/cloud-instances/{cloud_instance_id}/stock-images - List all available stock images
  result = api_instance.pcloud_images_getall(opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_images_getall: #{e}"
end
```

#### Using the pcloud_images_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Images>, Integer, Hash)> pcloud_images_getall_with_http_info(opts)

```ruby
begin
  # Deprecated for /pcloud/v1/cloud-instances/{cloud_instance_id}/stock-images - List all available stock images
  data, status_code, headers = api_instance.pcloud_images_getall_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Images>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_images_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sap** | **Boolean** | Include SAP images with get available stock images | [optional] |
| **vtl** | **Boolean** | Include VTL images with get available stock images | [optional] |

### Return type

[**Images**](Images.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_v1_cloudinstances_cosimages_get

> <Job> pcloud_v1_cloudinstances_cosimages_get(cloud_instance_id)

Get detail of last cos-image import job

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudImagesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # Get detail of last cos-image import job
  result = api_instance.pcloud_v1_cloudinstances_cosimages_get(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_v1_cloudinstances_cosimages_get: #{e}"
end
```

#### Using the pcloud_v1_cloudinstances_cosimages_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Job>, Integer, Hash)> pcloud_v1_cloudinstances_cosimages_get_with_http_info(cloud_instance_id)

```ruby
begin
  # Get detail of last cos-image import job
  data, status_code, headers = api_instance.pcloud_v1_cloudinstances_cosimages_get_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Job>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_v1_cloudinstances_cosimages_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**Job**](Job.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_v1_cloudinstances_cosimages_post

> <JobReference> pcloud_v1_cloudinstances_cosimages_post(cloud_instance_id, body)

Create an cos-image import job

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudImagesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::CreateCosImageImportJob.new({bucket_name: 'bucket_name_example', image_filename: 'image_filename_example', image_name: 'image_name_example', region: 'region_example'}) # CreateCosImageImportJob | Parameters for the creation of a new cos-image import job

begin
  # Create an cos-image import job
  result = api_instance.pcloud_v1_cloudinstances_cosimages_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_v1_cloudinstances_cosimages_post: #{e}"
end
```

#### Using the pcloud_v1_cloudinstances_cosimages_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobReference>, Integer, Hash)> pcloud_v1_cloudinstances_cosimages_post_with_http_info(cloud_instance_id, body)

```ruby
begin
  # Create an cos-image import job
  data, status_code, headers = api_instance.pcloud_v1_cloudinstances_cosimages_post_with_http_info(cloud_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobReference>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_v1_cloudinstances_cosimages_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **body** | [**CreateCosImageImportJob**](CreateCosImageImportJob.md) | Parameters for the creation of a new cos-image import job |  |

### Return type

[**JobReference**](JobReference.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_v2_images_export_get

> <Job> pcloud_v2_images_export_get(cloud_instance_id, image_id)

Get detail of last image export job

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudImagesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
image_id = 'image_id_example' # String | Image ID of a image

begin
  # Get detail of last image export job
  result = api_instance.pcloud_v2_images_export_get(cloud_instance_id, image_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_v2_images_export_get: #{e}"
end
```

#### Using the pcloud_v2_images_export_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Job>, Integer, Hash)> pcloud_v2_images_export_get_with_http_info(cloud_instance_id, image_id)

```ruby
begin
  # Get detail of last image export job
  data, status_code, headers = api_instance.pcloud_v2_images_export_get_with_http_info(cloud_instance_id, image_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Job>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_v2_images_export_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **image_id** | **String** | Image ID of a image |  |

### Return type

[**Job**](Job.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_v2_images_export_post

> <JobReference> pcloud_v2_images_export_post(cloud_instance_id, image_id, body)

Add image export job to the jobs queue

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudImagesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
image_id = 'image_id_example' # String | Image ID of a image
body = IbmCloudPower::ExportImage.new({access_key: 'access_key_example', bucket_name: 'bucket_name_example'}) # ExportImage | Parameters for the export

begin
  # Add image export job to the jobs queue
  result = api_instance.pcloud_v2_images_export_post(cloud_instance_id, image_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_v2_images_export_post: #{e}"
end
```

#### Using the pcloud_v2_images_export_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobReference>, Integer, Hash)> pcloud_v2_images_export_post_with_http_info(cloud_instance_id, image_id, body)

```ruby
begin
  # Add image export job to the jobs queue
  data, status_code, headers = api_instance.pcloud_v2_images_export_post_with_http_info(cloud_instance_id, image_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobReference>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudImagesApi->pcloud_v2_images_export_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **image_id** | **String** | Image ID of a image |  |
| **body** | [**ExportImage**](ExportImage.md) | Parameters for the export |  |

### Return type

[**JobReference**](JobReference.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

