# IbmCloudResourceController::ResourceInstancePost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the instance. |  |
| **target** | **String** | The deployment CRN or location where the instance should be hosted. |  |
| **resource_group** | **String** | The CRN or ID of the resource group. |  |
| **resource_plan_id** | **String** | The unique ID of the plan associated with the offering. This value is provided by and stored in the global catalog. |  |
| **tags** | **Array&lt;String&gt;** | Tags that are attached to the instance after provisioning. These tags can be searched and managed through the Tagging API in IBM Cloud. | [optional] |
| **allow_cleanup** | **Boolean** | A boolean that dictates if the resource instance should be deleted (cleaned up) during the processing of a region instance delete call. | [optional][default to false] |
| **parameters** | **Hash&lt;String, Object&gt;** | Configuration options represented as key-value pairs that are passed through to the target resource brokers.&lt;br&gt;&lt;br&gt; Set the &#x60;onetime_credentials&#x60; property to specify whether newly created resource key credentials can be retrieved by using the get resource key or the get a list of all of the resource keys requests.&lt;br&gt;&lt;br&gt; Set the &#x60;subscription_id&#x60; property to the ID of the subscription if the targeted plan is a subscription plan. | [optional] |

## Example

```ruby
require 'ibm_cloud_resource_controller'

instance = IbmCloudResourceController::ResourceInstancePost.new(
  name: my-instance,
  target: us-south,
  resource_group: 5c49eabc-f5e8-5881-a37e-2d100a33b3df,
  resource_plan_id: cloudant-standard,
  tags: null,
  allow_cleanup: null,
  parameters: null
)
```

