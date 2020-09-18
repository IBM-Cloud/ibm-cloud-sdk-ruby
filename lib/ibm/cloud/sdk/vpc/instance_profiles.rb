# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # Work with multiple profiles.
        class InstanceProfiles < BaseCollection
          def initialize(parent)
            super(parent, 'instance/profiles', child_class: Profile, array_key: 'profiles')
          end
        end

        # Get a single profile.
        class Profile < BaseInstance
        end
      end
    end
  end
end
