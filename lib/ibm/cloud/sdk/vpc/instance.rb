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
            def actions
              Actions.new(url('actions'), @token, @logger)
            end

            def network_interfaces
              NetworkInterfaces.new(url('network_interfaces'), @token, @logger)
            end

            def volume_attachments
              VolumeAttachments.new(url('volume_attachments'), @token, @logger)
            end
          end
        end
      end
    end
  end
end
