# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # A collection of SSH keys.
        class Keys < BaseCollection
          def initialize(parent)
            super(parent, 'keys', child_class: Key)
          end

          def fetch(resource_id: nil)
            params = {}
            params['resource_group.id'] = resource_id if resource_id
            get(params: params)
          end

          def all(resource_id = nil)
            fetch(resource_id: resource_id).subkey(@array_key)
          end

          # :reek:FeatureEnvy
          def create(name, public_key, resource_group: nil, type: nil)
            payload = { name: name, public_key: public_key }
            payload[:resource_group] = resource_group if resource_group
            payload[:type] = type if type
            post(payload)
          end

          def key(id)
            Key.new(self, id)
          end
        end

        # A single key.
        class Key < BaseInstance
        end
      end
    end
  end
end
