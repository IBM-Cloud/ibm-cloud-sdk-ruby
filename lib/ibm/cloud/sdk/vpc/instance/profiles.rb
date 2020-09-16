# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        module INSTANCES
          # Work with multiple profiles.
          class Profiles < BaseVPC
            def initialize(parent)
              super(parent, 'instance/profiles')
            end

            def all
              get
            end

            def instance(name)
              Profile.new(self, name)
            end
          end

          # Get a single profile.
          class Profile < BaseVPC
            def details
              get
            end
          end
        end
      end
    end
  end
end
