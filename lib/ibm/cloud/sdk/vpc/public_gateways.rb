# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of PublicGateway
        class PublicGateways < BaseCollection
          def initialize(parent)
            @array_key = 'public_gateways'
            @instance = PublicGateway
            super(parent, @array_key)
          end
        end

        # A single PublicGateway
        class PublicGateway < BaseInstance
        end
      end
    end
  end
end
