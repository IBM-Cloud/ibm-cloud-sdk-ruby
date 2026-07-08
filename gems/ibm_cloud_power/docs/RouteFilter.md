# IbmCloudPower::RouteFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ge** | **Integer** | The minimum matching length of the prefix-set(1 ≤ value ≤ 32 value ≤ GE) | [optional] |
| **le** | **Integer** | The maximum matching length of the prefix-set( 1 ≤ value ≤ 32 value &gt;&#x3D; GE) | [optional] |
| **action** | **String** | action of the filter * allow: allow * deny: deny  | [default to &#39;allow&#39;] |
| **creation_date** | **String** | time stamp for create route filter |  |
| **direction** | **String** | direction of the filter * import - import the routes * export - export the routes  |  |
| **error** | **String** | error description |  |
| **index** | **Integer** | priority or order of the filter |  |
| **prefix** | **String** | IP prefix representing an address and mask length of the prefix-set |  |
| **route_filter_id** | **String** | route filter ID |  |
| **state** | **String** | status of the route filter |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::RouteFilter.new(
  ge: 25,
  le: 30,
  action: null,
  creation_date: null,
  direction: null,
  error: null,
  index: 10,
  prefix: 192.168.91.0/24,
  route_filter_id: 031ab7da-bca6-493f-ac55-1a2a26f19160,
  state: active
)
```

