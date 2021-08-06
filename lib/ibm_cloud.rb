require "ibm_cloud/version"
require "ibm_cloud_sdk_core"

module IbmCloud
  ApiException = IBMCloudSdkCore::ApiException
  DetailedResponse = IBMCloudSdkCore::DetailedResponse

  require_relative "./ibm_cloud/common.rb"
end
