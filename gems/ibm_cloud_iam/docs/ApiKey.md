# IbmCloudIam::ApiKey

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**context** | [**ResponseContext**](ResponseContext.md) |  | [optional] 
**id** | **String** | Unique identifier of this API Key. | 
**entity_tag** | **String** | Version of the API Key details object. You need to specify this value when updating the API key to avoid stale updates. | [optional] 
**crn** | **String** | Cloud Resource Name of the item. Example Cloud Resource Name: &#39;crn:v1:bluemix:public:iam-identity:us-south:a/myaccount::apikey:1234-9012-5678&#39; | 
**locked** | **Boolean** | The API key cannot be changed if set to true. | 
**created_at** | **DateTime** | If set contains a date time string of the creation date in ISO format | [optional] 
**created_by** | **String** | IAM ID of the user or service which created the API key. | 
**modified_at** | **DateTime** | If set contains a date time string of the last modification date in ISO format | [optional] 
**name** | **String** | Name of the API key. The name is not checked for uniqueness. Therefore multiple names with the same value can exist. Access is done via the UUID of the API key. | 
**description** | **String** | The optional description of the API key. The &#39;description&#39; property is only available if a description was provided during a create of an API key. | [optional] 
**iam_id** | **String** | The iam_id that this API key authenticates. | 
**account_id** | **String** | ID of the account that this API key authenticates for. | 
**apikey** | **String** | The API key value. This property only contains the API key value for the following cases: create an API key, update a service ID API key that stores the API key value as retrievable, or get a service ID API key that stores the API key value as retrievable. All other operations don&#39;t return the API key value, for example all user API key related operations, except for create, don&#39;t contain the API key value. | 
**history** | [**Array&lt;EnityHistoryRecord&gt;**](EnityHistoryRecord.md) | History of the API key | [optional] 

## Code Sample

```ruby
require 'IbmCloudIam'

instance = IbmCloudIam::ApiKey.new(context: null,
                                 id: null,
                                 entity_tag: null,
                                 crn: null,
                                 locked: null,
                                 created_at: null,
                                 created_by: null,
                                 modified_at: null,
                                 name: null,
                                 description: null,
                                 iam_id: null,
                                 account_id: null,
                                 apikey: null,
                                 history: null)
```


