# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of IKEPolicy
        class IKEPolicies < VPCCollection
          def initialize(parent)
            super(parent, 'ike_policies', child_class: IKEPolicy)
          end
        end

        # A single IKEPolicy
        class IKEPolicy < VPCInstance
          def connections
            get('connections')
          end
        end
      end
    end
  end
end
