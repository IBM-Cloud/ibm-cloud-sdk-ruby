# IbmCloudVpc::GeographyApi

All URIs are relative to *https://us-south.iaas.cloud.ibm.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_region**](GeographyApi.md#get_region) | **GET** /regions/{name} | Retrieve a region
[**get_region_zone**](GeographyApi.md#get_region_zone) | **GET** /regions/{region_name}/zones/{zone_name} | Retrieve a zone
[**list_region_zones**](GeographyApi.md#list_region_zones) | **GET** /regions/{region_name}/zones | List all zones in a region
[**list_regions**](GeographyApi.md#list_regions) | **GET** /regions | List all regions



## get_region

> Region get_region(version, generation, name)

Retrieve a region

This request retrieves a single region specified by the name in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::GeographyApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
name = 'name_example' # String | The region name

begin
  #Retrieve a region
  result = api_instance.get_region(version, generation, name)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling GeographyApi->get_region: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **name** | **String**| The region name | 

### Return type

[**Region**](Region.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_region_zone

> Zone get_region_zone(version, generation, region_name, zone_name)

Retrieve a zone

This request retrieves a single zone specified by the region and zone names in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::GeographyApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
region_name = 'region_name_example' # String | The region name
zone_name = 'zone_name_example' # String | The zone name

begin
  #Retrieve a zone
  result = api_instance.get_region_zone(version, generation, region_name, zone_name)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling GeographyApi->get_region_zone: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **region_name** | **String**| The region name | 
 **zone_name** | **String**| The zone name | 

### Return type

[**Zone**](Zone.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_region_zones

> ZoneCollection list_region_zones(version, generation, region_name)

List all zones in a region

This request lists all zones in a region. Zones represent logically-isolated data centers with high-bandwidth and low-latency interconnects to other zones in the same region. Faults in a zone do not affect other zones.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::GeographyApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
region_name = 'region_name_example' # String | The region name

begin
  #List all zones in a region
  result = api_instance.list_region_zones(version, generation, region_name)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling GeographyApi->list_region_zones: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **region_name** | **String**| The region name | 

### Return type

[**ZoneCollection**](ZoneCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_regions

> RegionCollection list_regions(version, generation)

List all regions

This request lists all regions. Each region is a separate geographic area that contains multiple isolated zones. Resources can be provisioned into a one or more zones in a region. Each zone is isolated, but connected to other zones in the same region with low-latency and high-bandwidth links. Regions represent the top-level of fault isolation available. Resources deployed within a single region also benefit from the low latency afforded by geographic proximity.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::GeographyApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.

begin
  #List all regions
  result = api_instance.list_regions(version, generation)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling GeographyApi->list_regions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 

### Return type

[**RegionCollection**](RegionCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

