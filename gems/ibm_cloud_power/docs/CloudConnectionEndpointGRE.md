# IbmCloudPower::CloudConnectionEndpointGRE

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **Boolean** | enable gre for this cloud connection (default&#x3D;false) | [optional] 
**tunnels** | [**Array&lt;CloudConnectionGRETunnel&gt;**](CloudConnectionGRETunnel.md) | gre tunnels configured | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::CloudConnectionEndpointGRE.new(enabled: null,
                                 tunnels: null)
```


