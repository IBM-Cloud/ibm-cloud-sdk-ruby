# IbmCloudResourceController::ResourceInstancePost

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the instance. Must be 180 characters or less and cannot include any special characters other than &#x60;(space) - . _ :&#x60;. | 
**target** | **String** | The deployment location where the instance should be hosted. | 
**resource_group** | **String** | Short or long ID of resource group | 
**resource_plan_id** | **String** | The unique ID of the plan associated with the offering. This value is provided by and stored in the global catalog. | 
**tags** | **Array&lt;String&gt;** | Tags that are attached to the instance after provisioning. These tags can be searched and managed through the Tagging API in IBM Cloud. | [optional] 
**allow_cleanup** | **Boolean** | A boolean that dictates if the resource instance should be deleted (cleaned up) during the processing of a region instance delete call. | [optional] [default to false]
**parameters** | **Hash&lt;String, Object&gt;** | Configuration options represented as key-value pairs that are passed through to the target resource brokers. | [optional] 

## Code Sample

```ruby
require 'IbmCloudResourceController'

instance = IbmCloudResourceController::ResourceInstancePost.new(name: my-instance,
                                 target: bluemix-us-south,
                                 resource_group: 5c49eabc-f5e8-5881-a37e-2d100a33b3df,
                                 resource_plan_id: cloudant-standard,
                                 tags: null,
                                 allow_cleanup: null,
                                 parameters: null)
```


