# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        module INSTANCES
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
