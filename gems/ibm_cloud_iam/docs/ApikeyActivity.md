# IbmCloudIam::ApikeyActivity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique id of the apikey. |  |
| **name** | **String** | Name provided during creation of the apikey. | [optional] |
| **type** | **String** | Type of the apikey. Supported values are &#x60;serviceid&#x60; and &#x60;user&#x60;. |  |
| **serviceid** | [**ApikeyActivityServiceid**](ApikeyActivityServiceid.md) |  | [optional] |
| **user** | [**ApikeyActivityUser**](ApikeyActivityUser.md) |  | [optional] |
| **last_authn** | **String** | Time when the apikey was last authenticated. | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::ApikeyActivity.new(
  id: null,
  name: null,
  type: null,
  serviceid: null,
  user: null,
  last_authn: null
)
```

