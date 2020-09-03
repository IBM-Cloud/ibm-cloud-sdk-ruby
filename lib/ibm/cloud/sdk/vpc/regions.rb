# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # Work with VPC reqions
        class Regions < BaseVPC
          def initialize(parent)
            super(parent, 'regions')
          end

          def all
            get.array
          end

          def instance(name)
            Region.new(self, name)
          end
        end

        # Work with a single region
        class Region < BaseVPC
          def details
            get.hash
          end

          def zones
            Zones.new(self)
          end
        end

        # Zones are included within a region.
        class Zones < BaseVPC
          def initialize(parent)
            super(parent, 'zones')
          end

          def all
            get
          end

          def zone(name)
            Zone.new(self, name)
          end
        end

        # A single zone.
        class Zone < BaseVPC
          def details
            get
          end
        end
      end
    end
  end
end
