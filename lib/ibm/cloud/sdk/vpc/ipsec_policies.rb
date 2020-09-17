# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of IPSecPolicy
        class IPSecPolicies < BaseCollection
          def initialize(parent)
            super(parent, 'ike_policies', child_class: IPSecPolicy)
          end
        end

        # A single IPSecPolicy
        class IPSecPolicy < BaseInstance
          def connections
            get('connections')
          end
        end
      end
    end
  end
end
