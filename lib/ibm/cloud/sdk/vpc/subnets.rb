# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of submetes
        class Subnets < BaseCollection
          def initialize(parent)
            super(parent, 'subnets', child_class: Subnet)
          end
        end

        # A single subnet
        class Subnet < BaseInstance
        end
      end
    end
  end
end
