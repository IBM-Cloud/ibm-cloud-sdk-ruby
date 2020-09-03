# typed: true
# frozen_string_literal: true

require_relative 'instance/actions'
require_relative 'instance/network_interfaces'
require_relative 'instance/volume_attachments'

module IBM
  module Cloud
    module SDK
      module VPC
        module INSTANCES
          # Work with a single instance.
          class Instance < BaseVPC
            def details
              get
            end

            def update(payload)
              post(payload)
            end

            def actions
              Actions.new(self)
            end

            def network_interfaces
              NetworkInterfaces.new(self)
            end

            def volume_attachments
              VolumeAttachments.new(self)
            end
          end
        end
      end
    end
  end
end
