# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # Work with Volume Profiles.
        class VolumeProfiles < BaseCollection
          def initialize(parent)
            super(parent, 'volume/profiles', child_class: VolumeProfile, array_key: 'profiles')
          end
        end

        # Work with a single volume profile.
        class VolumeProfile < BaseInstance
        end
      end
    end
  end
end
