# typed: true
# frozen_string_literal: true

require_relative('members')

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of Pool
        class Pools < BaseCollection
          def initialize(parent)
            @array_key = 'pools'
            @instance = Pool
            super(parent, @array_key)
          end
        end

        # A single Pool
        class Pool < BaseInstance
          def members
            Members.new(self)
          end
        end
      end
    end
  end
end
