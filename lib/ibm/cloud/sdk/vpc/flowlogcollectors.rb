# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of subnets
        class FlowLogCollectors < BaseCollection
          def initialize(parent)
            super(parent, 'flow_log_collectors', child_class: FlowLogCollectors)
          end
        end

        # A single subnet
        class FlowLogCollector < BaseInstance; end
      end
    end
  end
end
