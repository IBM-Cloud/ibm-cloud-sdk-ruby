# typed: true
# frozen_string_literal: true

require('helpers/log')
require_relative('vpc/base_vpc')

module IBM
  module Cloud
    module SDK
      # Container that encapsulates the VPC API.
      class Vpc < BaseVPC
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
          @logger = Log.new(STDOUT, name: 'root', log_level: 'debug')
        end

        def endpoint
          "https://#{@region.sub(/-\d$/, '')}.iaas.cloud.ibm.com/v1"
        end

        end
      end
    end
  end
end
