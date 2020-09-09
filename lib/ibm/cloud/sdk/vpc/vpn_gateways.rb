# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of VPNGateway
        class VPNGateways < BaseCollection
          def initialize(parent)
            @array_key = 'vpn_gateways'
            @instance = VPNGateway
            super(parent, @array_key)
          end
        end

        # A single VPNGateway
        class VPNGateway < BaseInstance
          def connections
            VPNGATEWAY::Connections.new(self)
          end
        end
      end
    end
  end
end
