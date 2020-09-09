# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of Vpc
        class Vpcs < BaseCollection
          def initialize(parent)
            @array_key = 'vpcs'
            @instance = VpcInstance
            super(parent, @array_key)
          end
        end

        # A single Vpc
        class VpcInstance < BaseInstance
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
          class AddressPrefixes < BaseCollection
            def initialize(parent)
              @array_key = 'address_prefixes'
              @instance = AddressPrefix
              super(parent, @array_key)
            end
          end

          # A single Vpc
          class AddressPrefix < BaseInstance
          end

          # A list of Vpc
          class Routes < BaseCollection
            def initialize(parent)
              @array_key = 'routes'
              @instance = Route
              super(parent, @array_key)
            end
          end

          # A single Vpc
          class Route < BaseInstance
          end

        end
      end
    end
  end
end
