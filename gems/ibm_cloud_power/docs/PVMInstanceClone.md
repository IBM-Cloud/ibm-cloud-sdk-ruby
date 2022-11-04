# IbmCloudPower::PVMInstanceClone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_pair_name** | **String** | The name of the SSH key pair provided to the server for authenticating users (looked up in the tenant&#39;s list of keys) | [optional] |
| **memory** | **Float** | Amount of memory allocated (in GB) | [optional] |
| **name** | **String** | Name of the server to create |  |
| **networks** | [**Array&lt;PVMInstanceAddNetwork&gt;**](PVMInstanceAddNetwork.md) | The pvm instance networks information |  |
| **proc_type** | **String** | Processor type (dedicated, shared, capped) | [optional][default to &#39;dedicated&#39;] |
| **processors** | **Float** | Number of processors allocated | [optional] |
| **software_licenses** | [**SoftwareLicenses**](SoftwareLicenses.md) |  | [optional] |
| **volume_ids** | **Array&lt;String&gt;** | List of volume IDs | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceClone.new(
  key_pair_name: null,
  memory: null,
  name: null,
  networks: null,
  proc_type: null,
  processors: null,
  software_licenses: null,
  volume_ids: null
)
```

