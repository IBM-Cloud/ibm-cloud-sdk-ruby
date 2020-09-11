# typed: true
# frozen_string_literal: true

require_relative 'instance/actions'
require_relative 'instance/network_interfaces'
require_relative 'instance/volume_attachments'
require_relative 'instance/profiles'

module IBM
  module Cloud
    module SDK
      module VPC
        module INSTANCES
          # Work with a single instance.
          class Instance < BaseInstance
            def actions
              Actions.new(self)
            end

            def network_interfaces
              NetworkInterfaces.new(self)
            end

            def volume_attachments
              VolumeAttachments.new(self)
            end

            def profiles
              Profiles.new(self)
            end
          end
        end
      end
    end
  end
end
