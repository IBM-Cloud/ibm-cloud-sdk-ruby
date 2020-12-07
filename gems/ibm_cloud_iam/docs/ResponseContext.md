# IbmCloudIam::ResponseContext

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_id** | **String** | The transaction ID of the inbound REST request.  | [optional] 
**operation** | **String** | The operation of the inbound REST request.  | [optional] 
**user_agent** | **String** | The user agent of the inbound REST request.  | [optional] 
**url** | **String** | The URL of that cluster.  | [optional] 
**instance_id** | **String** | The instance ID of the server instance processing the request.  | [optional] 
**thread_id** | **String** | The thread ID of the server instance processing the request.  | [optional] 
**host** | **String** | The host of the server instance processing the request.  | [optional] 
**start_time** | **String** | The start time of the request.  | [optional] 
**end_time** | **String** | The finish time of the request.  | [optional] 
**elapsed_time** | **String** | The elapsed time in msec.  | [optional] 
**cluster_name** | **String** | The cluster name.  | [optional] 

## Code Sample

```ruby
require 'IbmCloudIam'

instance = IbmCloudIam::ResponseContext.new(transaction_id: null,
                                 operation: null,
                                 user_agent: null,
                                 url: null,
                                 instance_id: null,
                                 thread_id: null,
                                 host: null,
                                 start_time: null,
                                 end_time: null,
                                 elapsed_time: null,
                                 cluster_name: null)
```


