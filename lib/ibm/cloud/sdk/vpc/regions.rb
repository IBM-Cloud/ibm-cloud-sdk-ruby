# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # Work with VPC reqions
        class Regions < VPCCollection
          def initialize(parent)
            super(parent, 'regions', child_class: Region)
          end
        end

        # Work with a single region
        class Region < VPCInstance
          def zones
            Zones.new(self)
          end
        end

        # Zones are included within a region.
        class Zones < VPCCollection
          def initialize(parent)
            super(parent, 'zones', child_class: Zone)
          end
        end

        # A single zone.
        class Zone < VPCInstance
        end
      end
    end
  end
end
