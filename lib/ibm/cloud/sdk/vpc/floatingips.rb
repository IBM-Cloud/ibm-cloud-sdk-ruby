# typed: false
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # Class that deals with groups of floating IPs.
        class FloatingIPs < VPCCollection
          def initialize(parent)
            super(parent, 'floating_ips', child_class: FloatingIP)
          end
        end

        # Class that deals with a single floating IP.
        class FloatingIP < VPCInstance; end
      end
    end
  end
end
