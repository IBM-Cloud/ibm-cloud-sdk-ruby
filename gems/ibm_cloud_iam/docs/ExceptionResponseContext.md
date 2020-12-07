# IbmCloudIam::ExceptionResponseContext

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_id** | **String** | The request ID of the inbound REST request.  | [optional] 
**request_type** | **String** | The request type of the inbound REST request.  | [optional] 
**user_agent** | **String** | The user agent of the inbound REST request.  | [optional] 
**url** | **String** | The URL of that cluster.  | [optional] 
**instance_id** | **String** | The instance ID of the server instance processing the request.  | [optional] 
**thread_id** | **String** | The thread ID of the server instance processing the request.  | [optional] 
**host** | **String** | The host of the server instance processing the request.  | [optional] 
**start_time** | **String** | The start time of the request.  | [optional] 
**end_time** | **String** | The finish time of the request.  | [optional] 
**elapsed_time** | **String** | The elapsed time in msec.  | [optional] 
**locale** | **String** | The language used to present the error message.  | [optional] 
**cluster_name** | **String** | The cluster name.  | [optional] 

## Code Sample

```ruby
require 'IbmCloudIam'

instance = IbmCloudIam::ExceptionResponseContext.new(request_id: null,
                                 request_type: null,
                                 user_agent: null,
                                 url: null,
                                 instance_id: null,
                                 thread_id: null,
                                 host: null,
                                 start_time: null,
                                 end_time: null,
                                 elapsed_time: null,
                                 locale: null,
                                 cluster_name: null)
```


