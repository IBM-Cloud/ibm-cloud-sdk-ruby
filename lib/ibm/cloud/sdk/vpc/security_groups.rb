# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # Work with VPC reqions
        class SecurityGroups < VPCCollection
          def initialize(parent)
            super(parent, 'security_groups', child_class: SecurityGroup)
          end
        end

        # Work with VPC reqions
        class SecurityGroup < VPCInstance
          def network_interfaces
            SECURITYGROUP::NetworkInterfaces.new(self)
          end
        end

        module SECURITYGROUP
          # Work with interfaces associated with parent group.
          class NetworkInterfaces < VPCCollection
            def initialize(parent)
              super(parent, 'network_interfaces', child_class: NetworkInterface)
            end
          end

          # Work with a single rule.
          class NetworkInterface < VPCInstance
          end

          # Work with rules associated with parent group.
          class Rules < VPCCollection
            def initialize(parent)
              super(parent, 'rules', child_class: Rule)
            end
          end

          # Work with a single rule.
          class Rule < VPCInstance
          end
        end
      end
    end
  end
end
