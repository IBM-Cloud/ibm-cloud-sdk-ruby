# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of Vpc
        class Vpcs < VPCCollection
          def initialize(parent)
            super(parent, 'vpcs', child_class: VpcInstance)
          end
        end

        # A single Vpc
        class VpcInstance < VPCInstance
          def default_network_acl
            get('default_network_acl')
          end

          def default_security_group
            get('default_security_group')
          end

          def address_prefixes
            VPCS::AddressPrefixes.new(self)
          end

          def routes
            VPCS::Routes.new(self)
          end
        end

        module VPCS
          # A list of Vpc
          class AddressPrefixes < VPCCollection
            def initialize(parent)
              super(parent, 'address_prefixes', child_class: AddressPrefix)
            end
          end

          # A single Vpc
          class AddressPrefix < VPCInstance
          end

          # A list of Vpc
          class Routes < VPCCollection
            def initialize(parent)
              super(parent, 'routes', child_class: Route)
            end
          end

          # A single Vpc
          class Route < VPCInstance
          end
        end
      end
    end
  end
end
