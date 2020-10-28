# Changelog
All notable changes to the gem ibm-cloud-sdk-ruby will be documented here.

## v0.1.11 - 2020-10-28
- Add start, stop, and reboot actions on VPC instances

## v0.1.10 - 2020-10-08
- Change VPC http provider to HTTParty
- Add Tags API and clean up VPC
- Log ResourceController and IAM calls

## v0.1.9 - 2020-10-02
- Fix PowerVS Volume Attach/Detach calls

## v0.1.8 - 2020-10-01
- Add second level instances

## v0.1.7 - 2020-09-28
- Added Logging in IBM Cloud
- Add VCR to vpc spec
- Add exception when status of response is not in 200 range or 404
- Power IaaS Update docstrings, VM actions volumes

## v0.1.6 - 2020-09-23
- Add PowerIaaS method to get instance info
- Return region specific PowerVS storage types
- Move VPC instance into instances and add initialization method.

## v0.1.5 - 2020-09-21
- Added Enumerable based pagination support
- Move instance profiles
- Improve resource lookup by GUID
- Add support to create a PowerIaas volume

## v0.1.4 - 2020-09-17
- Added support for the IBM Virtual Private Cloud (VPC) service

## v0.1.3 - 2020-08-31
### Added the following rest api calls for Power System Virtual Server service 
- Add PowerIaas 'delete_volume' method
- Add PowerVS SAP API calls
- get list of available system pools within a particular data center
- get list of all storage type availble in the data center. There may be 
  update to the call once PowerVS service updates the storage type rest api 
  for Power System Virtual Server service . 

