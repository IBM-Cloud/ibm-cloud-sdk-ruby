# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A collection of SSH keys.
        class Keys < BaseCollection
          def initialize(parent)
            super(parent, 'keys', child_class: Key)
          end
        end

        # A single key.
        class Key < BaseInstance
        end
      end
    end
  end
end
