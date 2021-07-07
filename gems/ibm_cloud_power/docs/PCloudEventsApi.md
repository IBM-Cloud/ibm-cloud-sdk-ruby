# IbmCloudPower::PCloudEventsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pcloud_events_get**](PCloudEventsApi.md#pcloud_events_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/events/{event_id} | Get a single event
[**pcloud_events_getsince**](PCloudEventsApi.md#pcloud_events_getsince) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/events | Get events from this cloud instance since a specific timestamp



## pcloud_events_get

> Event pcloud_events_get(cloud_instance_id, event_id, opts)

Get a single event

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudEventsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
event_id = 'event_id_example' # String | Event ID
opts = {
  accept_language: 'accept_language_example' # String | The language requested for the return document
}

begin
  #Get a single event
  result = api_instance.pcloud_events_get(cloud_instance_id, event_id, opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudEventsApi->pcloud_events_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **event_id** | **String**| Event ID | 
 **accept_language** | **String**| The language requested for the return document | [optional] 

### Return type

[**Event**](Event.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_events_getsince

> Events pcloud_events_getsince(cloud_instance_id, time, opts)

Get events from this cloud instance since a specific timestamp

You must append the '?time=' query parameter to the cURL URL to get a list of events.

### Example

```ruby
# load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudEventsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
time = 'time_example' # String | (deprecated - use from_time) A time in either ISO 8601 or unix epoch format
opts = {
  accept_language: 'accept_language_example' # String | The language requested for the return document
}

begin
  #Get events from this cloud instance since a specific timestamp
  result = api_instance.pcloud_events_getsince(cloud_instance_id, time, opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling PCloudEventsApi->pcloud_events_getsince: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_instance_id** | **String**| Cloud Instance ID of a PCloud Instance | 
 **time** | **String**| (deprecated - use from_time) A time in either ISO 8601 or unix epoch format | 
 **accept_language** | **String**| The language requested for the return document | [optional] 

### Return type

[**Events**](Events.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

