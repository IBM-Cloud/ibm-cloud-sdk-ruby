# typed: true
# frozen_string_literal: true

require_relative 'base_http_mixin'
require_relative 'has_child'

module IBM
  module Cloud
    module SDKHTTP
      # Container that encapsulates the VPC API.
      # This class is used as a base for collection APIs.
      # @param parent [Object] The parent instance in the API chain.
      # @param endpoint [string] A path from the parent to the desired endpoint. In most cases is should be 1 word.
      # @param array_key [string] The key that the API response holds the endpoint data. When nil the endpoint will be used.
      # @param child_class [Object] The Object to be used when instanciating the single instance for this class.
      class BaseCollection
        include BaseHTTPMixin

        def initialize(parent, endpoint, array_key: nil, child_class: nil, child_id: 'id')
          # Setup empty base instance variables.
          @params = {}
          @token = parent.token
          array_key ||= endpoint

          # Set the array key and child class.
          @array_key ||= array_key

          @instance ||= child_class
          @instance_id ||= child_id

          @connection = parent.connection

          (class << self; include ChildMixin; end) if child_class

          @endpoint = parent.url(endpoint)
          @logger = parent.logger
        end

        attr_reader :logger, :endpoint, :token, :connection

        # In a Child base class add the possible query parameters for the API and return self to make it chainable.
        # When implemented usage would be Collection.params(limit: 2).get
        # @return [BaseCollection] The instanticated class.
        def params(limit: nil)
          raise NotImplementedError('Sample only. The params method needs to be customized in child class.')
          # rubocop:disable Lint/UnreachableCode
          @params[:limit] = limit if limit
          self
          # rubocop:enable Lint/UnreachableCode
        end

        def reset_params
          @params.clear
        end

        # Retrieve the collection from the cloud.
        # @return [IBM::Cloud::SDK::VPC::Response] The http response object.
        def fetch
          @data ||= get
        end

        # Get an iterable for the resource collection.
        # @return [Enumerator] Use standard each, next idioms.
        def all
          each_resource(url)
        end

        # Fetch all data and return in an array.
        # @return [Array] Hashes of the returned data.
        def data
          all.to_a
        end

        # A generic post method to create a resource on the collection.
        # @param payload [Hash] A hash of parameters to send to the server.
        # @param payload_type [String] One of the following options json, form, or body.
        # @return [IBM::Cloud::SDK::VPC::Response] The http response object.
        def create(payload, payload_type = 'json')
          adhoc(method: 'post', payload_type: payload_type, payload: payload)
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
        # @yield [Hash] When no BaseInstance set.
        def each_resource(url, &block)
          raise NotImplementedError('Sample only. The each_resource method needs to be customized in child class.')
          # rubocop:disable Lint/UnreachableCode
          # Sample implementation based on VPC.
          return enum_for(:each_resource, url) unless block_given?
          return unless url

          response = get(path: url)
          resources = response.fetch(@array_key.to_sym)

          resources&.each { |value| yield hash_instance(value) }
          # VPC has a next key that holds the next URL.
          return unless response.key?(:next)

          # The next data structure is a hash with a href member.
          next_url = response.dig(:next, :href)
          return unless next_url

          each_resource(next_url, &block)
          # rubocop:enable Lint/UnreachableCode
        end
      end
    end
  end
end
