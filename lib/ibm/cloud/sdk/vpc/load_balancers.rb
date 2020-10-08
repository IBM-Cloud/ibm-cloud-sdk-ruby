# typed: true
# frozen_string_literal: true

require_relative 'load_balancer'

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of LoadBalancer
        class LoadBalancers < VPCCollection
          def initialize(parent)
            super(parent, 'load_balancers', child_class: LoadBalancer)
          end
        end
      end
    end
  end
end
