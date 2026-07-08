# IbmCloudPower::RoutesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_routes_delete**](RoutesApi.md#v1_routes_delete) | **DELETE** /v1/routes/{route_id} | Delete a route |
| [**v1_routes_get**](RoutesApi.md#v1_routes_get) | **GET** /v1/routes/{route_id} | Get a route&#39;s information |
| [**v1_routes_getall**](RoutesApi.md#v1_routes_getall) | **GET** /v1/routes | Get all routes in the workspace |
| [**v1_routes_post**](RoutesApi.md#v1_routes_post) | **POST** /v1/routes | Perform a route creation |
| [**v1_routes_put**](RoutesApi.md#v1_routes_put) | **PUT** /v1/routes/{route_id} | Update a route&#39;s information |
| [**v1_routes_report_get**](RoutesApi.md#v1_routes_report_get) | **GET** /v1/routes/report | Get the route report for a workspace |


## v1_routes_delete

> Object v1_routes_delete(route_id)

Delete a route

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::RoutesApi.new
route_id = 'route_id_example' # String | Route ID

begin
  # Delete a route
  result = api_instance.v1_routes_delete(route_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling RoutesApi->v1_routes_delete: #{e}"
end
```

#### Using the v1_routes_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_routes_delete_with_http_info(route_id)

```ruby
begin
  # Delete a route
  data, status_code, headers = api_instance.v1_routes_delete_with_http_info(route_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling RoutesApi->v1_routes_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **route_id** | **String** | Route ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_routes_get

> <Route> v1_routes_get(route_id)

Get a route's information

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::RoutesApi.new
route_id = 'route_id_example' # String | Route ID

begin
  # Get a route's information
  result = api_instance.v1_routes_get(route_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling RoutesApi->v1_routes_get: #{e}"
end
```

#### Using the v1_routes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Route>, Integer, Hash)> v1_routes_get_with_http_info(route_id)

```ruby
begin
  # Get a route's information
  data, status_code, headers = api_instance.v1_routes_get_with_http_info(route_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Route>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling RoutesApi->v1_routes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **route_id** | **String** | Route ID |  |

### Return type

[**Route**](Route.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_routes_getall

> <Routes> v1_routes_getall

Get all routes in the workspace

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::RoutesApi.new

begin
  # Get all routes in the workspace
  result = api_instance.v1_routes_getall
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling RoutesApi->v1_routes_getall: #{e}"
end
```

#### Using the v1_routes_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Routes>, Integer, Hash)> v1_routes_getall_with_http_info

```ruby
begin
  # Get all routes in the workspace
  data, status_code, headers = api_instance.v1_routes_getall_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Routes>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling RoutesApi->v1_routes_getall_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Routes**](Routes.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_routes_post

> <Route> v1_routes_post(opts)

Perform a route creation

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::RoutesApi.new
opts = {
  body: IbmCloudPower::RouteCreate.new({destination: 'destination_example', name: 'name_example', next_hop: 'next_hop_example'}) # RouteCreate | Create a route based on the inputs
}

begin
  # Perform a route creation
  result = api_instance.v1_routes_post(opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling RoutesApi->v1_routes_post: #{e}"
end
```

#### Using the v1_routes_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Route>, Integer, Hash)> v1_routes_post_with_http_info(opts)

```ruby
begin
  # Perform a route creation
  data, status_code, headers = api_instance.v1_routes_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Route>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling RoutesApi->v1_routes_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RouteCreate**](RouteCreate.md) | Create a route based on the inputs | [optional] |

### Return type

[**Route**](Route.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_routes_put

> <Route> v1_routes_put(route_id, body)

Update a route's information

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::RoutesApi.new
route_id = 'route_id_example' # String | Route ID
body = IbmCloudPower::RouteUpdate.new # RouteUpdate | Parameters for updating a route

begin
  # Update a route's information
  result = api_instance.v1_routes_put(route_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling RoutesApi->v1_routes_put: #{e}"
end
```

#### Using the v1_routes_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Route>, Integer, Hash)> v1_routes_put_with_http_info(route_id, body)

```ruby
begin
  # Update a route's information
  data, status_code, headers = api_instance.v1_routes_put_with_http_info(route_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Route>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling RoutesApi->v1_routes_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **route_id** | **String** | Route ID |  |
| **body** | [**RouteUpdate**](RouteUpdate.md) | Parameters for updating a route |  |

### Return type

[**Route**](Route.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_routes_report_get

> <RouteReport> v1_routes_report_get

Get the route report for a workspace

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::RoutesApi.new

begin
  # Get the route report for a workspace
  result = api_instance.v1_routes_report_get
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling RoutesApi->v1_routes_report_get: #{e}"
end
```

#### Using the v1_routes_report_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RouteReport>, Integer, Hash)> v1_routes_report_get_with_http_info

```ruby
begin
  # Get the route report for a workspace
  data, status_code, headers = api_instance.v1_routes_report_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RouteReport>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling RoutesApi->v1_routes_report_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**RouteReport**](RouteReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

