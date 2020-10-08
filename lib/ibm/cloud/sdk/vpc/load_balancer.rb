# typed: true
# frozen_string_literal: true

require_relative('load_balancer/listeners')

module IBM
  module Cloud
    module SDK
      module VPC
        # A single LoadBalancer
        class LoadBalancer < VPCInstance
          def statistics
            get('statistics')
          end

          def listeners
            LOADBALANCER::Listeners.new(self)
          end
        end
      end
    end
  end
end
