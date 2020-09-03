# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      # Container that encapsulates the VPC API.
      class BaseInstance < BaseVPC
        extend T::Sig

        def details
          get.hash
        end
      end
    end
  end
end
