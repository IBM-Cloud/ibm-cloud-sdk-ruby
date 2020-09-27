# IbmCloudResourceController::ResourceReclamationsApi

All URIs are relative to *https://resource-controller.cloud.ibm.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_reclamations**](ResourceReclamationsApi.md#list_reclamations) | **GET** /v1/reclamations | Get a list of all reclamations
[**run_reclamation_action**](ResourceReclamationsApi.md#run_reclamation_action) | **POST** /v1/reclamations/{id}/actions/{action_name} | Perform a reclamation action



## list_reclamations

> ReclamationsList list_reclamations(opts)

Get a list of all reclamations

Get a list of all reclamations.

### Example

```ruby
# load the gem
require 'ibm_cloud_resource_controller'
# setup authorization
IbmCloudResourceController.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudResourceController::ResourceReclamationsApi.new
opts = {
  account_id: 'account_id_example', # String | An alpha-numeric value identifying the account ID.
  resource_instance_id: 'resource_instance_id_example' # String | The short ID of the resource instance.
}

begin
  #Get a list of all reclamations
  result = api_instance.list_reclamations(opts)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceReclamationsApi->list_reclamations: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| An alpha-numeric value identifying the account ID. | [optional] 
 **resource_instance_id** | **String**| The short ID of the resource instance. | [optional] 

### Return type

[**ReclamationsList**](ReclamationsList.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## run_reclamation_action

> Reclamation run_reclamation_action(id, action_name, opts)

Perform a reclamation action

Reclaim (provisionally delete) a resource so that it can no longer be used, or restore a resource so that it's usable again.

### Example

```ruby
# load the gem
require 'ibm_cloud_resource_controller'
# setup authorization
IbmCloudResourceController.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudResourceController::ResourceReclamationsApi.new
id = 'id_example' # String | The ID associated with the reclamation.
action_name = 'action_name_example' # String | The reclamation action name. Specify `reclaim` to delete a resource, or `restore` to restore a resource.
opts = {
  reclamation_actions_post: IbmCloudResourceController::ReclamationActionsPost.new # ReclamationActionsPost | 
}

begin
  #Perform a reclamation action
  result = api_instance.run_reclamation_action(id, action_name, opts)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceReclamationsApi->run_reclamation_action: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID associated with the reclamation. | 
 **action_name** | **String**| The reclamation action name. Specify &#x60;reclaim&#x60; to delete a resource, or &#x60;restore&#x60; to restore a resource. | 
 **reclamation_actions_post** | [**ReclamationActionsPost**](ReclamationActionsPost.md)|  | [optional] 

### Return type

[**Reclamation**](Reclamation.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

