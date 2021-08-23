require "ibm_cloud_databases/version"
require "ibm_cloud_sdk_core"

module IbmCloudDatabases
  ApiException = IBMCloudSdkCore::ApiException
  DetailedResponse = IBMCloudSdkCore::DetailedResponse

  require_relative "./ibm_cloud_databases/common.rb"
  require_relative "./ibm_cloud_databases/cloud_databases_v5.rb"
end
