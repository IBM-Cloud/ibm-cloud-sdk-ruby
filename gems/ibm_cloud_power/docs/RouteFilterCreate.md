# IbmCloudPower::RouteFilterCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ge** | **Integer** | The minimum matching length of the prefix-set(1 ≤ value ≤ 32 &amp; value ≤ LE) | [optional] |
| **le** | **Integer** | The maximum matching length of the prefix-set( 1 ≤ value ≤ 32 &amp; value &gt;&#x3D; GE) | [optional] |
| **action** | **String** | action of the filter * allow: allow * deny: deny  | [optional][default to &#39;allow&#39;] |
| **direction** | **String** | direction of the filter * import - import the routes * export - export the routes  |  |
| **index** | **Integer** | priority or order of the filter |  |
| **prefix** | **String** | IP prefix representing an address and mask length of the prefix-set |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::RouteFilterCreate.new(
  ge: 25,
  le: 30,
  action: null,
  direction: null,
  index: 10,
  prefix: 192.168.91.0/24
)
```

