# IbmCloudPower::PVMInstanceClone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the server to create |  |
| **processors** | **Float** | Number of processors allocated | [optional] |
| **proc_type** | **String** | Processor type (dedicated, shared, capped) | [optional][default to &#39;dedicated&#39;] |
| **memory** | **Float** | Amount of memory allocated (in GB) | [optional] |
| **networks** | [**Array&lt;PVMInstanceAddNetwork&gt;**](PVMInstanceAddNetwork.md) | The pvm instance networks information |  |
| **volume_ids** | **Array&lt;String&gt;** | List of volume IDs; if provided then all the volumes must reside in the same storage pool and identify the deployment storage pool. This overrides any other storage selection values (storagePool, storageAffinity). | [optional] |
| **key_pair_name** | **String** | The name of the SSH key pair provided to the server for authenticating users (looked up in the tenant&#39;s list of keys) | [optional] |
| **software_licenses** | [**SoftwareLicenses**](SoftwareLicenses.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceClone.new(
  name: null,
  processors: null,
  proc_type: null,
  memory: null,
  networks: null,
  volume_ids: null,
  key_pair_name: null,
  software_licenses: null
)
```

