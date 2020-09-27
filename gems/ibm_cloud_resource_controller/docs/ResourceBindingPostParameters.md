# IbmCloudResourceController::ResourceBindingPostParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceid_crn** | **String** | An optional platform defined option to reuse an existing IAM serviceId for the role assignment. | [optional] 

## Code Sample

```ruby
require 'IbmCloudResourceController'

instance = IbmCloudResourceController::ResourceBindingPostParameters.new(serviceid_crn: crn:v1:bluemix:public:iam-identity::a/9fceaa56d1ab84893af6b9eec5ab81bb::serviceid:ServiceId-fe4c29b5-db13-410a-bacc-b5779a03d393)
```


