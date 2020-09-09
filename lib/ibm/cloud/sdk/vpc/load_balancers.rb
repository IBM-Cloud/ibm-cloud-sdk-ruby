# typed: true
# frozen_string_literal: true

require_relative 'load_balancer'

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of LoadBalancer
        class LoadBalancers < BaseCollection
          def initialize(parent)
            @array_key = 'Rest'
            @instance = LoadBalancer
            super(parent, @array_key)
          end
        end
      end
    end
  end
end
