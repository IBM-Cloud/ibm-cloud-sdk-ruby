require_relative 'logging'

module IBM
  module Cloud
    module SDK
      class ResourceController < BaseService
        include Logging
        require "ibm/cloud/sdk/resource_controller/resource"
        def endpoint
          "https://resource-controller.cloud.ibm.com/v2"
        end

        def initialize(token)
          @token = token
          RestClient.log = logger
        end

        def get_resource(guid)
          Resource.new(get("resource_instances/#{guid}"))
        end

        private

        attr_reader :token

        def headers
          {
            "Authorization" => token.authorization_header
          }
        end
      end
    end
  end
end
