# typed: true
# frozen_string_literal: true

require_relative 'vpc/base_vpc'
require_relative 'vpc/base_collection'
require_relative 'vpc/base_instance'

require_relative 'vpc/floatingips'
require_relative 'vpc/flowlogcollectors'
require_relative 'vpc/ike_policies'
require_relative 'vpc/images'
require_relative 'vpc/instances'
require_relative 'vpc/ipsec_policies'
require_relative 'vpc/keys'
require_relative 'vpc/load_balancers'
require_relative 'vpc/network_acls'
require_relative 'vpc/operating_systems'
require_relative 'vpc/public_gateways'
require_relative 'vpc/regions'
require_relative 'vpc/security_groups'
require_relative 'vpc/subnets'
require_relative 'vpc/volume_profiles'
require_relative 'vpc/volumes'
require_relative 'vpc/vpcs'
require_relative 'vpc/vpn_gateways'

module IBM
  module Cloud
    module SDK
      # Container that encapsulates the VPC API.
      class Vpc < BaseVPC
        # Create an API Client object for the  VPC IaaS service
        #
        # @param region [String] the IBM Power Cloud instance region
        # @param token [IAMtoken] the IBM Cloud IAM Token object
        # @param logger [Logger] an instance of an instanciated logger.
        def initialize(region, api_key, logger: nil)
          @region = region
          @api_key = api_key
          @token = api_key
          # @token = IBM::Cloud::SDK::IAM.new(api_key).get_identity_token
          @logger = logger if logger
          @logger ||= Logger.new($stdout)
        end

        # Check to see if token expired. Refresh when necessary.
        def new_token
        end

        attr_reader :token, :logger
        attr_accessor :region

        # The Region API endpoint.
        def endpoint
          "https://#{@region.sub(/-\d$/, '')}.iaas.cloud.ibm.com/v1"
        end

        # Entry point to the Floating IPs API.
        def floating_ips
          VPC::FloatingIPs.new(self)
        end

        def flowlog_collectors
          VPC::FlowLogCollectors.new(self)
        end

        def ike_policies
          VPC::IKEPolicies.new(self)
        end

        def images
          VPC::Images.new(self)
        end

        def instances
          VPC::Instances.new(self)
        end

        def ipsec_policies
          VPC::IPSecPolicies.new(self)
        end

        def keys
          VPC::Keys.new(self)
        end

        def load_balancers
          VPC::LoadBalancers.new(self)
        end

        def network_acls
          VPC::NetworkACLs.new(self)
        end

        def operating_systems
          VPC::OperatingSystems.new(self)
        end

        def public_gateways
          VPC::PublicGateways.new(self)
        end

        def regions
          VPC::Regions.new(self)
        end

        def security_groups
          VPC::SecurityGroups.new(self)
        end

        def subnets
          VPC::Subnets.new(self)
        end

        def volumes_profiles
          VPC::VolumeProfiles.new(self)
        end

        def volumes
          VPC::Volumes.new(self)
        end

        def vpcs
          VPC::Vpcs.new(self)
        end

        def vpn_gateways
          VPC::VPNGateways.new(self)
        end
      end
    end
  end
end
