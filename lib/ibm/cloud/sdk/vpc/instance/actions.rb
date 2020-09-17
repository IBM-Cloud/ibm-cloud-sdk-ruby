# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        module INSTANCES
          # Actions for an instance.
          class Actions < BaseCollection
            def initialize(parent)
              super(parent, 'actions')
            end
          end
        end
      end
    end
  end
end
