# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      # Container that encapsulates the VPC API.
      class BaseCollection < BaseVPC
        extend T::Sig

        def all
          @data = get(nil, @params)
          @data.subkey(@array_key)
        end

        def params(start: nil, limit: nil, resource_group: nil)
          @params = {}
          @params['start'] = start unless start.nil?
          @params['limit'] = limit unless limit.nil?
          @params['resource_group'] = resource_group unless resource_group.nil?
          self
        end

        def count
          all if @data.nil?
          @data.subkey('total_count')
        end

        def limit
          all if @data.nil?
          @data.subkey('limit')
        end

        def instance(id)
          @instance.new(self, id)
        end

        def next
          all if @data.nil?
          begin
            @data.subkey('next')
          rescue RuntimeError
            nil
          end
        end
      end
    end
  end
end
