# IbmCloudPower::PCloudImagesApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pcloud_cloudinstances_images_delete**](PCloudImagesApi.md#pcloud_cloudinstances_images_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/images/{image_id} | Delete an image from a cloud instance
[**pcloud_cloudinstances_images_export_post**](PCloudImagesApi.md#pcloud_cloudinstances_images_export_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/images/{image_id}/export | Export an image
[**pcloud_cloudinstances_images_get**](PCloudImagesApi.md#pcloud_cloudinstances_images_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/images/{image_id} | Detailed information of an image
[**pcloud_cloudinstances_images_getall**](PCloudImagesApi.md#pcloud_cloudinstances_images_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/images | List all of the images for this cloud instance
[**pcloud_cloudinstances_images_post**](PCloudImagesApi.md#pcloud_cloudinstances_images_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/images | Create a new image from available images
[**pcloud_images_get**](PCloudImagesApi.md#pcloud_images_get) | **GET** /pcloud/v1/images/{image_id} | Detailed information of an available image
[**pcloud_images_getall**](PCloudImagesApi.md#pcloud_images_getall) | **GET** /pcloud/v1/images | List all images available for copying into cloud instances



## pcloud_cloudinstances_images_delete

> Object pcloud_cloudinstances_images_delete(cloud_instance_id, image_id)

Delete an image from a cloud instance

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudImagesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
image_id = 'image_id_example' # String | Image ID of a image

begin
  #Delete an image from a cloud instance
  result = api_instance.pcloud_cloudinstances_images_delete(cloud_instance_id, image_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudImagesApi->pcloud_cloudinstances_images_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **image_id** | **String**| Image ID of a image | 

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

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudImagesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
image_id = 'image_id_example' # String | Image ID of a image
body = IbmCloudPower::ExportImage.new # ExportImage | Parameters for exporting an image

begin
  #Export an image
  result = api_instance.pcloud_cloudinstances_images_export_post(cloud_instance_id, image_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudImagesApi->pcloud_cloudinstances_images_export_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **image_id** | **String**| Image ID of a image | 
 **body** | [**ExportImage**](ExportImage.md)| Parameters for exporting an image | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_cloudinstances_images_get

> Image pcloud_cloudinstances_images_get(cloud_instance_id, image_id)

Detailed information of an image

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudImagesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
image_id = 'image_id_example' # String | Image ID of a image

begin
  #Detailed information of an image
  result = api_instance.pcloud_cloudinstances_images_get(cloud_instance_id, image_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudImagesApi->pcloud_cloudinstances_images_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **image_id** | **String**| Image ID of a image | 

### Return type

[**Image**](Image.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_cloudinstances_images_getall

> Images pcloud_cloudinstances_images_getall(cloud_instance_id)

List all of the images for this cloud instance

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudImagesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  #List all of the images for this cloud instance
  result = api_instance.pcloud_cloudinstances_images_getall(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudImagesApi->pcloud_cloudinstances_images_getall: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 

### Return type

[**Images**](Images.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_cloudinstances_images_post

> Image pcloud_cloudinstances_images_post(cloud_instance_id, body)

Create a new image from available images

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudImagesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::CreateImage.new # CreateImage | Parameters for the creation of a new image from available images

begin
  #Create a new image from available images
  result = api_instance.pcloud_cloudinstances_images_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudImagesApi->pcloud_cloudinstances_images_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **body** | [**CreateImage**](CreateImage.md)| Parameters for the creation of a new image from available images | 

### Return type

[**Image**](Image.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_images_get

> Images pcloud_images_get(image_id)

Detailed information of an available image

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudImagesApi.new
image_id = 'image_id_example' # String | Image ID of a image

begin
  #Detailed information of an available image
  result = api_instance.pcloud_images_get(image_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudImagesApi->pcloud_images_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_id** | **String**| Image ID of a image | 

### Return type

[**Images**](Images.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_images_getall

> Images pcloud_images_getall(opts)

List all images available for copying into cloud instances

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudImagesApi.new
opts = {
  sap: true # Boolean | Include SAP images with get available stock images
}

begin
  #List all images available for copying into cloud instances
  result = api_instance.pcloud_images_getall(opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudImagesApi->pcloud_images_getall: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sap** | **Boolean**| Include SAP images with get available stock images | [optional] 

### Return type

[**Images**](Images.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

