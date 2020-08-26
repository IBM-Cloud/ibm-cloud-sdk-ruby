# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      # Container that encapsulates the VPC API.
      class VPC < BaseService
        # Create an API Client object for the  VPC IaaS service
        #
        # @param region [String] the IBM Power Cloud instance region
        # @param guid [String] the IBM Power Cloud instance GUID
        # @param token [IAMtoken] the IBM Cloud IAM Token object
        # @param crn [String] the IBM Power Cloud instance CRN
        # @param tenant [String] the IBM Power Cloud account ID
        def initialize(region, token)
          @region = region
          @token  = token
        end

        def endpoint
          "https://#{@region.sub(/-\d$/, '')}.iaas.cloud.ibm.com/v2"
        end

        def floagintips
          IBM::Cloud::SDK::VPC::FloatingIPs.new()
        end
      end
    end
  end
end
