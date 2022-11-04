# IbmCloudPower::PCloudVolumeOnboardingApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_volume_onboarding_get**](PCloudVolumeOnboardingApi.md#pcloud_volume_onboarding_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/onboarding/{volume_onboarding_id} | Get the information of volume onboarding operation |
| [**pcloud_volume_onboarding_getall**](PCloudVolumeOnboardingApi.md#pcloud_volume_onboarding_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/onboarding | List all volume onboardings for this cloud instance |
| [**pcloud_volume_onboarding_post**](PCloudVolumeOnboardingApi.md#pcloud_volume_onboarding_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/onboarding | Onboard auxiliary volumes to target site |


## pcloud_volume_onboarding_get

> <VolumeOnboarding> pcloud_volume_onboarding_get(cloud_instance_id, volume_onboarding_id)

Get the information of volume onboarding operation

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumeOnboardingApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
volume_onboarding_id = 'volume_onboarding_id_example' # String | Indicates volume onboarding operation id

begin
  # Get the information of volume onboarding operation
  result = api_instance.pcloud_volume_onboarding_get(cloud_instance_id, volume_onboarding_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeOnboardingApi->pcloud_volume_onboarding_get: #{e}"
end
```

#### Using the pcloud_volume_onboarding_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VolumeOnboarding>, Integer, Hash)> pcloud_volume_onboarding_get_with_http_info(cloud_instance_id, volume_onboarding_id)

```ruby
begin
  # Get the information of volume onboarding operation
  data, status_code, headers = api_instance.pcloud_volume_onboarding_get_with_http_info(cloud_instance_id, volume_onboarding_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VolumeOnboarding>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeOnboardingApi->pcloud_volume_onboarding_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **volume_onboarding_id** | **String** | Indicates volume onboarding operation id |  |

### Return type

[**VolumeOnboarding**](VolumeOnboarding.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_volume_onboarding_getall

> <VolumeOnboardings> pcloud_volume_onboarding_getall(cloud_instance_id)

List all volume onboardings for this cloud instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumeOnboardingApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # List all volume onboardings for this cloud instance
  result = api_instance.pcloud_volume_onboarding_getall(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeOnboardingApi->pcloud_volume_onboarding_getall: #{e}"
end
```

#### Using the pcloud_volume_onboarding_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VolumeOnboardings>, Integer, Hash)> pcloud_volume_onboarding_getall_with_http_info(cloud_instance_id)

```ruby
begin
  # List all volume onboardings for this cloud instance
  data, status_code, headers = api_instance.pcloud_volume_onboarding_getall_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VolumeOnboardings>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeOnboardingApi->pcloud_volume_onboarding_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**VolumeOnboardings**](VolumeOnboardings.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_volume_onboarding_post

> <VolumeOnboardingCreateResponse> pcloud_volume_onboarding_post(cloud_instance_id, body)

Onboard auxiliary volumes to target site

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumeOnboardingApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::VolumeOnboardingCreate.new({volumes: [IbmCloudPower::AuxiliaryVolumesForOnboarding.new({auxiliary_volumes: [IbmCloudPower::AuxiliaryVolumeForOnboarding.new({aux_volume_name: 'aux_volume_name_example'})], source_crn: 'source_crn_example'})]}) # VolumeOnboardingCreate | Parameters for the creation of volume onboarding

begin
  # Onboard auxiliary volumes to target site
  result = api_instance.pcloud_volume_onboarding_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeOnboardingApi->pcloud_volume_onboarding_post: #{e}"
end
```

#### Using the pcloud_volume_onboarding_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VolumeOnboardingCreateResponse>, Integer, Hash)> pcloud_volume_onboarding_post_with_http_info(cloud_instance_id, body)

```ruby
begin
  # Onboard auxiliary volumes to target site
  data, status_code, headers = api_instance.pcloud_volume_onboarding_post_with_http_info(cloud_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VolumeOnboardingCreateResponse>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumeOnboardingApi->pcloud_volume_onboarding_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **body** | [**VolumeOnboardingCreate**](VolumeOnboardingCreate.md) | Parameters for the creation of volume onboarding |  |

### Return type

[**VolumeOnboardingCreateResponse**](VolumeOnboardingCreateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

