# typed: true
# frozen_string_literal: true

require_relative('floating_ips')

module IBM
  module Cloud
    module SDK
      module VPC
        module INSTANCES
          # All netowrk interfaces.
          class NetworkInterfaces < BaseCollection
            def initialize(parent)
              super(parent, 'network_interfaces', child_class: NetworkInterface)
            end
          end

          # A single network insterface.
          class NetworkInterface < BaseInstance
            def floating_ips
              FloatingIps.new(self)
            end
          end
        end
      end
    end
  end
end
