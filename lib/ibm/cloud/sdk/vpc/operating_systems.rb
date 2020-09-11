# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of OperatingSystem
        class OperatingSystems < BaseCollection
          def initialize(parent)
            super(parent, 'operating_systems', child_class: OperatingSystem)
          end
        end

        # A single OperatingSystem
        class OperatingSystem < BaseInstance
        end
      end
    end
  end
end
