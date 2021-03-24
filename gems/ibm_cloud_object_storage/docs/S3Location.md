# IbmCloudObjectStorage::S3Location

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bucket_name** | **String** |  | 
**prefix** | **String** |  | 
**encryption** | [**Encryption**](Encryption.md) |  | [optional] 
**canned_acl** | [**ObjectCannedACL**](ObjectCannedACL.md) |  | [optional] 
**access_control_list** | [**Array&lt;Grant&gt;**](Grant.md) |  | [optional] 
**user_metadata** | [**Array&lt;MetadataEntry&gt;**](MetadataEntry.md) |  | [optional] 
**storage_class** | [**StorageClass**](StorageClass.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudObjectStorage'

instance = IbmCloudObjectStorage::S3Location.new(bucket_name: null,
                                 prefix: null,
                                 encryption: null,
                                 canned_acl: null,
                                 access_control_list: null,
                                 user_metadata: null,
                                 storage_class: null)
```


