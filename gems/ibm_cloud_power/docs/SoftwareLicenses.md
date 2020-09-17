# IbmCloudPower::SoftwareLicenses

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ibmi_css** | **Boolean** | IBMi Cloud Storage Solution | [optional] [default to false]
**ibmi_pha** | **Boolean** | IBMi Power High Availability | [optional] [default to false]
**ibmi_rds** | **Boolean** | IBMi Rational Dev Studio | [optional] [default to false]
**ibmi_rds_users** | **Integer** | IBMi Rational Dev Studio Number of User Licenses | [optional] 
**ibmi_dbq** | **Boolean** | IBMi Cloud Storage Solution | [optional] [default to false]

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::SoftwareLicenses.new(ibmi_css: null,
                                 ibmi_pha: null,
                                 ibmi_rds: null,
                                 ibmi_rds_users: null,
                                 ibmi_dbq: null)
```


