# typed: true
# frozen_string_literal: true

require_relative('policies')

module IBM
  module Cloud
    module SDK
      module VPC
        module LOADBALANCER
          # A list of Listener
          class Listeners < VPCCollection
            def initialize(parent)
              @array_key = 'listeners'
              @instance = Listener
              super(parent, @array_key)
            end
          end

          # A single Listener
          class Listener < VPCInstance
            def policies
              LOADBALANCER::Policies.new(self)
            end
          end
        end
      end
    end
  end
end
