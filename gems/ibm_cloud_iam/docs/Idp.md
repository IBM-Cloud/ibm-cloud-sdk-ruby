# IbmCloudIam::Idp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idp_id** | **String** |  | [optional] |
| **entity_tag** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **properties** | **Object** |  | [optional] |
| **secrets** | **Object** |  | [optional] |
| **share_scope** | [**Array&lt;ShareScope&gt;**](ShareScope.md) |  | [optional] |
| **active** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **modified_at** | **Time** |  | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::Idp.new(
  idp_id: null,
  entity_tag: null,
  account_id: null,
  name: null,
  type: saml,
  properties: null,
  secrets: null,
  share_scope: null,
  active: null,
  created_at: null,
  modified_at: null
)
```

