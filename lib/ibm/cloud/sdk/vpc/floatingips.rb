# typed: false
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # Class that deals with groups of floating IPs.
        class FloatingIPs < BaseVPC
          def initialize(parent)
            super(parent, 'floating_ips')
          end

          # Get all Floating IPs
          #
          # @return [Array<Hash>] all PVM Instances for this instance
          def list
            get
          end

          def create(payload)
            post(payload)
          end

          def instance(id)
            FloatingIP.new(self, id)
          end
        end

        # Class that deals with a single floating IP.
        class FloatingIP < BaseVPC
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
