# IbmCloudObjectStorage::DefaultApi

All URIs are relative to *https://s3.us-south.objectstorage.softlayer.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_a_buckets_headers**](DefaultApi.md#check_a_buckets_headers) | **HEAD** /{Bucket}? | 
[**check_an_objects_headers**](DefaultApi.md#check_an_objects_headers) | **HEAD** /{Bucket}/{Key} | 
[**create_a_bucket**](DefaultApi.md#create_a_bucket) | **PUT** /{Bucket}? | 
[**delete_a_bucket_**](DefaultApi.md#delete_a_bucket_) | **DELETE** /{Bucket}? | 
[**delete_an_object**](DefaultApi.md#delete_an_object) | **DELETE** /{Bucket}/{Key} | 
[**download_an_object**](DefaultApi.md#download_an_object) | **GET** /{Bucket}/{Key} | 
[**list_buckets**](DefaultApi.md#list_buckets) | **GET** / | 
[**list_objects**](DefaultApi.md#list_objects) | **GET** /{Bucket}? | 
[**upload_an_object**](DefaultApi.md#upload_an_object) | **PUT** /{Bucket}/{Key} | 



## check_a_buckets_headers

> check_a_buckets_headers(bucket, body)



This operation is useful to determine if a bucket exists and you have permission to access it.

### Example

```ruby
# load the gem
require 'ibm_cloud_object_storage'
# setup authorization
IbmCloudObjectStorage.configure do |config|
  # Configure API key authorization: iam
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudObjectStorage::DefaultApi.new
bucket = 'bucket_example' # String | 
body = nil # Object | 

begin
  api_instance.check_a_buckets_headers(bucket, body)
rescue IbmCloudObjectStorage::ApiError => e
  puts "Exception when calling DefaultApi->check_a_buckets_headers: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bucket** | **String**|  | 
 **body** | **Object**|  | 

### Return type

nil (empty response body)

### Authorization

[iam](../README.md#iam)

### HTTP request headers

- **Content-Type**: text/xml
- **Accept**: text/xml


## check_an_objects_headers

> Object check_an_objects_headers(bucket, key, body)



The HEAD operation retrieves metadata from an object without returning the object itself. This operation is useful if you're only interested in an object's metadata. To use HEAD, you must have READ access to the object.

### Example

```ruby
# load the gem
require 'ibm_cloud_object_storage'
# setup authorization
IbmCloudObjectStorage.configure do |config|
  # Configure API key authorization: iam
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudObjectStorage::DefaultApi.new
bucket = 'bucket_example' # String | 
key = 'key_example' # String | 
body = nil # Object | 

begin
  result = api_instance.check_an_objects_headers(bucket, key, body)
  p result
rescue IbmCloudObjectStorage::ApiError => e
  puts "Exception when calling DefaultApi->check_an_objects_headers: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bucket** | **String**|  | 
 **key** | **String**|  | 
 **body** | **Object**|  | 

### Return type

**Object**

### Authorization

[iam](../README.md#iam)

### HTTP request headers

- **Content-Type**: text/xml
- **Accept**: text/xml


## create_a_bucket

> Object create_a_bucket(bucket, create_bucket_request)



Creates a new bucket.

### Example

```ruby
# load the gem
require 'ibm_cloud_object_storage'
# setup authorization
IbmCloudObjectStorage.configure do |config|
  # Configure API key authorization: iam
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudObjectStorage::DefaultApi.new
bucket = 'bucket_example' # String | 
create_bucket_request = IbmCloudObjectStorage::CreateBucketRequest.new # CreateBucketRequest | 

begin
  result = api_instance.create_a_bucket(bucket, create_bucket_request)
  p result
rescue IbmCloudObjectStorage::ApiError => e
  puts "Exception when calling DefaultApi->create_a_bucket: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bucket** | **String**|  | 
 **create_bucket_request** | [**CreateBucketRequest**](CreateBucketRequest.md)|  | 

### Return type

**Object**

### Authorization

[iam](../README.md#iam)

### HTTP request headers

- **Content-Type**: text/xml
- **Accept**: text/xml


## delete_a_bucket_

> delete_a_bucket_(bucket, body)



Deletes the bucket. All objects in the bucket must be deleted before the bucket itself can be deleted.

### Example

```ruby
# load the gem
require 'ibm_cloud_object_storage'
# setup authorization
IbmCloudObjectStorage.configure do |config|
  # Configure API key authorization: iam
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudObjectStorage::DefaultApi.new
bucket = 'bucket_example' # String | 
body = nil # Object | 

begin
  api_instance.delete_a_bucket_(bucket, body)
rescue IbmCloudObjectStorage::ApiError => e
  puts "Exception when calling DefaultApi->delete_a_bucket_: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bucket** | **String**|  | 
 **body** | **Object**|  | 

### Return type

nil (empty response body)

### Authorization

[iam](../README.md#iam)

### HTTP request headers

- **Content-Type**: text/xml
- **Accept**: Not defined


## delete_an_object

> Object delete_an_object(bucket, key, body)



Deletes an object from a bucket.

### Example

```ruby
# load the gem
require 'ibm_cloud_object_storage'
# setup authorization
IbmCloudObjectStorage.configure do |config|
  # Configure API key authorization: iam
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudObjectStorage::DefaultApi.new
bucket = 'bucket_example' # String | 
key = 'key_example' # String | 
body = nil # Object | 

begin
  result = api_instance.delete_an_object(bucket, key, body)
  p result
rescue IbmCloudObjectStorage::ApiError => e
  puts "Exception when calling DefaultApi->delete_an_object: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bucket** | **String**|  | 
 **key** | **String**|  | 
 **body** | **Object**|  | 

### Return type

**Object**

### Authorization

[iam](../README.md#iam)

### HTTP request headers

- **Content-Type**: text/xml
- **Accept**: text/xml


## download_an_object

> GetObjectOutput download_an_object(bucket, key, body)



Retrieves objects.

### Example

```ruby
# load the gem
require 'ibm_cloud_object_storage'
# setup authorization
IbmCloudObjectStorage.configure do |config|
  # Configure API key authorization: iam
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudObjectStorage::DefaultApi.new
bucket = 'bucket_example' # String | 
key = 'key_example' # String | 
body = nil # Object | 

begin
  result = api_instance.download_an_object(bucket, key, body)
  p result
rescue IbmCloudObjectStorage::ApiError => e
  puts "Exception when calling DefaultApi->download_an_object: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bucket** | **String**|  | 
 **key** | **String**|  | 
 **body** | **Object**|  | 

### Return type

[**GetObjectOutput**](GetObjectOutput.md)

### Authorization

[iam](../README.md#iam)

### HTTP request headers

- **Content-Type**: text/xml
- **Accept**: text/xml


## list_buckets

> ListBucketsOutput list_buckets



Returns a list of all buckets owned by the authenticated sender of the request.

### Example

```ruby
# load the gem
require 'ibm_cloud_object_storage'
# setup authorization
IbmCloudObjectStorage.configure do |config|
  # Configure API key authorization: iam
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudObjectStorage::DefaultApi.new

begin
  result = api_instance.list_buckets
  p result
rescue IbmCloudObjectStorage::ApiError => e
  puts "Exception when calling DefaultApi->list_buckets: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListBucketsOutput**](ListBucketsOutput.md)

### Authorization

[iam](../README.md#iam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/xml


## list_objects

> ListObjectsOutput list_objects(bucket, body, opts)



Returns some or all (up to 1000) of the objects in a bucket. You can use the request parameters as selection criteria to return a subset of the objects in a bucket.

### Example

```ruby
# load the gem
require 'ibm_cloud_object_storage'
# setup authorization
IbmCloudObjectStorage.configure do |config|
  # Configure API key authorization: iam
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudObjectStorage::DefaultApi.new
bucket = 'bucket_example' # String | 
body = nil # Object | 
opts = {
  max_keys: 'max_keys_example', # String | Pagination limit
  marker: 'marker_example' # String | Pagination token
}

begin
  result = api_instance.list_objects(bucket, body, opts)
  p result
rescue IbmCloudObjectStorage::ApiError => e
  puts "Exception when calling DefaultApi->list_objects: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bucket** | **String**|  | 
 **body** | **Object**|  | 
 **max_keys** | **String**| Pagination limit | [optional] 
 **marker** | **String**| Pagination token | [optional] 

### Return type

[**ListObjectsOutput**](ListObjectsOutput.md)

### Authorization

[iam](../README.md#iam)

### HTTP request headers

- **Content-Type**: text/xml
- **Accept**: text/xml


## upload_an_object

> Object upload_an_object(bucket, key, put_object_request)



Adds an object to a bucket.

### Example

```ruby
# load the gem
require 'ibm_cloud_object_storage'
# setup authorization
IbmCloudObjectStorage.configure do |config|
  # Configure API key authorization: iam
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudObjectStorage::DefaultApi.new
bucket = 'bucket_example' # String | 
key = 'key_example' # String | 
put_object_request = IbmCloudObjectStorage::PutObjectRequest.new # PutObjectRequest | 

begin
  result = api_instance.upload_an_object(bucket, key, put_object_request)
  p result
rescue IbmCloudObjectStorage::ApiError => e
  puts "Exception when calling DefaultApi->upload_an_object: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bucket** | **String**|  | 
 **key** | **String**|  | 
 **put_object_request** | [**PutObjectRequest**](PutObjectRequest.md)|  | 

### Return type

**Object**

### Authorization

[iam](../README.md#iam)

### HTTP request headers

- **Content-Type**: text/xml
- **Accept**: text/xml

