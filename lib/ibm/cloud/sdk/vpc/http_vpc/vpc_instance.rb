# frozen_string_literal: true

require_relative 'vpc_http'

module IBM
  module Cloud
    module SDK
      # Module holds basic HTTP functionality.
      module VPC
        # Container that encapsulates the VPC API.
        class BaseInstance < SDKHTTP::BaseInstance
          include VpcHTTP
        end
      end
    end
  end
end
