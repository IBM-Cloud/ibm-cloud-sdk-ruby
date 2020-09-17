# IbmCloudPower::SAPProfile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**profile_id** | **String** | SAP Profile ID | 
**type** | **String** | Type of profile | [default to &#39;balanced&#39;]
**cores** | **Integer** | Amount of cores | 
**memory** | **Integer** | Amount of memory (in GB) | 
**certified** | **Boolean** | Has certification been performed on profile | 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::SAPProfile.new(profile_id: null,
                                 type: null,
                                 cores: null,
                                 memory: null,
                                 certified: null)
```


