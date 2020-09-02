# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        module INSTANCES
          # Actions for an instance.
          class Actions < BaseVPC
            def all
              get.subkey('actions')
            end

            def update(payload)
              post(payload)
            end
          end
        end
      end
    end
  end
end
