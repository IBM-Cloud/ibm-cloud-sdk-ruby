# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      # Work with VPC instances.
      module VPC
        # Work with multiple profiles.
        class Profiles < BaseVPC
          def all
            get
          end

          def instance(name)
            Profile.new(name, @token, @logger)
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
