# typed: true
# frozen_string_literal: true

require_relative('floating_ips')

module IBM
  module Cloud
    module SDK
      module VPC
        module INSTANCE
          # All netowrk interfaces.
          class NetworkInterfaces < VPCCollection
            def initialize(parent)
              super(parent, 'network_interfaces', child_class: NetworkInterface)
            end
          end

          # A single network insterface.
          class NetworkInterface < VPCInstance
            def floating_ips
              FloatingIps.new(self)
            end
          end
        end
      end
    end
  end
end
