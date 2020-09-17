# IbmCloudVpc::Volume

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**capacity** | **Integer** | The capacity of the volume in gigabytes. Note that the specified minimum and maximum capacity values for creating or updating volumes may expand in the future. | 
**created_at** | **DateTime** | The date and time that the volume was created | 
**crn** | **String** | The CRN for this volume | 
**encryption** | **String** | The type of encryption used on the volume | [default to &#39;provider_managed&#39;]
**encryption_key** | [**EncryptionKeyReference**](EncryptionKeyReference.md) |  | [optional] 
**href** | **String** | The URL for this volume | 
**id** | **String** | The unique identifier for this volume | 
**iops** | **Integer** | The bandwidth for the volume | 
**name** | **String** | The unique user-defined name for this volume | 
**profile** | [**VolumeProfileReference**](VolumeProfileReference.md) |  | 
**resource_group** | [**ResourceGroupReference**](ResourceGroupReference.md) |  | 
**status** | **String** | The status of the volume | 
**volume_attachments** | [**Array&lt;VolumeAttachmentReferenceVolumeContext&gt;**](VolumeAttachmentReferenceVolumeContext.md) | The collection of volume attachments attaching instances to the volume | 
**zone** | [**ZoneReference**](ZoneReference.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::Volume.new(capacity: 100,
                                 created_at: null,
                                 crn: crn:v1:bluemix:public:is:us-south-1:a/123456::volume:1a6b7274-678d-4dfb-8981-c71dd9d4daa5,
                                 encryption: provider_managed,
                                 encryption_key: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/volumes/1a6b7274-678d-4dfb-8981-c71dd9d4daa5,
                                 id: 1a6b7274-678d-4dfb-8981-c71dd9d4daa5,
                                 iops: 10000,
                                 name: my-volume,
                                 profile: null,
                                 resource_group: null,
                                 status: available,
                                 volume_attachments: null,
                                 zone: null)
```


