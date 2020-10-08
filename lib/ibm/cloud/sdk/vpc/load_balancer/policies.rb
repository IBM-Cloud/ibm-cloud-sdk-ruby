# typed: true
# frozen_string_literal: true

require_relative('rules')

module IBM
  module Cloud
    module SDK
      module VPC
        module LOADBALANCER
          # A list of Policies
          class Policies < VPCCollection
            def initialize(parent)
              @array_key = 'policies'
              @instance = Policy
              super(parent, @array_key)
            end
          end

          # A single Policy
          class Policy < VPCInstance
            def rules
              Rules.new(self)
            end
          end
        end
      end
    end
  end
end
