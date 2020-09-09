# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of IKEPolicy
        class IKEPolicies < BaseCollection
          def initialize(parent)
            @array_key = 'ike_policies'
            @instance = IKEPolicy
            super(parent, @array_key)
          end
        end

        # A single IKEPolicy
        class IKEPolicy < BaseInstance
          def connections
            get('connections')
          end
        end
      end
    end
  end
end
