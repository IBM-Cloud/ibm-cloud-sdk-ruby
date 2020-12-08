# IbmCloudVpc::ReservedIP

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **String** | The IP address. This property may add support for IPv6 addresses in the future. When processing a value in this property, verify that the address is in an expected format. If it is not, log an error. Optionally halt processing and surface the error, or bypass the resource on which the unexpected IP address format was encountered. | 
**auto_delete** | **Boolean** | If set to &#x60;true&#x60;, this reserved IP will be automatically deleted when the target is deleted or when the reserved IP is unbound. | 
**created_at** | **DateTime** | The date and time that the reserved IP was created | 
**href** | **String** | The URL for this reserved IP | 
**id** | **String** | The unique identifier for this reserved IP | 
**name** | **String** | The user-defined or system-provided name for this reserved IP | 
**owner** | **String** | The owner of a reserved IP, defining whether it is managed by the user or the provider | 
**resource_type** | **String** | The resource type | 
**target** | [**ReservedIPTarget**](ReservedIPTarget.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::ReservedIP.new(address: null,
                                 auto_delete: null,
                                 created_at: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/subnets/7ec86020-1c6e-4889-b3f0-a15f2e50f87e/reserved_ips/6d353a0f-aeb1-4ae1-832e-1110d10981bb,
                                 id: 6d353a0f-aeb1-4ae1-832e-1110d10981bb,
                                 name: my-reserved-ip,
                                 owner: user,
                                 resource_type: null,
                                 target: null)
```


