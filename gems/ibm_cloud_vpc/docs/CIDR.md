# IbmCloudVpc::CIDR

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cidr_block** | **String** | The CIDR block. This property may add support for IPv6 CIDR blocks in the future. When processing a value in this property, verify that the CIDR block is in an expected format. If it is not, log an error. Optionally halt processing and surface the error, or bypass the resource on which the unexpected CIDR block format was encountered. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::CIDR.new(cidr_block: null)
```


