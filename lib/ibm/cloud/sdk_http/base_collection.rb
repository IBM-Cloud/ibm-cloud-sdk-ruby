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
        def self.included(base)
          base.send :include, BaseHTTPMixin
        end
        include BaseHTTPMixin

        def initialize(parent, endpoint, array_key: nil, child_class: nil, child_id: 'id')
          # Setup empty base instance variables.
          @params = nil
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

        # A chainable method to set query filters on the collection.
        # @example vpc.images.params(limit: 1).all
        #
        # @param start [String] A server-supplied token determining what resource to start the page on.
        # @param limit [Integer] The number of resources to return on a page  allowed values are between 1 and 100
        # @param resource_group [String] Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers
        # @return [BaseCollection] This class with the param instance variable set.
        def params(start: nil, limit: nil, resource_group: nil)
          @params = {}
          @params[:start] = start if start
          @params[:limit] = limit if limit
          @params[:resource_group] = resource_group if resource_group
          self
        end

        # Retrieve the collection from the cloud.
        # @return [IBM::Cloud::SDK::VPC::Response] The http response object.
        def fetch
          @data ||= get(params: @params)
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

        # Get without any additional logic.
        # @param url [String] Full URL to send to server.
        def adhoc_get(url)
          @connection.request('get', url, metadata(@params)).raise_for_status!.json
        end

        # Create a generator that removes the need for pagination.
        # @param url [String] Full URL to send to server.
        # @return [Enumerator] Object to page through results.
        # @yield [BaseInstance] An instance of the instance class.
        # @yield [Hash] When no BaseInstance set.
        def each_resource(url, &block)
          return enum_for(:each_resource, url) unless block_given?
          return unless url

          response = adhoc_get(url)
          resources = response.fetch(@array_key.to_sym)

          resources&.each { |value| yield hash_instance(value) }
          return unless response.key?(:next)

          next_url = response.dig(:next, :href)
          return unless next_url

          each_resource(next_url, &block)
        end
      end
    end
  end
end
