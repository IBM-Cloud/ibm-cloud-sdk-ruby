# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      # Work with VPC instances.
      module VPC
        class Instances < BaseVPC
          # Get a list of instances
          def list
            returned = get(nil)
            return returned unless returned.instance_of?(Hash)

            return returned['instances'] if returned.key?('instances')
          end

          # Get a count of instances.
          def count
            returned = get(nil)
            return returned unless returned.instance_of?(Hash)

            return returned['count'] if returned.key?('count')
          end
        end
      end
    end
  end
end
