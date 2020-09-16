# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # Work with VPC reqions
        class SecurityGroups < BaseCollection
          def initialize(parent)
            super(parent, 'security_groups', child_class: SecurityGroup)
          end
        end

        # Work with VPC reqions
        class SecurityGroup < BaseCollection
          def network_interfaces
            SECURITYGROUP::NetworkInterfaces.new(self)
          end
        end

        module SECURITYGROUP
          # Work with interfaces associated with parent group.
          class NetworkInterfaces < BaseCollection
            def initialize(parent)
              super(parent, 'network_interfaces', child_class: NetworkInterface)
            end
          end

          # Work with a single rule.
          class NetworkInterface < BaseInstance
          end

          # Work with rules associated with parent group.
          class Rules < BaseCollection
            def initialize(parent)
              super(parent, 'rules', child_class: Rule)
            end
          end

          # Work with a single rule.
          class Rule < BaseInstance
          end
        end
      end
    end
  end
end
