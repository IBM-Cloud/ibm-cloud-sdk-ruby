# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of NetworkACL
        class NetworkACLs < BaseCollection
          def initialize(parent)
            super(parent, 'network_acls', child_class: NetworkACL)
          end
        end

        # A single NetworkACL
        class NetworkACL < BaseInstance
          def rules
            NETWORKACL::Rules.new(self)
          end
        end

        module NETWORKACL
          # A list of NetworkACL
          class Rules < BaseCollection
            def initialize(parent)
              @array_key = 'network_acls'
              @instance = NetworkACL
              super(parent, @array_key)
            end
          end

          # A single NetworkACL
          class Rule < BaseInstance
          end
        end
      end
    end
  end
end
