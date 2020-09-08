# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # Work with Volume Profiles.
        class VolumeProfiles < BaseCollection
          def initialize(parent)
            @array_key = 'volume_profiles'
            @instance = VolumeProfile
            super(parent, 'volume/profiles')
          end
        end

        # Work with a single volume profile.
        class VolumeProfile < BaseInstance
        end
      end
    end
  end
end
