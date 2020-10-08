# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of Member
        class Members < VPCCollection
          def initialize(parent)
            @array_key = 'members'
            @instance = Member
            super(parent, @array_key)
          end
        end

        # A single Member
        class Member < VPCInstance
        end
      end
    end
  end
end
