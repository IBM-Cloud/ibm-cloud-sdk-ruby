# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of NetworkACL
        class NetworkACLs < VPCCollection
          def initialize(parent)
            super(parent, 'network_acls', child_class: NetworkACL)
          end
        end

        # A single NetworkACL
        class NetworkACL < VPCInstance
          def rules
            NETWORKACL::Rules.new(self)
          end
        end

        module NETWORKACL
          # A list of NetworkACL
          class Rules < VPCCollection
            def initialize(parent)
              @array_key = 'network_acls'
              @instance = NetworkACL
              super(parent, @array_key)
            end
          end

          # A single NetworkACL
          class Rule < VPCInstance
          end
        end
      end
    end
  end
end
