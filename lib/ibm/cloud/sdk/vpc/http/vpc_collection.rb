# typed: true
# frozen_string_literal: true

require_relative '../http'
require_relative 'vpc_http'

module IBM
  module Cloud
    module SDK
      module VPC
        # Container that encapsulates the VPC API.
        # This class is used as a base for collection APIs.
        # @param parent [Object] The parent instance in the API chain.
        # @param endpoint [string] A path from the parent to the desired endpoint. In most cases is should be 1 word.
        # @param array_key [string] The key that the API response holds the endpoint data. When nil the endpoint will be used.
        # @param child_class [Object] The Object to be used when instanciating the single instance for this class.
        class VPCCollection < SDKHTTP::BaseCollection
          include VpcHTTP

          # A chainable method to set query filters on the collection.
          # @example vpc.images.params(limit: 1).all
          #
          # @param start [String] A server-supplied token determining what resource to start the page on.
          # @param limit [Integer] The number of resources to return on a page  allowed values are between 1 and 100
          # @param resource_group [String] Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers
          # @return [BaseCollection] This class with the param instance variable set.
          def params(start: nil, limit: nil, resource_group: nil)
            @params[:start] = start if start
            @params[:limit] = limit if limit
            @params[:resource_group] = resource_group if resource_group
            self
          end

          # Determine if the collection has a total_count key in its response.
          # @return [Boolean]
          def has_count?
            fetch.json&.key?(:total_count)
          end

          # Get the total count if it exists in the response. Returns nil otherwise.
          # @return [Integer] The total count reuturned by the server.
          def count
            fetch.json&.[](:total_count)
          end

          private

          # Return a wrapped instance if set.
          # @param value [Hash] The hash returned from server.
          def hash_instance(value)
            return @instance.new(self, data: value, id_key: @instance_id) if @instance

            value
          end

          # Create a generator that removes the need for pagination.
          # @param url [String] Full URL to send to server.
          # @return [Enumerator] Object to page through results.
          # @yield [BaseInstance] An instance of the instance class.
          # @yield [Hash] When no VPCInstance set.
          def each_resource(url, &block)
            return enum_for(:each_resource, url) unless block_given?
            return unless url

            response = get(path: url).json
            resources = response.fetch(@array_key.to_sym)

            resources&.each { |value| yield hash_instance(value) }
            # VPC has a next key that holds the next URL.
            return unless response.key?(:next)

            # The :next data structure is a hash with a href member.
            next_url = response.dig(:next, :href)
            return unless next_url

            each_resource(next_url, &block)
          end
        end
      end
    end
  end
end
