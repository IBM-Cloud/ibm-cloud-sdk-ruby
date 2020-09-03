# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of submetes
        class Subnets < BaseCollection
          def initialize(parent)
            @array_key = 'subnets'
            @instance = Subnet
            super(parent, @array_key)
          end
        end

        # A single subnet
        class Subnet < BaseInstance; end
      end
    end
  end
end
