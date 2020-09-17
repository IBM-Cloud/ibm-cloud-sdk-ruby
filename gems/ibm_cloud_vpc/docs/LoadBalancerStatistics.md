# IbmCloudVpc::LoadBalancerStatistics

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active_connections** | **Integer** | Number of active connections of this load balancer | 
**connection_rate** | **Float** | Current connection rate (connections per second) of this load balancer | 
**data_processed_this_month** | **Integer** | Total number of data processed (bytes) of this load balancer within current calendar month | 
**throughput** | **Float** | Current throughput (Mbps) of this load balancer | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerStatistics.new(active_connections: 797,
                                 connection_rate: 91.121,
                                 data_processed_this_month: 10093173145,
                                 throughput: 167.278)
```


