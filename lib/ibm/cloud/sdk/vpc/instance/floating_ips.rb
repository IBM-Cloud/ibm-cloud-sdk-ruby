# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        module INSTANCES
          # Get a Floating IP.
          class FloatingIps < BaseVPC
            def initialize(parent)
              super(parent, 'floating_ips')
            end

            def all
              get
            end

            def instance(id)
              FloatingIp.new(self, id)
            end
          end

          # Get a single floating IP.
          class FloatingIp < BaseVPC
            def details
              get
            end

            def update(payload)
              put(payload)
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
