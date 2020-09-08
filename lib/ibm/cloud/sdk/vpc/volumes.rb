# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # Work with a collection of volumes.
        class Volumes < BaseCollection
          def initialize(parent)
            @array_key = 'volumes'
            @instance = Volume
            super(parent, @array_key)
          end

          def create(payload)
            post(payload)
          end
        end

        # Work with a single volume.
        class Volume < BaseInstance
          def create(payload)
            post(payload)
          end

          def remove
            delete
          end
        end
      end
    end
  end
end
