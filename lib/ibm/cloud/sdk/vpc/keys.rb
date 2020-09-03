# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A collection of SSH keys.
        class Keys < BaseVPC
          def initialize(parent)
            super(parent, 'keys')
          end

          def all(resource_id = nil)
            params = {}
            params['resource_group.id'] = resource_id unless resource_id.nil?
            get(nil, params)
          end

          def create(name, public_key, resource_group = nil, type = nil)
            payload = { name: name, public_key: public_key }
            payload[:resource_group] = resource_group unless resource_group.nil?
            payload[:type] = type unless type.nil?
            post(payload)
          end

          def key(id)
            Key.new(self, id)
          end
        end

        # A single key.
        class Key < BaseVPC
          def details
            get
          end

          def remove
            delete
          end

          def update(payload)
            patch(payload)
          end
        end
      end
    end
  end
end
