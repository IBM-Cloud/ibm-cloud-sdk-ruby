# typed: true
# frozen_string_literal: true

require_relative 'instance/actions'
require_relative 'instance/network_interfaces'
require_relative 'instance/volume_attachments'

module IBM
  module Cloud
    module SDK
      # Work with VPC instances.
      module VPC
        # Work with multiple VM instances.
        class Instances < BaseCollection
          def initialize(parent)
            super(parent, 'instances', child_class: Instance)
          end

          # A chainable method to set query filters on the collection.
          # @example vpc.images.params(limit: 1).all
          #
          # @param start [String] A server-supplied token determining what resource to start the page on.
          # @param limit [Integer] The number of resources to return on a page  allowed values are between 1 and 100
          # @param name [String] Filters the collection to resources with the exact specified name
          # @param vpc_id [String] Filters the collection to resources in the VPC with the specified identifier
          # @param vpc_crn [String] Filters the collection to resources in the VPC with the specified CRN
          # @param vpc_name [String] Filters the collection to resources in the VPC with the exact specified name
          # @return [BaseCollection] This class with the param instance variable set.
          def params(start: nil, limit: nil, name: nil, vpc_id: nil, vpc_crn: nil, vpc_name: nil)
            super(start: start, limit: limit)
            @params['name'] = name if name
            @params['vpc.id'] = vpc_id if vpc_id
            @params['vpc.crn'] = vpc_crn if vpc_crn
            @params['vpc.name'] = vpc_name if vpc_name
            self
          end
        end

        # Work with a single instance.
        class Instance < BaseInstance
          def actions
            INSTANCE::Actions.new(self)
          end

          def network_interfaces
            INSTANCE::NetworkInterfaces.new(self)
          end

          def volume_attachments
            INSTANCE::VolumeAttachments.new(self)
          end

          def initialization
            adhoc(method: 'get', path: 'initialization').json
          end
        end
      end
    end
  end
end
