# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        module INSTANCES
          # Get a Floating IP.
          class FloatingIps < BaseCollection
            def initialize(parent)
              super(parent, 'floating_ips', child_class: FloatingIp)
            end
          end

          # Get a single floating IP.
          class FloatingIp < BaseInstance
          end
        end
      end
    end
  end
end
