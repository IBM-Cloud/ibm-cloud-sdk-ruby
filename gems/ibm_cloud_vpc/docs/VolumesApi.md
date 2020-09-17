# IbmCloudVpc::VolumesApi

All URIs are relative to *https://us-south.iaas.cloud.ibm.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_volume**](VolumesApi.md#create_volume) | **POST** /volumes | Create a volume
[**delete_volume**](VolumesApi.md#delete_volume) | **DELETE** /volumes/{id} | Delete specified volume
[**get_volume**](VolumesApi.md#get_volume) | **GET** /volumes/{id} | Retrieve specified volume
[**get_volume_profile**](VolumesApi.md#get_volume_profile) | **GET** /volume/profiles/{name} | Retrieve specified volume profile
[**list_volume_profiles**](VolumesApi.md#list_volume_profiles) | **GET** /volume/profiles | List all volume profiles
[**list_volumes**](VolumesApi.md#list_volumes) | **GET** /volumes | List all volumes
[**update_volume**](VolumesApi.md#update_volume) | **PATCH** /volumes/{id} | Update specified volume



## create_volume

> Volume create_volume(version, generation, volume_prototype)

Create a volume

This request creates a new volume from a volume prototype object. The prototype object is structured in the same way as a retrieved volume, and contains the information necessary to create the new volume.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VolumesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
volume_prototype = {"capacity":100,"zone":{"name":"us-south-1"}} # VolumePrototype | The volume prototype object

begin
  #Create a volume
  result = api_instance.create_volume(version, generation, volume_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VolumesApi->create_volume: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **volume_prototype** | [**VolumePrototype**](VolumePrototype.md)| The volume prototype object | 

### Return type

[**Volume**](Volume.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_volume

> delete_volume(version, generation, id)

Delete specified volume

This request deletes a volume. This operation cannot be reversed. For this request to succeed, the volume must not be attached to any instances.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VolumesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The volume identifier

begin
  #Delete specified volume
  api_instance.delete_volume(version, generation, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VolumesApi->delete_volume: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The volume identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_volume

> Volume get_volume(version, generation, id)

Retrieve specified volume

This request retrieves a single volume specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VolumesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The volume identifier

begin
  #Retrieve specified volume
  result = api_instance.get_volume(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VolumesApi->get_volume: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The volume identifier | 

### Return type

[**Volume**](Volume.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_volume_profile

> VolumeProfile get_volume_profile(version, generation, name)

Retrieve specified volume profile

This request retrieves a single volume profile specified by the name in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VolumesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
name = 'name_example' # String | The volume profile name

begin
  #Retrieve specified volume profile
  result = api_instance.get_volume_profile(version, generation, name)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VolumesApi->get_volume_profile: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **name** | **String**| The volume profile name | 

### Return type

[**VolumeProfile**](VolumeProfile.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_volume_profiles

> VolumeProfileCollection list_volume_profiles(version, generation, opts)

List all volume profiles

This request lists all volume profiles available in the region. A volume profile specifies the performance characteristics and pricing model for a volume.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VolumesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50 # Integer | The number of resources to return on a page
}

begin
  #List all volume profiles
  result = api_instance.list_volume_profiles(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VolumesApi->list_volume_profiles: #{e}"
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

[**VolumeProfileCollection**](VolumeProfileCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_volumes

> VolumeCollection list_volumes(version, generation, opts)

List all volumes

This request lists all volumes in the region. Volumes are network-connected block storage devices that may be attached to one or more instances in the same region.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VolumesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50, # Integer | The number of resources to return on a page
  name: 'name_example', # String | Filters the collection to resources with the exact specified name
  zone_name: 'zone_name_example' # String | Filters the collection to resources in the zone with the exact specified name
}

begin
  #List all volumes
  result = api_instance.list_volumes(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VolumesApi->list_volumes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **start** | **String**| A server-supplied token determining what resource to start the page on | [optional] 
 **limit** | **Integer**| The number of resources to return on a page | [optional] [default to 50]
 **name** | **String**| Filters the collection to resources with the exact specified name | [optional] 
 **zone_name** | **String**| Filters the collection to resources in the zone with the exact specified name | [optional] 

### Return type

[**VolumeCollection**](VolumeCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_volume

> Volume update_volume(version, generation, id, volume_patch)

Update specified volume

This request updates a volume with the information in a provided volume patch. The volume patch object is structured in the same way as a retrieved volume and contains only the information to be updated.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VolumesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The volume identifier
volume_patch = IbmCloudVpc::VolumePatch.new # VolumePatch | The volume patch

begin
  #Update specified volume
  result = api_instance.update_volume(version, generation, id, volume_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VolumesApi->update_volume: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The volume identifier | 
 **volume_patch** | [**VolumePatch**](VolumePatch.md)| The volume patch | 

### Return type

[**Volume**](Volume.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

