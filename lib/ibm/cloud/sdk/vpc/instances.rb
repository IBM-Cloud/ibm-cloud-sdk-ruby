# typed: true
# frozen_string_literal: true

require_relative('instance')

module IBM
  module Cloud
    module SDK
      # Work with VPC instances.
      module VPC
        # Work with multiple VM instances.
        class Instances < BaseVPC
          def initialize(parent)
            super(parent, 'instances')
          end

          # Get a list of instances
          def all
            get.subkey('instances')
          end

          # Get a count of instances.
          def count
            get.subkey('total_count')
          end

          def create(payload)
            post(payload)
          end

          def instance(id)
            INSTANCES::Instance.new(self, id)
          end
        end
      end
    end
  end
end
