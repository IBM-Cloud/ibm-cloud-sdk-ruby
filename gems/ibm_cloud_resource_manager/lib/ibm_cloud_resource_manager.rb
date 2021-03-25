# frozen_string_literal: true

require 'ibm_cloud_sdk_core'

require_relative 'ibm_cloud_resource_manager/version'

# SDK for accessing IBM Resource Manager API using IBM tooling.
module IbmCloudResourceManager
  ApiException = IBMCloudSdkCore::ApiException
  DetailedResponse = IBMCloudSdkCore::DetailedResponse

  require_relative 'ibm_cloud_resource_manager/common'
  require_relative 'ibm_cloud_resource_manager/resource_manager_v2'
end
