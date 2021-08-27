require "ibm_cloud/version"
require "ibm_cloud_sdk_core"

module IBMCloud
  ApiException = IBMCloudSdkCore::ApiException
  DetailedResponse = IBMCloudSdkCore::DetailedResponse

  require_relative "./ibm_cloud/activity_tracker_api_v1.rb"
  require_relative "./ibm_cloud/common.rb"
  require_relative "./ibm_cloud/global_tagging_v1.rb"
  require_relative "./ibm_cloud/iam_identity_v1.rb"
  require_relative "./ibm_cloud/power_cloud_api_v1.rb"
  require_relative "./ibm_cloud/resource_controller_v2.rb"
end
