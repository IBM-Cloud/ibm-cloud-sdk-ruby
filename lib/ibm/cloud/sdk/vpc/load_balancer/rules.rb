# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        module LOADBALANCER
          # A list of Rule
          class Rules < BaseCollection
            def initialize(parent)
              @array_key = 'rules'
              @instance = Rule
              super(parent, @array_key)
            end
          end

          # A single Rule
          class Rule < BaseInstance
          end
        end
      end
    end
  end
end
