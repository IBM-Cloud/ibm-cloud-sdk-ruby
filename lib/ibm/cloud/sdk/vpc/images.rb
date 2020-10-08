# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # Work with multiple images.
        class Images < VPCCollection
          def initialize(parent)
            super(parent, 'images', child_class: Image)
          end
        end

        # Work with a single image.
        class Image < VPCInstance
        end
      end
    end
  end
end
