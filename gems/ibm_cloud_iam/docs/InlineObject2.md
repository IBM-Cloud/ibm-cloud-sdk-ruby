# IbmCloudIam::InlineObject2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**grant_type** | **String** | Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:iam-authz&#x60;. | 
**access_token** | **String** | The IAM access token of the identity that has the appropriate authorization to create an IAM access token for a given resource. | 
**desired_iam_id** | **String** | The IAM ID of the IAM access token identity that should be created. The desired_iam_id identifies a resource identity. The IAM ID consists of the prefix crn- and the CRN of the target identity, e.g. crn-crn:v1:bluemix:public:cloud-object-storage:global:a/59bcbfa6ea2f006b4ed7094c1a08dcdd:1a0ec336-f391-4091-a6fb-5e084a4c56f4::. | 

## Code Sample

```ruby
require 'IbmCloudIam'

instance = IbmCloudIam::InlineObject2.new(grant_type: null,
                                 access_token: null,
                                 desired_iam_id: null)
```


