# IbmCloudPower::SwitchEnabledRoutes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disabled_route** | [**Route**](Route.md) | The route that was disabled (route-B); state will be \&quot;updating\&quot; immediately after the request, poll GET /v1/routes/{id} for final state |  |
| **enabled_route** | [**Route**](Route.md) | The route that was enabled (route-A); state will be \&quot;updating\&quot; immediately after the request, poll GET /v1/routes/{id} for final state |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SwitchEnabledRoutes.new(
  disabled_route: null,
  enabled_route: null
)
```

