# typed: true
# frozen_string_literal: true

require 'ibm/cloud/sdk_http'
require_relative 'vpc/http'

require_relative 'vpc/floatingips'
require_relative 'vpc/flowlogcollectors'
require_relative 'vpc/ike_policies'
require_relative 'vpc/images'
require_relative 'vpc/instance_profiles'
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
      class Vpc
        include VPC::VpcHTTP

        # Create an API Client object for the  VPC IaaS service
        #
        # @param region [String] the IBM Power Cloud instance region
        # @param connection [IBM::Cloud::SDK::VPC::Connection] A connection object.
        # @param logger [Logger] An instance of an instanciated logger.
        def initialize(region, connection, token, logger: nil)
          @region = region
          @token = token
          @connection = connection

          @logger = logger || Logger.new($stdout, level: :warn)
        end

        attr_reader :logger, :token, :connection
        attr_accessor :region

        # The Region API endpoint.
        def endpoint
          "https://#{region.sub(/-\d$/, '')}.iaas.cloud.ibm.com/v1"
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

        def instance_profiles
          VPC::InstanceProfiles.new(self)
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
