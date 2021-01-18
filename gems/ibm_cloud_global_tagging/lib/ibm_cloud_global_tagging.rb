require "ibm_cloud_global_tagging/version"
require "ibm_cloud_sdk_core"

module IbmCloudGlobalTagging
  ApiException = IBMCloudSdkCore::ApiException
  DetailedResponse = IBMCloudSdkCore::DetailedResponse

  require_relative "./ibm_cloud_global_tagging/common.rb"
  require_relative "./ibm_cloud_global_tagging/global_tagging_v1.rb"
end
