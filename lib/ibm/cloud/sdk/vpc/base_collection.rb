# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      # Container that encapsulates the VPC API.
      class BaseCollection < BaseVPC
        def initialize(parent, endpoint, array_key: nil, child_class: nil)
          # Setup empty base instance variables.
          @data = nil
          @params = nil

          array_key ||= endpoint

          # Set the array key and child class.
          @array_key ||= array_key
          @instance ||= child_class

          super(parent, endpoint)
        end

        # Retrieve the collection from the cloud.
        def fetch
          @data ||= get(params: @params)
          @data
        end

        def all
          response = fetch.subkey(@array_key)
          return response if response.is_a?(Array)

          raise "#{self.class}.#{__method__} Expecting response to be an Array not a #{response.class}"
        end

        def params(start: nil, limit: nil, resource_group: nil)
          @params = {}
          @params['start'] = start if start
          @params['limit'] = limit if limit
          @params['resource_group'] = resource_group if resource_group
          self
        end

        def count
          fetch.subkey('total_count')
        end

        def limit
          fetch.subkey('limit')
        end

        def instance(id)
          @instance.new(self, id)
        end

        def next
          fetch.subkey('next')
        rescue RuntimeError
          nil
        end

        def create(payload)
          post(payload)
        end
      end
    end
  end
end
