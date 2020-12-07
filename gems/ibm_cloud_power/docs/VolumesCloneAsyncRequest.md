# IbmCloudPower::VolumesCloneAsyncRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Base name of the new cloned volume(s). Cloned Volume names prefixed with&#39;clone-&#39;      and suffixed with ‘-#####’ (where #####is a 5 digit random number) If multiple volumes cloned they will be furthersuffixed with an incremental number starting with 1.   Example volume namesusing name&#x3D;\&quot;volume-abcdef\&quot;     single volume clone will be named \&quot;clone-volume-abcdef-83081“     multi volume clone will be named \&quot;clone-volume-abcdef-73721-1”,\&quot;clone-volume-abcdef-73721-2”, ...  | 
**volume_i_ds** | **Array&lt;String&gt;** | List of volumes to be cloned | 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::VolumesCloneAsyncRequest.new(name: null,
                                 volume_i_ds: null)
```


