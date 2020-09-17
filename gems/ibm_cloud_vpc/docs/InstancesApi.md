# IbmCloudVpc::InstancesApi

All URIs are relative to *https://us-south.iaas.cloud.ibm.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_instance_network_interface_floating_ip**](InstancesApi.md#add_instance_network_interface_floating_ip) | **PUT** /instances/{instance_id}/network_interfaces/{network_interface_id}/floating_ips/{id} | Associate a floating IP with a network interface
[**create_instance**](InstancesApi.md#create_instance) | **POST** /instances | Create an instance
[**create_instance_action**](InstancesApi.md#create_instance_action) | **POST** /instances/{instance_id}/actions | Create an instance action
[**create_instance_network_interface**](InstancesApi.md#create_instance_network_interface) | **POST** /instances/{instance_id}/network_interfaces | Create a network interface
[**create_instance_template**](InstancesApi.md#create_instance_template) | **POST** /instance/templates | Create an instance template
[**create_instance_volume_attachment**](InstancesApi.md#create_instance_volume_attachment) | **POST** /instances/{instance_id}/volume_attachments | Create a volume attachment, connecting a volume to an instance
[**delete_instance**](InstancesApi.md#delete_instance) | **DELETE** /instances/{id} | Delete specified instance
[**delete_instance_network_interface**](InstancesApi.md#delete_instance_network_interface) | **DELETE** /instances/{instance_id}/network_interfaces/{id} | Delete specified network interface
[**delete_instance_template**](InstancesApi.md#delete_instance_template) | **DELETE** /instance/templates/{id} | Delete specified instance template
[**delete_instance_volume_attachment**](InstancesApi.md#delete_instance_volume_attachment) | **DELETE** /instances/{instance_id}/volume_attachments/{id} | Delete a volume attachment, detaching a volume from an instance
[**get_instance**](InstancesApi.md#get_instance) | **GET** /instances/{id} | Retrieve an instance
[**get_instance_initialization**](InstancesApi.md#get_instance_initialization) | **GET** /instances/{id}/initialization | Retrieve configuration used to initialize the instance.
[**get_instance_network_interface**](InstancesApi.md#get_instance_network_interface) | **GET** /instances/{instance_id}/network_interfaces/{id} | Retrieve specified network interface
[**get_instance_network_interface_floating_ip**](InstancesApi.md#get_instance_network_interface_floating_ip) | **GET** /instances/{instance_id}/network_interfaces/{network_interface_id}/floating_ips/{id} | Retrieve associated floating IP
[**get_instance_profile**](InstancesApi.md#get_instance_profile) | **GET** /instance/profiles/{name} | Retrieve specified instance profile
[**get_instance_template**](InstancesApi.md#get_instance_template) | **GET** /instance/templates/{id} | Retrieve specified instance template
[**get_instance_volume_attachment**](InstancesApi.md#get_instance_volume_attachment) | **GET** /instances/{instance_id}/volume_attachments/{id} | Retrieve specified volume attachment
[**list_instance_network_interface_floating_ips**](InstancesApi.md#list_instance_network_interface_floating_ips) | **GET** /instances/{instance_id}/network_interfaces/{network_interface_id}/floating_ips | List all floating IPs associated with a network interface
[**list_instance_network_interfaces**](InstancesApi.md#list_instance_network_interfaces) | **GET** /instances/{instance_id}/network_interfaces | List all network interfaces on an instance
[**list_instance_profiles**](InstancesApi.md#list_instance_profiles) | **GET** /instance/profiles | List all instance profiles
[**list_instance_templates**](InstancesApi.md#list_instance_templates) | **GET** /instance/templates | Get instance templates.
[**list_instance_volume_attachments**](InstancesApi.md#list_instance_volume_attachments) | **GET** /instances/{instance_id}/volume_attachments | List all volumes attached to an instance
[**list_instances**](InstancesApi.md#list_instances) | **GET** /instances | List all instances
[**remove_instance_network_interface_floating_ip**](InstancesApi.md#remove_instance_network_interface_floating_ip) | **DELETE** /instances/{instance_id}/network_interfaces/{network_interface_id}/floating_ips/{id} | Disassociate specified floating IP
[**update_instance**](InstancesApi.md#update_instance) | **PATCH** /instances/{id} | Update specified instance
[**update_instance_network_interface**](InstancesApi.md#update_instance_network_interface) | **PATCH** /instances/{instance_id}/network_interfaces/{id} | Update a network interface
[**update_instance_template**](InstancesApi.md#update_instance_template) | **PATCH** /instance/templates/{id} | Update specified instance template
[**update_instance_volume_attachment**](InstancesApi.md#update_instance_volume_attachment) | **PATCH** /instances/{instance_id}/volume_attachments/{id} | Update a volume attachment



## add_instance_network_interface_floating_ip

> FloatingIP add_instance_network_interface_floating_ip(version, generation, instance_id, network_interface_id, id)

Associate a floating IP with a network interface

This request associates the specified floating IP with the specified network interface, replacing any existing association. For this request to succeed, the existing floating IP must not be required by another resource, such as a public gateway. A request body is not required, and if supplied, is ignored.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_id = 'instance_id_example' # String | The instance identifier
network_interface_id = 'network_interface_id_example' # String | The network interface identifier
id = 'id_example' # String | The floating IP identifier

begin
  #Associate a floating IP with a network interface
  result = api_instance.add_instance_network_interface_floating_ip(version, generation, instance_id, network_interface_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->add_instance_network_interface_floating_ip: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_id** | **String**| The instance identifier | 
 **network_interface_id** | **String**| The network interface identifier | 
 **id** | **String**| The floating IP identifier | 

### Return type

[**FloatingIP**](FloatingIP.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_instance

> Instance create_instance(version, generation, instance_prototype)

Create an instance

This request provisions a new instance from an instance prototype object. The prototype object is structured in the same way as a retrieved instance, and contains the information necessary to provision the new instance. The instance is automatically started.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_prototype = {"image":{"id":"72b27b5c-f4b0-48bb-b954-5becc7c1dcb8"},"keys":[{"fingerprint":"SHA256:RJ+YWs2kupwFGiJuLqY85twmcdLOUcjIc9cA6IR8n8E"}],"profile":{"name":"gc.balanced.4x16"},"vpc":{"id":"4727d842-f94f-4a2d-824a-9bc9b02c523b"}} # InstancePrototype | The instance prototype object

begin
  #Create an instance
  result = api_instance.create_instance(version, generation, instance_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->create_instance: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_prototype** | [**InstancePrototype**](InstancePrototype.md)| The instance prototype object | 

### Return type

[**Instance**](Instance.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_instance_action

> InstanceAction create_instance_action(version, generation, instance_id, instance_action_prototype)

Create an instance action

This request creates a new action which will be queued up to run as soon as any pending or running actions have completed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_id = 'instance_id_example' # String | The instance identifier
instance_action_prototype = IbmCloudVpc::InstanceActionPrototype.new # InstanceActionPrototype | The instance action prototype patch

begin
  #Create an instance action
  result = api_instance.create_instance_action(version, generation, instance_id, instance_action_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->create_instance_action: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_id** | **String**| The instance identifier | 
 **instance_action_prototype** | [**InstanceActionPrototype**](InstanceActionPrototype.md)| The instance action prototype patch | 

### Return type

[**InstanceAction**](InstanceAction.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_instance_network_interface

> NetworkInterface create_instance_network_interface(version, generation, instance_id, network_interface_prototype)

Create a network interface

This request creates a new network interface from a network interface prototype object. The prototype object is structured in the same way as a retrieved network interface, and contains the information necessary to create the new network interface. Any subnet in the instance's VPC may be specified, even if it is already attached to another network interface. Addresses on the network interface must be within the specified subnet's CIDR blocks.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_id = 'instance_id_example' # String | The instance identifier
network_interface_prototype = IbmCloudVpc::NetworkInterfacePrototype.new # NetworkInterfacePrototype | The network interface prototype object

begin
  #Create a network interface
  result = api_instance.create_instance_network_interface(version, generation, instance_id, network_interface_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->create_instance_network_interface: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_id** | **String**| The instance identifier | 
 **network_interface_prototype** | [**NetworkInterfacePrototype**](NetworkInterfacePrototype.md)| The network interface prototype object | 

### Return type

[**NetworkInterface**](NetworkInterface.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_instance_template

> InstanceTemplate create_instance_template(version, generation, instance_template_prototype)

Create an instance template

This request creates a new instance template

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_template_prototype = {"image":{"id":"72b27b5c-f4b0-48bb-b954-5becc7c1dcb8"},"keys":[{"fingerprint":"SHA256:yxavE4CIOL2NlsqcurRO3xGjkP6m/0mp8ugojH5yxlY"}],"profile":{"name":"gc.balanced.4x16"},"vpc":{"id":"4727d842-f94f-4a2d-824a-9bc9b02c523b"}} # InstanceTemplatePrototype | The instance template prototype object

begin
  #Create an instance template
  result = api_instance.create_instance_template(version, generation, instance_template_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->create_instance_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_template_prototype** | [**InstanceTemplatePrototype**](InstanceTemplatePrototype.md)| The instance template prototype object | 

### Return type

[**InstanceTemplate**](InstanceTemplate.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_instance_volume_attachment

> VolumeAttachment create_instance_volume_attachment(version, generation, instance_id, volume_attachment_prototype)

Create a volume attachment, connecting a volume to an instance

This request creates a new volume attachment from a volume attachment prototype object. The prototype object is structured in the same way as a retrieved volume attachment, and contains the information necessary to create the new volume attachment. The creation of a new volume attachment connects a volume to an instance.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_id = 'instance_id_example' # String | The instance identifier
volume_attachment_prototype = IbmCloudVpc::VolumeAttachmentPrototype.new # VolumeAttachmentPrototype | The volume attachment prototype object

begin
  #Create a volume attachment, connecting a volume to an instance
  result = api_instance.create_instance_volume_attachment(version, generation, instance_id, volume_attachment_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->create_instance_volume_attachment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_id** | **String**| The instance identifier | 
 **volume_attachment_prototype** | [**VolumeAttachmentPrototype**](VolumeAttachmentPrototype.md)| The volume attachment prototype object | 

### Return type

[**VolumeAttachment**](VolumeAttachment.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_instance

> delete_instance(version, generation, id)

Delete specified instance

This request deletes an instance. This operation cannot be reversed. Any floating IPs associated with the instance's network interfaces are implicitly disassociated. All flow log collectors with `auto_delete` set to `true` targeting the instance and/or the instance's network interfaces are automatically deleted.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The instance identifier

begin
  #Delete specified instance
  api_instance.delete_instance(version, generation, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->delete_instance: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The instance identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_instance_network_interface

> delete_instance_network_interface(version, generation, instance_id, id)

Delete specified network interface

This request deletes a network interface. This operation cannot be reversed. Any floating IPs associated with the network interface are implicitly disassociated. All flow log collectors with `auto_delete` set to `true` targeting the network interface are automatically deleted. The primary network interface is not allowed to be deleted.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_id = 'instance_id_example' # String | The instance identifier
id = 'id_example' # String | The network interface identifier

begin
  #Delete specified network interface
  api_instance.delete_instance_network_interface(version, generation, instance_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->delete_instance_network_interface: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_id** | **String**| The instance identifier | 
 **id** | **String**| The network interface identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_instance_template

> delete_instance_template(version, generation, id)

Delete specified instance template

This request deletes the instance template. This operation cannot be reversed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The instance template identifier

begin
  #Delete specified instance template
  api_instance.delete_instance_template(version, generation, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->delete_instance_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The instance template identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_instance_volume_attachment

> delete_instance_volume_attachment(version, generation, instance_id, id)

Delete a volume attachment, detaching a volume from an instance

This request deletes a volume attachment. The deletion of a volume attachment detaches a volume from an instance.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_id = 'instance_id_example' # String | The instance identifier
id = 'id_example' # String | The volume attachment identifier

begin
  #Delete a volume attachment, detaching a volume from an instance
  api_instance.delete_instance_volume_attachment(version, generation, instance_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->delete_instance_volume_attachment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_id** | **String**| The instance identifier | 
 **id** | **String**| The volume attachment identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instance

> Instance get_instance(version, generation, id)

Retrieve an instance

This request retrieves a single instance specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The instance identifier

begin
  #Retrieve an instance
  result = api_instance.get_instance(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->get_instance: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The instance identifier | 

### Return type

[**Instance**](Instance.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instance_initialization

> InstanceInitialization get_instance_initialization(version, generation, id)

Retrieve configuration used to initialize the instance.

This request retrieves configuration variables used to initialize the instance, such as SSH keys and the Windows administrator password.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The instance identifier

begin
  #Retrieve configuration used to initialize the instance.
  result = api_instance.get_instance_initialization(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->get_instance_initialization: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The instance identifier | 

### Return type

[**InstanceInitialization**](InstanceInitialization.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instance_network_interface

> NetworkInterface get_instance_network_interface(version, generation, instance_id, id)

Retrieve specified network interface

This request retrieves a single network interface specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_id = 'instance_id_example' # String | The instance identifier
id = 'id_example' # String | The network interface identifier

begin
  #Retrieve specified network interface
  result = api_instance.get_instance_network_interface(version, generation, instance_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->get_instance_network_interface: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_id** | **String**| The instance identifier | 
 **id** | **String**| The network interface identifier | 

### Return type

[**NetworkInterface**](NetworkInterface.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instance_network_interface_floating_ip

> FloatingIP get_instance_network_interface_floating_ip(version, generation, instance_id, network_interface_id, id)

Retrieve associated floating IP

This request a retrieves a specified floating IP address if it is associated with the network interface and instance specified in the URL

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_id = 'instance_id_example' # String | The instance identifier
network_interface_id = 'network_interface_id_example' # String | The network interface identifier
id = 'id_example' # String | The floating IP identifier

begin
  #Retrieve associated floating IP
  result = api_instance.get_instance_network_interface_floating_ip(version, generation, instance_id, network_interface_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->get_instance_network_interface_floating_ip: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_id** | **String**| The instance identifier | 
 **network_interface_id** | **String**| The network interface identifier | 
 **id** | **String**| The floating IP identifier | 

### Return type

[**FloatingIP**](FloatingIP.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instance_profile

> InstanceProfile get_instance_profile(version, generation, name)

Retrieve specified instance profile

This request retrieves a single instance profile specified by the name in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
name = 'name_example' # String | The instance profile name

begin
  #Retrieve specified instance profile
  result = api_instance.get_instance_profile(version, generation, name)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->get_instance_profile: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **name** | **String**| The instance profile name | 

### Return type

[**InstanceProfile**](InstanceProfile.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instance_template

> InstanceTemplate get_instance_template(version, generation, id)

Retrieve specified instance template

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The instance template identifier

begin
  #Retrieve specified instance template
  result = api_instance.get_instance_template(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->get_instance_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The instance template identifier | 

### Return type

[**InstanceTemplate**](InstanceTemplate.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instance_volume_attachment

> VolumeAttachment get_instance_volume_attachment(version, generation, instance_id, id)

Retrieve specified volume attachment

This request retrieves a single volume attachment specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_id = 'instance_id_example' # String | The instance identifier
id = 'id_example' # String | The volume attachment identifier

begin
  #Retrieve specified volume attachment
  result = api_instance.get_instance_volume_attachment(version, generation, instance_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->get_instance_volume_attachment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_id** | **String**| The instance identifier | 
 **id** | **String**| The volume attachment identifier | 

### Return type

[**VolumeAttachment**](VolumeAttachment.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_instance_network_interface_floating_ips

> FloatingIPUnpaginatedCollection list_instance_network_interface_floating_ips(version, generation, instance_id, network_interface_id)

List all floating IPs associated with a network interface

This request lists all floating IPs associated with a network interface.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_id = 'instance_id_example' # String | The instance identifier
network_interface_id = 'network_interface_id_example' # String | The network interface identifier

begin
  #List all floating IPs associated with a network interface
  result = api_instance.list_instance_network_interface_floating_ips(version, generation, instance_id, network_interface_id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->list_instance_network_interface_floating_ips: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_id** | **String**| The instance identifier | 
 **network_interface_id** | **String**| The network interface identifier | 

### Return type

[**FloatingIPUnpaginatedCollection**](FloatingIPUnpaginatedCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_instance_network_interfaces

> NetworkInterfaceUnpaginatedCollection list_instance_network_interfaces(version, generation, instance_id)

List all network interfaces on an instance

This request lists all network interfaces on an instance. A network interface is an abstract representation of a network interface card and connects an instance to a subnet. While each network interface can attach to only one subnet, multiple network interfaces can be created to attach to multiple subnets. Multiple interfaces may also attach to the same subnet.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_id = 'instance_id_example' # String | The instance identifier

begin
  #List all network interfaces on an instance
  result = api_instance.list_instance_network_interfaces(version, generation, instance_id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->list_instance_network_interfaces: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_id** | **String**| The instance identifier | 

### Return type

[**NetworkInterfaceUnpaginatedCollection**](NetworkInterfaceUnpaginatedCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_instance_profiles

> InstanceProfileCollection list_instance_profiles(version, generation)

List all instance profiles

This request lists all instance profiles available in the region. An instance profile specifies the performance characteristics and pricing model for an instance.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.

begin
  #List all instance profiles
  result = api_instance.list_instance_profiles(version, generation)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->list_instance_profiles: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 

### Return type

[**InstanceProfileCollection**](InstanceProfileCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_instance_templates

> InstanceTemplateCollection list_instance_templates(version, generation)

Get instance templates.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.

begin
  #Get instance templates.
  result = api_instance.list_instance_templates(version, generation)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->list_instance_templates: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 

### Return type

[**InstanceTemplateCollection**](InstanceTemplateCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_instance_volume_attachments

> VolumeAttachmentCollection list_instance_volume_attachments(version, generation, instance_id)

List all volumes attached to an instance

This request lists all volume attachments for an instance. A volume attachment connects a volume to an instance. Each instance may have many volume attachments but each volume attachment connects exactly one instance to exactly one volume.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_id = 'instance_id_example' # String | The instance identifier

begin
  #List all volumes attached to an instance
  result = api_instance.list_instance_volume_attachments(version, generation, instance_id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->list_instance_volume_attachments: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_id** | **String**| The instance identifier | 

### Return type

[**VolumeAttachmentCollection**](VolumeAttachmentCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_instances

> InstanceCollection list_instances(version, generation, opts)

List all instances

This request lists all instances in the region.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50, # Integer | The number of resources to return on a page
  resource_group_id: 'resource_group_id_example', # String | Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers
  name: 'name_example', # String | Filters the collection to resources with the exact specified name
  vpc_id: 'vpc_id_example', # String | Filters the collection to resources in the VPC with the specified identifier
  vpc_crn: 'vpc_crn_example', # String | Filters the collection to resources in the VPC with the specified CRN
  vpc_name: 'vpc_name_example' # String | Filters the collection to resources in the VPC with the exact specified name
}

begin
  #List all instances
  result = api_instance.list_instances(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->list_instances: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **start** | **String**| A server-supplied token determining what resource to start the page on | [optional] 
 **limit** | **Integer**| The number of resources to return on a page | [optional] [default to 50]
 **resource_group_id** | **String**| Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers | [optional] 
 **name** | **String**| Filters the collection to resources with the exact specified name | [optional] 
 **vpc_id** | **String**| Filters the collection to resources in the VPC with the specified identifier | [optional] 
 **vpc_crn** | **String**| Filters the collection to resources in the VPC with the specified CRN | [optional] 
 **vpc_name** | **String**| Filters the collection to resources in the VPC with the exact specified name | [optional] 

### Return type

[**InstanceCollection**](InstanceCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_instance_network_interface_floating_ip

> remove_instance_network_interface_floating_ip(version, generation, instance_id, network_interface_id, id)

Disassociate specified floating IP

This request disassociates the specified floating IP from the specified network interface

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_id = 'instance_id_example' # String | The instance identifier
network_interface_id = 'network_interface_id_example' # String | The network interface identifier
id = 'id_example' # String | The floating IP identifier

begin
  #Disassociate specified floating IP
  api_instance.remove_instance_network_interface_floating_ip(version, generation, instance_id, network_interface_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->remove_instance_network_interface_floating_ip: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_id** | **String**| The instance identifier | 
 **network_interface_id** | **String**| The network interface identifier | 
 **id** | **String**| The floating IP identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_instance

> Instance update_instance(version, generation, id, instance_patch)

Update specified instance

This request updates an instance with the information in a provided instance patch. The instance patch object is structured in the same way as a retrieved instance and contains only the information to be updated.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The instance identifier
instance_patch = IbmCloudVpc::InstancePatch.new # InstancePatch | The instance patch

begin
  #Update specified instance
  result = api_instance.update_instance(version, generation, id, instance_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->update_instance: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The instance identifier | 
 **instance_patch** | [**InstancePatch**](InstancePatch.md)| The instance patch | 

### Return type

[**Instance**](Instance.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_instance_network_interface

> NetworkInterface update_instance_network_interface(version, generation, instance_id, id, network_interface_patch)

Update a network interface

This request updates a network interface with the information in a provided network interface patch. The network interface patch object is structured in the same way as a retrieved network interface and can contain an updated name and/or port speed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_id = 'instance_id_example' # String | The instance identifier
id = 'id_example' # String | The network interface identifier
network_interface_patch = IbmCloudVpc::NetworkInterfacePatch.new # NetworkInterfacePatch | The network interface patch

begin
  #Update a network interface
  result = api_instance.update_instance_network_interface(version, generation, instance_id, id, network_interface_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->update_instance_network_interface: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_id** | **String**| The instance identifier | 
 **id** | **String**| The network interface identifier | 
 **network_interface_patch** | [**NetworkInterfacePatch**](NetworkInterfacePatch.md)| The network interface patch | 

### Return type

[**NetworkInterface**](NetworkInterface.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_instance_template

> InstanceTemplate update_instance_template(version, generation, id, instance_template_patch)

Update specified instance template

This request updates an instance template with the information provided in the instance template patch. The instance template patch object is structured in the same way as a retrieved instance template and contains only the information to be updated.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The instance template identifier
instance_template_patch = IbmCloudVpc::InstanceTemplatePatch.new # InstanceTemplatePatch | The instance template patch

begin
  #Update specified instance template
  result = api_instance.update_instance_template(version, generation, id, instance_template_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->update_instance_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The instance template identifier | 
 **instance_template_patch** | [**InstanceTemplatePatch**](InstanceTemplatePatch.md)| The instance template patch | 

### Return type

[**InstanceTemplate**](InstanceTemplate.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_instance_volume_attachment

> VolumeAttachment update_instance_volume_attachment(version, generation, instance_id, id, volume_attachment_patch)

Update a volume attachment

This request updates a volume attachment with the information in a provided volume attachment patch. The volume attachment patch object is structured in the same way as a retrieved volume attachment and can contain an updated name.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstancesApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_id = 'instance_id_example' # String | The instance identifier
id = 'id_example' # String | The volume attachment identifier
volume_attachment_patch = IbmCloudVpc::VolumeAttachmentPatch.new # VolumeAttachmentPatch | The volume attachment patch

begin
  #Update a volume attachment
  result = api_instance.update_instance_volume_attachment(version, generation, instance_id, id, volume_attachment_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstancesApi->update_instance_volume_attachment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_id** | **String**| The instance identifier | 
 **id** | **String**| The volume attachment identifier | 
 **volume_attachment_patch** | [**VolumeAttachmentPatch**](VolumeAttachmentPatch.md)| The volume attachment patch | 

### Return type

[**VolumeAttachment**](VolumeAttachment.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

