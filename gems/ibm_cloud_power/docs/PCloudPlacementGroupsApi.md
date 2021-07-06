# IbmCloudPower::PCloudPlacementGroupsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pcloud_placementgroups_delete**](PCloudPlacementGroupsApi.md#pcloud_placementgroups_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/placement-groups/{placement_group_id} | Delete server placement group
[**pcloud_placementgroups_get**](PCloudPlacementGroupsApi.md#pcloud_placementgroups_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/placement-groups/{placement_group_id} | Get server placement group details
[**pcloud_placementgroups_getall**](PCloudPlacementGroupsApi.md#pcloud_placementgroups_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/placement-groups | Get all server placement groups
[**pcloud_placementgroups_members_delete**](PCloudPlacementGroupsApi.md#pcloud_placementgroups_members_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/placement-groups/{placement_group_id}/members | Remove server from placement group
[**pcloud_placementgroups_members_post**](PCloudPlacementGroupsApi.md#pcloud_placementgroups_members_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/placement-groups/{placement_group_id}/members | Add server to placement group
[**pcloud_placementgroups_post**](PCloudPlacementGroupsApi.md#pcloud_placementgroups_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/placement-groups | Create a server placement group



## pcloud_placementgroups_delete

> Object pcloud_placementgroups_delete(cloud_instance_id, placement_group_id)

Delete server placement group

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
placement_group_id = 'placement_group_id_example' # String | Placement Group ID or Placement Group Name

begin
  #Delete server placement group
  result = api_instance.pcloud_placementgroups_delete(cloud_instance_id, placement_group_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPlacementGroupsApi->pcloud_placementgroups_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **placement_group_id** | **String**| Placement Group ID or Placement Group Name | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## pcloud_placementgroups_get

> PlacementGroup pcloud_placementgroups_get(cloud_instance_id, placement_group_id)

Get server placement group details

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
placement_group_id = 'placement_group_id_example' # String | Placement Group ID or Placement Group Name

begin
  #Get server placement group details
  result = api_instance.pcloud_placementgroups_get(cloud_instance_id, placement_group_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPlacementGroupsApi->pcloud_placementgroups_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **placement_group_id** | **String**| Placement Group ID or Placement Group Name | 

### Return type

[**PlacementGroup**](PlacementGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_placementgroups_getall

> PlacementGroups pcloud_placementgroups_getall(cloud_instance_id)

Get all server placement groups

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  #Get all server placement groups
  result = api_instance.pcloud_placementgroups_getall(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPlacementGroupsApi->pcloud_placementgroups_getall: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 

### Return type

[**PlacementGroups**](PlacementGroups.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_placementgroups_members_delete

> PlacementGroup pcloud_placementgroups_members_delete(cloud_instance_id, placement_group_id, body)

Remove server from placement group

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
placement_group_id = 'placement_group_id_example' # String | Placement Group ID or Placement Group Name
body = IbmCloudPower::PlacementGroupServer.new # PlacementGroupServer | Parameters for removing a Server in a Placement Group

begin
  #Remove server from placement group
  result = api_instance.pcloud_placementgroups_members_delete(cloud_instance_id, placement_group_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPlacementGroupsApi->pcloud_placementgroups_members_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **placement_group_id** | **String**| Placement Group ID or Placement Group Name | 
 **body** | [**PlacementGroupServer**](PlacementGroupServer.md)| Parameters for removing a Server in a Placement Group | 

### Return type

[**PlacementGroup**](PlacementGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_placementgroups_members_post

> PlacementGroup pcloud_placementgroups_members_post(cloud_instance_id, placement_group_id, body)

Add server to placement group

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
placement_group_id = 'placement_group_id_example' # String | Placement Group ID or Placement Group Name
body = IbmCloudPower::PlacementGroupServer.new # PlacementGroupServer | Parameters for adding a server to a Placement Group

begin
  #Add server to placement group
  result = api_instance.pcloud_placementgroups_members_post(cloud_instance_id, placement_group_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPlacementGroupsApi->pcloud_placementgroups_members_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **placement_group_id** | **String**| Placement Group ID or Placement Group Name | 
 **body** | [**PlacementGroupServer**](PlacementGroupServer.md)| Parameters for adding a server to a Placement Group | 

### Return type

[**PlacementGroup**](PlacementGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_placementgroups_post

> PlacementGroup pcloud_placementgroups_post(cloud_instance_id, body)

Create a server placement group

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPlacementGroupsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::PlacementGroupCreate.new # PlacementGroupCreate | Parameters for the creating a server placement group

begin
  #Create a server placement group
  result = api_instance.pcloud_placementgroups_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudPlacementGroupsApi->pcloud_placementgroups_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **body** | [**PlacementGroupCreate**](PlacementGroupCreate.md)| Parameters for the creating a server placement group | 

### Return type

[**PlacementGroup**](PlacementGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

