require "ibm_cloud_iam/version"
require "ibm_cloud_sdk_core"

module IbmCloudIam
  ApiException = IBMCloudSdkCore::ApiException
  DetailedResponse = IBMCloudSdkCore::DetailedResponse

  require_relative "./ibm_cloud_iam/common.rb"
  require_relative "./ibm_cloud_iam/iam_identity_v1.rb"
end
