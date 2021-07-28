require "ibm_cloud_activity_tracker/version"
require "ibm_cloud_sdk_core"

module IbmCloudActivityTracker
  ApiException = IBMCloudSdkCore::ApiException
  DetailedResponse = IBMCloudSdkCore::DetailedResponse

  require_relative "./ibm_cloud_activity_tracker/common.rb"
  require_relative "./ibm_cloud_activity_tracker/activity_tracker_api_v1.rb"
end
