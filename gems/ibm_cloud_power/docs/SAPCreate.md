# IbmCloudPower::SAPCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the sap pvm-instance | 
**image_id** | **String** | Image ID of the sap image to use for the server | 
**profile_id** | **String** | SAP Profile ID for the amount of cores and memory | 
**networks** | [**Array&lt;PVMInstanceAddNetwork&gt;**](PVMInstanceAddNetwork.md) | The pvm instance networks information | 
**volume_i_ds** | **Array&lt;String&gt;** | List of Volume IDs to attach to the pvm-instance on creation | [optional] 
**instances** | [**PVMInstanceMultiCreate**](PVMInstanceMultiCreate.md) |  | [optional] 
**ssh_key_name** | **String** | The name of the SSH Key to provide to the server for authenticating | [optional] 
**user_data** | **String** | Cloud init user defined data | [optional] 
**pin_policy** | [**PinPolicy**](PinPolicy.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::SAPCreate.new(name: null,
                                 image_id: null,
                                 profile_id: null,
                                 networks: null,
                                 volume_i_ds: null,
                                 instances: null,
                                 ssh_key_name: null,
                                 user_data: null,
                                 pin_policy: null)
```


