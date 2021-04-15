require "ibm_cloud_resource_controller/version"
require "ibm_cloud_sdk_core"

module IbmCloudResourceController
  ApiException = IBMCloudSdkCore::ApiException
  DetailedResponse = IBMCloudSdkCore::DetailedResponse

  require_relative "./ibm_cloud_resource_controller/authenticators.rb"
  require_relative "./ibm_cloud_resource_controller/common.rb"
  require_relative "./ibm_cloud_resource_controller/resource_controller_v2.rb"
  require_relative "./ibm_cloud_resource_controller/resource_manager_v2.rb"
end
