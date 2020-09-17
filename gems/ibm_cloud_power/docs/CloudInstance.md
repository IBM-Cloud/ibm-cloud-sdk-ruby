# IbmCloudPower::CloudInstance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cloud_instance_id** | **String** | Cloud Instance ID | 
**name** | **String** | Cloud Instance Name | 
**tenant_id** | **String** | The tenant ID that owns this cloud instance | 
**openstack_id** | **String** | The open stack ID that controls this cloud instance | 
**region** | **String** | The region the cloud instance lives | 
**enabled** | **Boolean** | Indicates if the cloud instance is enabled | 
**initialized** | **Boolean** | Indicates if the cloud instance is initialized and ready for use | 
**limits** | [**CloudInstanceUsageLimits**](CloudInstanceUsageLimits.md) |  | 
**usage** | [**CloudInstanceUsageLimits**](CloudInstanceUsageLimits.md) |  | 
**capabilities** | **Array&lt;String&gt;** | Cloud Instance Capabilities | [optional] 
**pvm_instances** | [**Array&lt;PVMInstanceReference&gt;**](PVMInstanceReference.md) | PVM instances owned by the Cloud Instance | 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::CloudInstance.new(cloud_instance_id: null,
                                 name: null,
                                 tenant_id: null,
                                 openstack_id: null,
                                 region: null,
                                 enabled: null,
                                 initialized: null,
                                 limits: null,
                                 usage: null,
                                 capabilities: null,
                                 pvm_instances: null)
```


