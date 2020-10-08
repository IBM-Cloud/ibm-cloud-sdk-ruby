# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # Work with multiple profiles.
        class InstanceProfiles < VPCCollection
          def initialize(parent)
            super(parent, 'instance/profiles', child_class: InstanceProfile, array_key: 'profiles')
          end
        end

        # Get a single profile.
        class InstanceProfile < VPCInstance
        end
      end
    end
  end
end
