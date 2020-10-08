# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        module INSTANCE
          # Get all attached volumes.
          class VolumeAttachments < VPCCollection
            def initialize(parent)
              super(parent, 'volume_attachments', child_class: VolumeAttachment)
            end
          end

          # A single attached volume.
          class VolumeAttachment < VPCInstance
          end
        end
      end
    end
  end
end
