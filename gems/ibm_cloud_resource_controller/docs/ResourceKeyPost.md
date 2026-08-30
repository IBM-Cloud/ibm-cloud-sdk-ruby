# IbmCloudResourceController::ResourceKeyPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the key. |  |
| **source** | **String** | The CRN or GUID of resource instance. |  |
| **parameters** | [**ResourceKeyPostParameters**](ResourceKeyPostParameters.md) |  | [optional] |
| **role** | **String** | The base IAM service role name (Reader, Writer, or Manager), or the service or custom role CRN. Refer to service’s documentation for supported roles. | [optional][default to &#39;Writer&#39;] |

## Example

```ruby
require 'ibm_cloud_resource_controller'

instance = IbmCloudResourceController::ResourceKeyPost.new(
  name: my-key,
  source: 25eba2a9-beef-450b-82cf-f5ad5e36c6dd,
  parameters: null,
  role: Writer
)
```

