# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # Work with VPC reqions
        class SecurityGroups < BaseCollection
          def initialize(parent)
            @array_key = 'security_groups'
            @instance = SecurityGroup
            super(parent, @array_key)
          end

          def create(payload)
            post(payload)
          end
        end

        # Work with VPC reqions
        class SecurityGroup < BaseCollection
          def network_interfaces
            SECURITYGROUP::NetworkInterfaces.new(self)
          end

          def update(payload)
            patch(payload)
          end
        end

        module SECURITYGROUP
          # Work with interfaces associated with parent group.
          class NetworkInterfaces < BaseCollection
            def initialize(parent)
              @array_key = 'network_interfaces'
              @instance = NetworkInterface
              super(parent, @array_key)
            end
          end

          # Work with a single rule.
          class NetworkInterface < BaseInstance
            def remove
              delete
            end

            def update(payload)
              put(payload)
            end
          end

          # Work with rules associated with parent group.
          class Rules < BaseCollection
            def initialize(parent)
              @array_key = 'rules'
              @instance = Rule
              super(parent, @array_key)
            end

            def create(payload)
              post(payload)
            end
          end

          # Work with a single rule.
          class Rule < BaseInstance
            def remove
              delete
            end

            def update(payload)
              patch(payload)
            end
          end
        end
      end
    end
  end
end
