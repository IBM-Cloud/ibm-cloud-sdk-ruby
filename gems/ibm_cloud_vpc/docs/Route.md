# IbmCloudVpc::Route

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | The date and time that the route was created | 
**destination** | **String** |  | 
**href** | **String** | The URL for this route | 
**id** | **String** | The unique identifier for this route | 
**lifecycle_state** | [**LifecycleState**](LifecycleState.md) |  | 
**name** | **String** | The user-defined name for this route | 
**next_hop** | [**RouteNextHop**](RouteNextHop.md) | The next hop that packets will be delivered to.  | 
**zone** | [**ZoneReference**](ZoneReference.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::Route.new(created_at: null,
                                 destination: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/vpcs/8e454ead-0db7-48ac-9a8b-2698d8c470a7/routes/1a15dca5-7e33-45e1-b7c5-bc690e569531,
                                 id: 1a15dca5-7e33-45e1-b7c5-bc690e569531,
                                 lifecycle_state: null,
                                 name: my-route-1,
                                 next_hop: null,
                                 zone: null)
```


