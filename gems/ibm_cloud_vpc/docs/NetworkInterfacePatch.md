# IbmCloudVpc::NetworkInterfacePatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_ip_spoofing** | **Boolean** | Indicates whether IP spoofing is allowed on this interface. Updating to true allows IP spoofing on this interface. Updating to false prevents IP spoofing on this interface. | [optional] 
**name** | **String** | The user-defined name for this network interface | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::NetworkInterfacePatch.new(allow_ip_spoofing: true,
                                 name: my-network-interface)
```


