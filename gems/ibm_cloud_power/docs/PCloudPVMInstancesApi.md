# IbmCloudPower::PCloudPVMInstancesApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pcloud_pvminstances_action_post**](PCloudPVMInstancesApi.md#pcloud_pvminstances_action_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/action | Perform an action (start stop reboot immediate-shutdown reset) on a PVMInstance
[**pcloud_pvminstances_capture_post**](PCloudPVMInstancesApi.md#pcloud_pvminstances_capture_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/capture | Capture a PVM instance and create a deployable image
[**pcloud_pvminstances_console_post**](PCloudPVMInstancesApi.md#pcloud_pvminstances_console_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/console | Generate the noVNC console URL
[**pcloud_pvminstances_delete**](PCloudPVMInstancesApi.md#pcloud_pvminstances_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id} | Delete a PCloud PVM instance
[**pcloud_pvminstances_get**](PCloudPVMInstancesApi.md#pcloud_pvminstances_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id} | Get a PVM instance&#39;s current state or information
[**pcloud_pvminstances_getall**](PCloudPVMInstancesApi.md#pcloud_pvminstances_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances | Get all the PVM instances for this cloud instance
[**pcloud_pvminstances_networks_delete**](PCloudPVMInstancesApi.md#pcloud_pvminstances_networks_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/networks/{network_id} | Remove all addresses of network from a PVM instance
[**pcloud_pvminstances_networks_get**](PCloudPVMInstancesApi.md#pcloud_pvminstances_networks_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/networks/{network_id} | Get a PVM instance&#39;s network information
[**pcloud_pvminstances_networks_getall**](PCloudPVMInstancesApi.md#pcloud_pvminstances_networks_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/networks | Get all networks for this PVM instance
[**pcloud_pvminstances_networks_post**](PCloudPVMInstancesApi.md#pcloud_pvminstances_networks_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/networks | Perform network addition, deletion, and listing
[**pcloud_pvminstances_operations_post**](PCloudPVMInstancesApi.md#pcloud_pvminstances_operations_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/operations | Perform an operation on a PVMInstance
[**pcloud_pvminstances_post**](PCloudPVMInstancesApi.md#pcloud_pvminstances_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances | Create a new PVM instance
[**pcloud_pvminstances_put**](PCloudPVMInstancesApi.md#pcloud_pvminstances_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id} | Update a PCloud PVM instance
[**pcloud_pvminstances_snapshots_getall**](PCloudPVMInstancesApi.md#pcloud_pvminstances_snapshots_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/snapshots | Get all snapshots for this PVM instance
[**pcloud_pvminstances_snapshots_post**](PCloudPVMInstancesApi.md#pcloud_pvminstances_snapshots_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/snapshots | Create a PVM instance snapshot
[**pcloud_pvminstances_snapshots_restore_post**](PCloudPVMInstancesApi.md#pcloud_pvminstances_snapshots_restore_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/snapshots/{snapshot_id}/restore | Restore a PVM Instance snapshot



## pcloud_pvminstances_action_post

> Object pcloud_pvminstances_action_post(cloud_instance_id, pvm_instance_id, body)

Perform an action (start stop reboot immediate-shutdown reset) on a PVMInstance

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
body = IbmCloudPower::PVMInstanceAction.new # PVMInstanceAction | Parameters for the desired action

begin
  #Perform an action (start stop reboot immediate-shutdown reset) on a PVMInstance
  result = api_instance.pcloud_pvminstances_action_post(cloud_instance_id, pvm_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPVMInstancesApi->pcloud_pvminstances_action_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **pvm_instance_id** | **String**| PCloud PVM Instance ID | 
 **body** | [**PVMInstanceAction**](PVMInstanceAction.md)| Parameters for the desired action | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_capture_post

> Object pcloud_pvminstances_capture_post(cloud_instance_id, pvm_instance_id, body)

Capture a PVM instance and create a deployable image

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
body = IbmCloudPower::PVMInstanceCapture.new # PVMInstanceCapture | Parameters for the capture PVMInstance

begin
  #Capture a PVM instance and create a deployable image
  result = api_instance.pcloud_pvminstances_capture_post(cloud_instance_id, pvm_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPVMInstancesApi->pcloud_pvminstances_capture_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **pvm_instance_id** | **String**| PCloud PVM Instance ID | 
 **body** | [**PVMInstanceCapture**](PVMInstanceCapture.md)| Parameters for the capture PVMInstance | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_console_post

> PVMInstanceConsole pcloud_pvminstances_console_post(cloud_instance_id, pvm_instance_id)

Generate the noVNC console URL

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID

begin
  #Generate the noVNC console URL
  result = api_instance.pcloud_pvminstances_console_post(cloud_instance_id, pvm_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPVMInstancesApi->pcloud_pvminstances_console_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **pvm_instance_id** | **String**| PCloud PVM Instance ID | 

### Return type

[**PVMInstanceConsole**](PVMInstanceConsole.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_pvminstances_delete

> Object pcloud_pvminstances_delete(cloud_instance_id, pvm_instance_id)

Delete a PCloud PVM instance

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID

begin
  #Delete a PCloud PVM instance
  result = api_instance.pcloud_pvminstances_delete(cloud_instance_id, pvm_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPVMInstancesApi->pcloud_pvminstances_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **pvm_instance_id** | **String**| PCloud PVM Instance ID | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## pcloud_pvminstances_get

> PVMInstance pcloud_pvminstances_get(cloud_instance_id, pvm_instance_id)

Get a PVM instance's current state or information

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID

begin
  #Get a PVM instance's current state or information
  result = api_instance.pcloud_pvminstances_get(cloud_instance_id, pvm_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPVMInstancesApi->pcloud_pvminstances_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **pvm_instance_id** | **String**| PCloud PVM Instance ID | 

### Return type

[**PVMInstance**](PVMInstance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_pvminstances_getall

> PVMInstances pcloud_pvminstances_getall(cloud_instance_id)

Get all the PVM instances for this cloud instance

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  #Get all the PVM instances for this cloud instance
  result = api_instance.pcloud_pvminstances_getall(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPVMInstancesApi->pcloud_pvminstances_getall: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 

### Return type

[**PVMInstances**](PVMInstances.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_pvminstances_networks_delete

> Object pcloud_pvminstances_networks_delete(cloud_instance_id, pvm_instance_id, network_id, opts)

Remove all addresses of network from a PVM instance

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
network_id = 'network_id_example' # String | Network ID
opts = {
  body: IbmCloudPower::PVMInstanceRemoveNetwork.new # PVMInstanceRemoveNetwork | Remove a network from PVM Instance parameters
}

begin
  #Remove all addresses of network from a PVM instance
  result = api_instance.pcloud_pvminstances_networks_delete(cloud_instance_id, pvm_instance_id, network_id, opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPVMInstancesApi->pcloud_pvminstances_networks_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **pvm_instance_id** | **String**| PCloud PVM Instance ID | 
 **network_id** | **String**| Network ID | 
 **body** | [**PVMInstanceRemoveNetwork**](PVMInstanceRemoveNetwork.md)| Remove a network from PVM Instance parameters | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_networks_get

> PVMInstanceNetworks pcloud_pvminstances_networks_get(cloud_instance_id, pvm_instance_id, network_id)

Get a PVM instance's network information

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
network_id = 'network_id_example' # String | Network ID

begin
  #Get a PVM instance's network information
  result = api_instance.pcloud_pvminstances_networks_get(cloud_instance_id, pvm_instance_id, network_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPVMInstancesApi->pcloud_pvminstances_networks_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **pvm_instance_id** | **String**| PCloud PVM Instance ID | 
 **network_id** | **String**| Network ID | 

### Return type

[**PVMInstanceNetworks**](PVMInstanceNetworks.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_pvminstances_networks_getall

> PVMInstanceNetworks pcloud_pvminstances_networks_getall(cloud_instance_id, pvm_instance_id)

Get all networks for this PVM instance

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID

begin
  #Get all networks for this PVM instance
  result = api_instance.pcloud_pvminstances_networks_getall(cloud_instance_id, pvm_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPVMInstancesApi->pcloud_pvminstances_networks_getall: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **pvm_instance_id** | **String**| PCloud PVM Instance ID | 

### Return type

[**PVMInstanceNetworks**](PVMInstanceNetworks.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_pvminstances_networks_post

> PVMInstanceNetwork pcloud_pvminstances_networks_post(cloud_instance_id, pvm_instance_id, body)

Perform network addition, deletion, and listing

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
body = IbmCloudPower::PVMInstanceAddNetwork.new # PVMInstanceAddNetwork | Add network to PVM Instance parameters

begin
  #Perform network addition, deletion, and listing
  result = api_instance.pcloud_pvminstances_networks_post(cloud_instance_id, pvm_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPVMInstancesApi->pcloud_pvminstances_networks_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **pvm_instance_id** | **String**| PCloud PVM Instance ID | 
 **body** | [**PVMInstanceAddNetwork**](PVMInstanceAddNetwork.md)| Add network to PVM Instance parameters | 

### Return type

[**PVMInstanceNetwork**](PVMInstanceNetwork.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_operations_post

> Object pcloud_pvminstances_operations_post(cloud_instance_id, pvm_instance_id, body)

Perform an operation on a PVMInstance

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
body = IbmCloudPower::PVMInstanceOperation.new # PVMInstanceOperation | Parameters for the desired operations

begin
  #Perform an operation on a PVMInstance
  result = api_instance.pcloud_pvminstances_operations_post(cloud_instance_id, pvm_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPVMInstancesApi->pcloud_pvminstances_operations_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **pvm_instance_id** | **String**| PCloud PVM Instance ID | 
 **body** | [**PVMInstanceOperation**](PVMInstanceOperation.md)| Parameters for the desired operations | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_post

> Array&lt;PVMInstance&gt; pcloud_pvminstances_post(cloud_instance_id, body)

Create a new PVM instance

The order of network IDs passed in will be the order of interfaces defined to the VM.

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::PVMInstanceCreate.new # PVMInstanceCreate | Parameters for the creation of a new tenant

begin
  #Create a new PVM instance
  result = api_instance.pcloud_pvminstances_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPVMInstancesApi->pcloud_pvminstances_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **body** | [**PVMInstanceCreate**](PVMInstanceCreate.md)| Parameters for the creation of a new tenant | 

### Return type

[**Array&lt;PVMInstance&gt;**](PVMInstance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_put

> PVMInstanceUpdateResponse pcloud_pvminstances_put(cloud_instance_id, pvm_instance_id, body)

Update a PCloud PVM instance

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
body = IbmCloudPower::PVMInstanceUpdate.new # PVMInstanceUpdate | Parameters to update a PCloud PVM instance

begin
  #Update a PCloud PVM instance
  result = api_instance.pcloud_pvminstances_put(cloud_instance_id, pvm_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPVMInstancesApi->pcloud_pvminstances_put: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **pvm_instance_id** | **String**| PCloud PVM Instance ID | 
 **body** | [**PVMInstanceUpdate**](PVMInstanceUpdate.md)| Parameters to update a PCloud PVM instance | 

### Return type

[**PVMInstanceUpdateResponse**](PVMInstanceUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_snapshots_getall

> Snapshots pcloud_pvminstances_snapshots_getall(cloud_instance_id, pvm_instance_id)

Get all snapshots for this PVM instance

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID

begin
  #Get all snapshots for this PVM instance
  result = api_instance.pcloud_pvminstances_snapshots_getall(cloud_instance_id, pvm_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPVMInstancesApi->pcloud_pvminstances_snapshots_getall: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **pvm_instance_id** | **String**| PCloud PVM Instance ID | 

### Return type

[**Snapshots**](Snapshots.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_pvminstances_snapshots_post

> SnapshotCreateResponse pcloud_pvminstances_snapshots_post(cloud_instance_id, pvm_instance_id, body)

Create a PVM instance snapshot

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
body = IbmCloudPower::SnapshotCreate.new # SnapshotCreate | PVM Instance snapshot create parameters

begin
  #Create a PVM instance snapshot
  result = api_instance.pcloud_pvminstances_snapshots_post(cloud_instance_id, pvm_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPVMInstancesApi->pcloud_pvminstances_snapshots_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **pvm_instance_id** | **String**| PCloud PVM Instance ID | 
 **body** | [**SnapshotCreate**](SnapshotCreate.md)| PVM Instance snapshot create parameters | 

### Return type

[**SnapshotCreateResponse**](SnapshotCreateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_snapshots_restore_post

> pcloud_pvminstances_snapshots_restore_post(cloud_instance_id, pvm_instance_id, snapshot_id, body, opts)

Restore a PVM Instance snapshot

To roll back the clone operation, append '?restore_fail_action=rollback' to the cURL URL. If you'd like to try the clone operation again, append '?restore_fail_action=retry' to the cURL URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
snapshot_id = 'snapshot_id_example' # String | PVM Instance snapshot id
body = IbmCloudPower::SnapshotRestore.new # SnapshotRestore | PVM Instance snapshot restore parameters
opts = {
  restore_fail_action: 'restore_fail_action_example' # String | Action to take on a failed snapshot restore
}

begin
  #Restore a PVM Instance snapshot
  api_instance.pcloud_pvminstances_snapshots_restore_post(cloud_instance_id, pvm_instance_id, snapshot_id, body, opts)
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPVMInstancesApi->pcloud_pvminstances_snapshots_restore_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **pvm_instance_id** | **String**| PCloud PVM Instance ID | 
 **snapshot_id** | **String**| PVM Instance snapshot id | 
 **body** | [**SnapshotRestore**](SnapshotRestore.md)| PVM Instance snapshot restore parameters | 
 **restore_fail_action** | **String**| Action to take on a failed snapshot restore | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

