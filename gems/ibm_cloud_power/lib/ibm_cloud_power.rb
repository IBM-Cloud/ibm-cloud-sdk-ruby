require "ibm_cloud_power/version"
require "ibm_cloud_sdk_core"

module IbmCloudPower
  ApiException = IBMCloudSdkCore::ApiException
  DetailedResponse = IBMCloudSdkCore::DetailedResponse

  require_relative "./ibm_cloud_power/common.rb"
  require_relative "./ibm_cloud_power/power_cloud_api_v1.rb"
end
