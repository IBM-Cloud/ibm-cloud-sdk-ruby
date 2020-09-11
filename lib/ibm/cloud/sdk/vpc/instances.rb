# typed: true
# frozen_string_literal: true

require_relative('instance')

module IBM
  module Cloud
    module SDK
      # Work with VPC instances.
      module VPC
        # Work with multiple VM instances.
        class Instances < BaseCollection
          def initialize(parent)
            super(parent, 'instances', child_class: INSTANCES::Instance)
          end
        end
      end
    end
  end
end
