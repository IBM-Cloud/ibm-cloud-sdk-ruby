# IbmCloudPower::Tenant

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tenant_id** | **String** | Tenant ID | 
**enabled** | **Boolean** | Indicates if the tenant is enabled | 
**creation_date** | **DateTime** | Date of Tenant creation | 
**ssh_keys** | [**Array&lt;SSHKey&gt;**](SSHKey.md) | Tenant SSH Keys | [optional] 
**cloud_instances** | [**Array&lt;CloudInstanceReference&gt;**](CloudInstanceReference.md) | Cloud Instances owned by the Tenant | 
**icn** | **String** | IBM Customer Number | [optional] 
**peering_networks** | [**Array&lt;PeeringNetwork&gt;**](PeeringNetwork.md) | Peering Network Information (optional) | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::Tenant.new(tenant_id: null,
                                 enabled: null,
                                 creation_date: null,
                                 ssh_keys: null,
                                 cloud_instances: null,
                                 icn: null,
                                 peering_networks: null)
```


