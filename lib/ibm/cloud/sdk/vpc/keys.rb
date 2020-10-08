# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A collection of SSH keys.
        class Keys < VPCCollection
          def initialize(parent)
            super(parent, 'keys', child_class: Key)
          end
        end

        # A single key.
        class Key < VPCInstance
        end
      end
    end
  end
end
