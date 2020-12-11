# IbmCloudVpc::Image

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | The date and time that the image was created | 
**crn** | **String** | The CRN for this image | 
**encryption** | **String** | The type of encryption used on the image | [default to &#39;none&#39;]
**encryption_key** | [**EncryptionKeyReference**](EncryptionKeyReference.md) | The key that will be used to encrypt volumes created from this image (unless an alternate &#x60;encryption_key&#x60; is provided at volume creation).  This property will be present for images with an &#x60;encryption&#x60; type of &#x60;user_managed&#x60;. | [optional] 
**file** | [**ImageFile**](ImageFile.md) |  | 
**href** | **String** | The URL for this image | 
**id** | **String** | The unique identifier for this image | 
**minimum_provisioned_size** | **Integer** | The minimum size (in gigabytes) of a volume onto which this image may be provisioned.  This property may be absent if the image has a &#x60;status&#x60; of &#x60;pending&#x60;, &#x60;tentative&#x60;, or &#x60;failed&#x60;. | [optional] 
**name** | **String** | The user-defined or system-provided name for this image | 
**operating_system** | [**OperatingSystem**](OperatingSystem.md) |  | [optional] 
**resource_group** | [**ResourceGroupReference**](ResourceGroupReference.md) |  | 
**status** | **String** | The status of this image | 
**visibility** | **String** | Whether the image is publicly visible or private to the account | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::Image.new(created_at: null,
                                 crn: crn:v1:bluemix:public:is:us-south:a/123456::image:72b27b5c-f4b0-48bb-b954-5becc7c1dcb8,
                                 encryption: user_managed,
                                 encryption_key: null,
                                 file: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/images/72b27b5c-f4b0-48bb-b954-5becc7c1dcb8,
                                 id: 72b27b5c-f4b0-48bb-b954-5becc7c1dcb8,
                                 minimum_provisioned_size: null,
                                 name: my-image,
                                 operating_system: null,
                                 resource_group: null,
                                 status: null,
                                 visibility: null)
```


