# typed: true
# frozen_string_literal: true

require_relative 'vpc/base_vpc'
require_relative 'vpc/base_collection'
require_relative 'vpc/base_instance'

require_relative 'vpc/images'
require_relative 'vpc/floatingips'
require_relative 'vpc/instances'
require_relative 'vpc/subnets'
require_relative 'vpc/volumes'
require_relative 'vpc/volume_profiles'

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
        def initialize(region, token, logger)
          @region = region
          @token  = token
          @logger = logger
        end

        attr_reader :token
        attr_reader :logger

        attr_accessor :region

        def endpoint
          "https://#{@region.sub(/-\d$/, '')}.iaas.cloud.ibm.com/v1"
        end

        def floating_ips
          VPC::FloatingIPs.new(self)
        end

        def images
          VPC::Images.new(self)
        end

        def instances
          VPC::Instances.new(self)
        end

        def keys
          VPC::Keys.new(self)
        end

        def regions
          VPC::Regions.new(self)
        end

        def subnets
          VPC::Subnets.new(self)
        end

        def volumes
          VPC::Volumes.new(self)
        end

        def volumes_profiles
          VPC::VolumeProfiles.new(self)
        end

      end
    end
  end
end
