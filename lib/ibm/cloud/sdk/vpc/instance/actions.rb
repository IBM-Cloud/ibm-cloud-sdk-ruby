# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        module INSTANCE
          # Actions for an instance.
          class Actions < VPCCollection
            def initialize(parent)
              super(parent, 'actions')
            end
          end
        end
      end
    end
  end
end
