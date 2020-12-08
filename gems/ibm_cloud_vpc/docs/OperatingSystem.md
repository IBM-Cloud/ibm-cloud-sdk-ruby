# IbmCloudVpc::OperatingSystem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**architecture** | **String** | The operating system architecture | 
**display_name** | **String** | A unique, display-friendly name for the operating system | 
**family** | **String** | The name of the software family this operating system belongs to | 
**href** | **String** | The URL for this operating system | 
**name** | **String** | The globally unique name for this operating system | 
**vendor** | **String** | The vendor of the operating system | 
**version** | **String** | The major release version of this operating system | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::OperatingSystem.new(architecture: amd64,
                                 display_name: Ubuntu Server 16.04 LTS amd64,
                                 family: Ubuntu Server,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/operating_systems/ubuntu-16-amd64,
                                 name: ubuntu-16-amd64,
                                 vendor: Canonical,
                                 version: 16.04 LTS)
```


