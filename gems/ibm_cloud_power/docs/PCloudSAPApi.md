# IbmCloudPower::PCloudSAPApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_sap_get**](PCloudSAPApi.md#pcloud_sap_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/sap/{sap_profile_id} | Get the information on an SAP profile |
| [**pcloud_sap_getall**](PCloudSAPApi.md#pcloud_sap_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/sap | Get list of SAP profiles |
| [**pcloud_sap_post**](PCloudSAPApi.md#pcloud_sap_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/sap | Create a new SAP PVM Instance |


## pcloud_sap_get

> <SAPProfile> pcloud_sap_get(cloud_instance_id, sap_profile_id)

Get the information on an SAP profile

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSAPApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
sap_profile_id = 'sap_profile_id_example' # String | SAP Profile ID

begin
  # Get the information on an SAP profile
  result = api_instance.pcloud_sap_get(cloud_instance_id, sap_profile_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSAPApi->pcloud_sap_get: #{e}"
end
```

#### Using the pcloud_sap_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SAPProfile>, Integer, Hash)> pcloud_sap_get_with_http_info(cloud_instance_id, sap_profile_id)

```ruby
begin
  # Get the information on an SAP profile
  data, status_code, headers = api_instance.pcloud_sap_get_with_http_info(cloud_instance_id, sap_profile_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SAPProfile>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSAPApi->pcloud_sap_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **sap_profile_id** | **String** | SAP Profile ID |  |

### Return type

[**SAPProfile**](SAPProfile.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_sap_getall

> <SAPProfiles> pcloud_sap_getall(cloud_instance_id)

Get list of SAP profiles

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSAPApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # Get list of SAP profiles
  result = api_instance.pcloud_sap_getall(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSAPApi->pcloud_sap_getall: #{e}"
end
```

#### Using the pcloud_sap_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SAPProfiles>, Integer, Hash)> pcloud_sap_getall_with_http_info(cloud_instance_id)

```ruby
begin
  # Get list of SAP profiles
  data, status_code, headers = api_instance.pcloud_sap_getall_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SAPProfiles>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSAPApi->pcloud_sap_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**SAPProfiles**](SAPProfiles.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_sap_post

> <Array<PVMInstance>> pcloud_sap_post(cloud_instance_id, body)

Create a new SAP PVM Instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSAPApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::SAPCreate.new({image_id: 'image_id_example', name: 'name_example', networks: [IbmCloudPower::PVMInstanceAddNetwork.new({network_id: 'network_id_example'})], profile_id: 'profile_id_example'}) # SAPCreate | Parameters for the creation of a new SAP PVM Instance

begin
  # Create a new SAP PVM Instance
  result = api_instance.pcloud_sap_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSAPApi->pcloud_sap_post: #{e}"
end
```

#### Using the pcloud_sap_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PVMInstance>>, Integer, Hash)> pcloud_sap_post_with_http_info(cloud_instance_id, body)

```ruby
begin
  # Create a new SAP PVM Instance
  data, status_code, headers = api_instance.pcloud_sap_post_with_http_info(cloud_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PVMInstance>>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSAPApi->pcloud_sap_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **body** | [**SAPCreate**](SAPCreate.md) | Parameters for the creation of a new SAP PVM Instance |  |

### Return type

[**Array&lt;PVMInstance&gt;**](PVMInstance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

