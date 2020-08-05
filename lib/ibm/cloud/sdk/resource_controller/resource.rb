module IBM
  module Cloud
    module SDK
      class ResourceController
        class Resource
          def initialize(instance)
            @instance = instance
          end

          def account_id
            instance["account_id"]
          end

          def crn
            instance["crn"]
          end

          def guid
            instance["guid"]
          end

          def region_id
            instance["region_id"]
          end

          private

          attr_reader :instance
        end
      end
    end
  end
end
