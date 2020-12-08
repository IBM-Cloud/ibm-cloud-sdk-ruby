# IbmCloudVpc::ImagesApi

All URIs are relative to *https://us-south.iaas.cloud.ibm.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_image**](ImagesApi.md#create_image) | **POST** /images | Create an image
[**delete_image**](ImagesApi.md#delete_image) | **DELETE** /images/{id} | Delete specified image
[**get_image**](ImagesApi.md#get_image) | **GET** /images/{id} | Retrieve the specified image
[**get_operating_system**](ImagesApi.md#get_operating_system) | **GET** /operating_systems/{name} | Retrieves an operating system
[**list_images**](ImagesApi.md#list_images) | **GET** /images | List all images
[**list_operating_systems**](ImagesApi.md#list_operating_systems) | **GET** /operating_systems | Retrieves all operating systems
[**update_image**](ImagesApi.md#update_image) | **PATCH** /images/{id} | Update specified image



## create_image

> Image create_image(version, generation, image_prototype)

Create an image

This request creates a new image from an image prototype object. The prototype object is structured in the same way as a retrieved image, and contains the information necessary to create the new image. A URL to the image file on object storage must be provided.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::ImagesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
image_prototype = {"file":{"href":"cos://us-south/my-bucket/my-image.qcow2"},"operating_system":{"name":"debian-9-amd64"}} # ImagePrototype | The image prototype object

begin
  #Create an image
  result = api_instance.create_image(version, generation, image_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling ImagesApi->create_image: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **image_prototype** | [**ImagePrototype**](ImagePrototype.md)| The image prototype object | 

### Return type

[**Image**](Image.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_image

> delete_image(version, generation, id)

Delete specified image

This request deletes an image. This operation cannot be reversed. System-provided images are not allowed to be deleted. An image with a `status` of `pending`, `tentative`, or `deleting` cannot be deleted.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::ImagesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The image identifier

begin
  #Delete specified image
  api_instance.delete_image(version, generation, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling ImagesApi->delete_image: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The image identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_image

> Image get_image(version, generation, id)

Retrieve the specified image

This request retrieves a single image specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::ImagesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The image identifier

begin
  #Retrieve the specified image
  result = api_instance.get_image(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling ImagesApi->get_image: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The image identifier | 

### Return type

[**Image**](Image.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_operating_system

> OperatingSystem get_operating_system(version, generation, name)

Retrieves an operating system

This request retrieves a single operating system specified by the name in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::ImagesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
name = 'name_example' # String | The operating system name

begin
  #Retrieves an operating system
  result = api_instance.get_operating_system(version, generation, name)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling ImagesApi->get_operating_system: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **name** | **String**| The operating system name | 

### Return type

[**OperatingSystem**](OperatingSystem.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_images

> ImageCollection list_images(version, generation, opts)

List all images

This request lists all provisionable images available in the region. An image provides source data for a volume. Images are either system-provided, or created from another source, such as importing from object storage.  The images will be sorted by their `created_at` property values, with the newest first. Images with identical `created_at` values will be secondarily sorted by ascending `id` property values.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::ImagesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50, # Integer | The number of resources to return on a page
  resource_group_id: 'resource_group_id_example', # String | Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers
  name: 'name_example', # String | Filters the collection to resources with the exact specified name
  visibility: 'visibility_example' # String | Filters the collection to images with the specified `visibility`
}

begin
  #List all images
  result = api_instance.list_images(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling ImagesApi->list_images: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **start** | **String**| A server-supplied token determining what resource to start the page on | [optional] 
 **limit** | **Integer**| The number of resources to return on a page | [optional] [default to 50]
 **resource_group_id** | **String**| Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers | [optional] 
 **name** | **String**| Filters the collection to resources with the exact specified name | [optional] 
 **visibility** | **String**| Filters the collection to images with the specified &#x60;visibility&#x60; | [optional] 

### Return type

[**ImageCollection**](ImageCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_operating_systems

> OperatingSystemCollection list_operating_systems(version, generation, opts)

Retrieves all operating systems

This request retrieves all operating systems.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::ImagesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50 # Integer | The number of resources to return on a page
}

begin
  #Retrieves all operating systems
  result = api_instance.list_operating_systems(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling ImagesApi->list_operating_systems: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **start** | **String**| A server-supplied token determining what resource to start the page on | [optional] 
 **limit** | **Integer**| The number of resources to return on a page | [optional] [default to 50]

### Return type

[**OperatingSystemCollection**](OperatingSystemCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_image

> Image update_image(version, generation, id, image_patch)

Update specified image

This request updates an image with the information in a provided image patch. The image patch object is structured in the same way as a retrieved image and contains only the information to be updated. System-provided images are not allowed to be updated. An image with a `status` of `deleting` cannot be updated.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::ImagesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The image identifier
image_patch = IbmCloudVpc::ImagePatch.new # ImagePatch | The image patch

begin
  #Update specified image
  result = api_instance.update_image(version, generation, id, image_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling ImagesApi->update_image: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The image identifier | 
 **image_patch** | [**ImagePatch**](ImagePatch.md)| The image patch | 

### Return type

[**Image**](Image.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/merge-patch+json
- **Accept**: application/json

