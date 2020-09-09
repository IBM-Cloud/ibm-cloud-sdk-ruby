# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A list of OperatingSystem
        class OperatingSystems < BaseCollection
          def initialize(parent)
            @array_key = 'operating_systems'
            @instance = OperatingSystem
            super(parent, @array_key)
          end
        end

        # A single OperatingSystem
        class OperatingSystem < BaseVPC
          def details
            get
          end
        end
      end
    end
  end
end
