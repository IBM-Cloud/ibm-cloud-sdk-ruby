module IBM
  module Cloud
    module SDK
      class ResourceController < BaseService
        def endpoint
          "https://resource-controller.cloud.ibm.com/v2"
        end

        def initialize(token)
          @token = token
        end

        def get_resources
          resources = get("resource_instances")["resources"] || []

          require "ibm/cloud/sdk/resource_controller/resource"
          resources.map { |instance| Resource.new(instance) }
        end

        def get_resource(guid)
          get_resources.detect { |resource| resource.guid == guid }
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
