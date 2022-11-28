# IbmCloudPower::PCloudEventsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_events_get**](PCloudEventsApi.md#pcloud_events_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/events/{event_id} | Get a single event |
| [**pcloud_events_getsince**](PCloudEventsApi.md#pcloud_events_getsince) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/events | Get events from this cloud instance since a specific timestamp |


## pcloud_events_get

> <Event> pcloud_events_get(cloud_instance_id, event_id, opts)

Get a single event

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudEventsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
event_id = 'event_id_example' # String | Event ID
opts = {
  accept_language: 'accept_language_example' # String | The language requested for the return document
}

begin
  # Get a single event
  result = api_instance.pcloud_events_get(cloud_instance_id, event_id, opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudEventsApi->pcloud_events_get: #{e}"
end
```

#### Using the pcloud_events_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Event>, Integer, Hash)> pcloud_events_get_with_http_info(cloud_instance_id, event_id, opts)

```ruby
begin
  # Get a single event
  data, status_code, headers = api_instance.pcloud_events_get_with_http_info(cloud_instance_id, event_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Event>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudEventsApi->pcloud_events_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **event_id** | **String** | Event ID |  |
| **accept_language** | **String** | The language requested for the return document | [optional] |

### Return type

[**Event**](Event.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_events_getsince

> <Events> pcloud_events_getsince(cloud_instance_id, opts)

Get events from this cloud instance since a specific timestamp

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudEventsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
opts = {
  time: 'time_example', # String | (deprecated - use from_time) A time in either ISO 8601 or unix epoch format
  from_time: 'from_time_example', # String | A from query time in either ISO 8601 or unix epoch format
  to_time: 'to_time_example', # String | A to query time in either ISO 8601 or unix epoch format
  accept_language: 'accept_language_example' # String | The language requested for the return document
}

begin
  # Get events from this cloud instance since a specific timestamp
  result = api_instance.pcloud_events_getsince(cloud_instance_id, opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudEventsApi->pcloud_events_getsince: #{e}"
end
```

#### Using the pcloud_events_getsince_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Events>, Integer, Hash)> pcloud_events_getsince_with_http_info(cloud_instance_id, opts)

```ruby
begin
  # Get events from this cloud instance since a specific timestamp
  data, status_code, headers = api_instance.pcloud_events_getsince_with_http_info(cloud_instance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Events>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudEventsApi->pcloud_events_getsince_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **time** | **String** | (deprecated - use from_time) A time in either ISO 8601 or unix epoch format | [optional] |
| **from_time** | **String** | A from query time in either ISO 8601 or unix epoch format | [optional] |
| **to_time** | **String** | A to query time in either ISO 8601 or unix epoch format | [optional] |
| **accept_language** | **String** | The language requested for the return document | [optional] |

### Return type

[**Events**](Events.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

