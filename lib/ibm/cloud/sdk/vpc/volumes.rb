# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # Work with a collection of volumes.
        class Volumes < BaseCollection
          def initialize(parent)
            super(parent, 'volumes', child_class: Volume)
          end
        end

        # Work with a single volume.
        class Volume < BaseInstance
        end
      end
    end
  end
end
