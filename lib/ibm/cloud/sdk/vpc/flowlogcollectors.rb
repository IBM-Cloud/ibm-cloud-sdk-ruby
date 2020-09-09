# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of subnets
        class FlowLogCollectors < BaseCollection
          def initialize(parent)
            @array_key = 'flow_log_collectors'
            @instance = FlowLogCollectors
            super(parent, @array_key)
          end
        end

        # A single subnet
        class FlowLogCollector < BaseInstance; end
      end
    end
  end
end
