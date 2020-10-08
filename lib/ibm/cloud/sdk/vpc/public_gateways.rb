# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of PublicGateway
        class PublicGateways < VPCCollection
          def initialize(parent)
            super(parent, 'public_gateways', child_class: PublicGateway)
          end
        end

        # A single PublicGateway
        class PublicGateway < VPCInstance
        end
      end
    end
  end
end
