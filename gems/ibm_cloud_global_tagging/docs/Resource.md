# IbmCloudGlobalTagging::Resource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** | The CRN or IMS ID of the resource |  |
| **resource_type** | **String** | The IMS resource type of the resource. It can be one of SoftLayer_Virtual_DedicatedHost, SoftLayer_Hardware, SoftLayer_Hardware_Server, SoftLayer_Network_Application_Delivery_Controller, SoftLayer_Network_Vlan, SoftLayer_Network_Vlan_Firewall, SoftLayer_Network_Component_Firewall, SoftLayer_Network_Firewall_Module_Context, SoftLayer_Virtual_Guest | [optional] |

## Example

```ruby
require 'ibm_cloud_global_tagging'

instance = IbmCloudGlobalTagging::Resource.new(
  resource_id: null,
  resource_type: null
)
```

