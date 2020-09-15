# typed: true
# frozen_string_literal: true

require_relative('floating_ips')

module IBM
  module Cloud
    module SDK
      module VPC
        module INSTANCES
          # All netowrk interfaces.
          class NetworkInterfaces < BaseVPC
            def initialize(parent)
              super(parent, 'network_interfaces')
            end

            def all
              get.subkey('network_interfaces')
              # get
            end

            def update(payload)
              post(payload)
            end

            def instance(id)
              NetworkInterface.new(self, id)
            end
          end

          # A single network insterface.
          class NetworkInterface < BaseVPC
            def remove
              delete
            end

            def details
              get
            end

            def update(payload)
              patch(payload)
            end

            def floating_ips
              FloatingIps.new(self)
            end
          end
        end
      end
    end
  end
end
