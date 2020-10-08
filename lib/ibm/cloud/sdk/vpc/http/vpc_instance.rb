# frozen_string_literal: true

require 'ibm/cloud/sdk/tags'

require_relative 'vpc_http'

module IBM
  module Cloud
    module SDK
      module VPC
        # Container that encapsulates the VPC API.
        class VPCInstance < SDKHTTP::BaseInstance
          include VpcHTTP

          # Get the CRN for the resource.
          # @return [String]
          def crn
            self[:crn]
          end

          # Get the tags associated with this resource.
          # @return [Enumerator] An enumerator with the results.
          def tags
            IBM::Cloud::SDK::Tags.new(@connection, @token, logger: @logger).attached_to(crn)
          end
        end
      end
    end
  end
end
