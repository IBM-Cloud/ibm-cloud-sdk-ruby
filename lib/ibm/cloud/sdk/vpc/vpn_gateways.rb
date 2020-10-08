# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of VPNGateway
        class VPNGateways < VPCCollection
          def initialize(parent)
            super(parent, 'vpn_gateways', child_class: VPNGateway)
          end
        end

        # A single VPNGateway
        class VPNGateway < VPCInstance
          # Get a lisst of connections asssociated with this gateway.
          def connections
            VPNGATEWAY::Connections.new(self)
          end
        end
      end
    end
  end
end
