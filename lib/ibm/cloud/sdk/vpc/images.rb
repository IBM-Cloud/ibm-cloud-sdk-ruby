# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # Work with multiple images.
        class Images < BaseVPC
          def initialize(parent)
            super(parent, 'images')
          end

          def all
            get
          end

          def create(payload)
            post(payload)
          end

          def instance(id)
            Image.new(self, id)
          end
        end

        # Work with a single image.
        class Image < BaseVPC
          def details
            get
          end

          def update(payload)
            patch(payload)
          end

          def remove
            delete
          end
        end
      end
    end
  end
end
