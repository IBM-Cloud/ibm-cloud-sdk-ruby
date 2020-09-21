# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        module INSTANCES
          # Get all attached volumes.
          class VolumeAttachments < BaseCollection
            def initialize(parent)
              super(parent, 'volume_attachments', child_class: VolumeAttachment)
            end
          end

          # A single attached volume.
          class VolumeAttachment < BaseInstance
          end
        end
      end
    end
  end
end
