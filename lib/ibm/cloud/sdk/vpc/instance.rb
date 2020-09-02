# typed: true
# frozen_string_literal: true

require_relative('instance/actions')
require_relative('instance/network_interfaces')

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

          # Get all attached volumes.
          class VolumeAttachments < BaseVPC

            def all
              get
            end

            def create(payload)
              post(payload)
            end

            def instance(id)
              VolumeAttachment.new(url(id), @token, @logger)
            end
          end

          # A single attached volume.
          class VolumeAttachment < BaseVPC
            def details
              get
            end

            def update(payload)
              patch(payload)
            end

            def remove
              delete
            end
          end
        end
      end
    end
  end
end
