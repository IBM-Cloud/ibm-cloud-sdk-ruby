# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      # Container that encapsulates the VPC API.
      class BaseInstance < BaseVPC

        def details
          get.hash
        end

        def update(payload)
          patch(payload)
        end

        def remove
          delete
        end
      end
    end
  end
end
