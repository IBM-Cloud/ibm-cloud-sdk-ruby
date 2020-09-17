# IbmCloudPower::NetworkIpAddressMetrics

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available** | **Float** | Number of available IP addresses | 
**used** | **Float** | Number of IP addresses currently in use | 
**total** | **Float** | Total number of all IP addresses in all ipAddressRanges | 
**utilization** | **Float** | Utilization of IP addresses in percent form (used / total) [0 - 100] | 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::NetworkIpAddressMetrics.new(available: null,
                                 used: null,
                                 total: null,
                                 utilization: null)
```


