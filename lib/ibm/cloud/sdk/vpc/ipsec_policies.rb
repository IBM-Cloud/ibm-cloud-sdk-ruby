# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of IPSecPolicy
        class IPSecPolicies < BaseCollection
          def initialize(parent)
            @array_key = 'ike_policies'
            @instance = IPSecPolicy
            super(parent, @array_key)
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
