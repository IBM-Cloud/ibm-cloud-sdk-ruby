# IbmCloudVpc::FlowLogCollectorsApi

All URIs are relative to *https://us-south.iaas.cloud.ibm.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_flow_log_collector**](FlowLogCollectorsApi.md#create_flow_log_collector) | **POST** /flow_log_collectors | Create a flow log collector
[**delete_flow_log_collector**](FlowLogCollectorsApi.md#delete_flow_log_collector) | **DELETE** /flow_log_collectors/{id} | Delete the specified flow log collector
[**get_flow_log_collector**](FlowLogCollectorsApi.md#get_flow_log_collector) | **GET** /flow_log_collectors/{id} | Retrieve the specified flow log collector
[**list_flow_log_collectors**](FlowLogCollectorsApi.md#list_flow_log_collectors) | **GET** /flow_log_collectors | List all flow log collectors
[**update_flow_log_collector**](FlowLogCollectorsApi.md#update_flow_log_collector) | **PATCH** /flow_log_collectors/{id} | Update the specified flow log collector



## create_flow_log_collector

> FlowLogCollector create_flow_log_collector(version, generation, unknown_base_type)

Create a flow log collector

This request creates and starts a new flow log collector from a flow log collector prototype object. The prototype object is structured in the same way as a retrieved flow log collector, and contains the information necessary to create and start the new flow log collector.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::FlowLogCollectorsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
unknown_base_type = IbmCloudVpc::UNKNOWN_BASE_TYPE.new # UNKNOWN_BASE_TYPE | The flow log collector prototype object

begin
  #Create a flow log collector
  result = api_instance.create_flow_log_collector(version, generation, unknown_base_type)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling FlowLogCollectorsApi->create_flow_log_collector: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **unknown_base_type** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md)| The flow log collector prototype object | 

### Return type

[**FlowLogCollector**](FlowLogCollector.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_flow_log_collector

> delete_flow_log_collector(version, generation, id)

Delete the specified flow log collector

This request stops and deletes a flow log collector. Collected flow logs remain available within the flow log collector's bucket.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::FlowLogCollectorsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The flow log collector identifier

begin
  #Delete the specified flow log collector
  api_instance.delete_flow_log_collector(version, generation, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling FlowLogCollectorsApi->delete_flow_log_collector: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The flow log collector identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_flow_log_collector

> FlowLogCollector get_flow_log_collector(version, generation, id)

Retrieve the specified flow log collector

This request retrieves a single flow log collector specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::FlowLogCollectorsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The flow log collector identifier

begin
  #Retrieve the specified flow log collector
  result = api_instance.get_flow_log_collector(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling FlowLogCollectorsApi->get_flow_log_collector: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The flow log collector identifier | 

### Return type

[**FlowLogCollector**](FlowLogCollector.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_flow_log_collectors

> FlowLogCollectorCollection list_flow_log_collectors(version, generation, opts)

List all flow log collectors

This request retrieves all flow log collectors in the region. A flow log collector summarizes data sent over one or more network interfaces within a VPC, depending on the chosen target.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::FlowLogCollectorsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50, # Integer | The number of resources to return on a page
  resource_group_id: 'resource_group_id_example', # String | Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers
  name: 'name_example', # String | Filters the collection to resources with the exact specified name
  vpc_id: 'vpc_id_example', # String | Filters the collection to resources in the VPC with the specified identifier
  vpc_crn: 'vpc_crn_example', # String | Filters the collection to resources in the VPC with the specified CRN
  vpc_name: 'vpc_name_example', # String | Filters the collection to resources in the VPC with the exact specified name
  target_id: 'target_id_example', # String | Filters the collection to flow log collectors that target the specified resource.
  target_resource_type: 'target_resource_type_example' # String | Filters the collection to flow log collectors that target the specified resource type.
}

begin
  #List all flow log collectors
  result = api_instance.list_flow_log_collectors(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling FlowLogCollectorsApi->list_flow_log_collectors: #{e}"
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
 **vpc_id** | **String**| Filters the collection to resources in the VPC with the specified identifier | [optional] 
 **vpc_crn** | **String**| Filters the collection to resources in the VPC with the specified CRN | [optional] 
 **vpc_name** | **String**| Filters the collection to resources in the VPC with the exact specified name | [optional] 
 **target_id** | **String**| Filters the collection to flow log collectors that target the specified resource. | [optional] 
 **target_resource_type** | **String**| Filters the collection to flow log collectors that target the specified resource type. | [optional] 

### Return type

[**FlowLogCollectorCollection**](FlowLogCollectorCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_flow_log_collector

> FlowLogCollector update_flow_log_collector(version, generation, id, flow_log_collector_patch)

Update the specified flow log collector

This request updates a flow log collector with the information in a provided flow log collector patch. The flow log collector patch object is structured in the same way as a retrieved flow log collector and contains only the information to be updated.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::FlowLogCollectorsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The flow log collector identifier
flow_log_collector_patch = IbmCloudVpc::FlowLogCollectorPatch.new # FlowLogCollectorPatch | The flow log collector patch

begin
  #Update the specified flow log collector
  result = api_instance.update_flow_log_collector(version, generation, id, flow_log_collector_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling FlowLogCollectorsApi->update_flow_log_collector: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The flow log collector identifier | 
 **flow_log_collector_patch** | [**FlowLogCollectorPatch**](FlowLogCollectorPatch.md)| The flow log collector patch | 

### Return type

[**FlowLogCollector**](FlowLogCollector.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/merge-patch+json
- **Accept**: application/json

