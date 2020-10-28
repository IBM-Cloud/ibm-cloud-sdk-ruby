# frozen_string_literal: true

require 'forwardable'

require_relative 'base_http_mixin'

module IBM
  module Cloud
    # Module holds basic HTTP functionality.
    module SDKHTTP
      # Container that encapsulates the VPC API.
      class BaseInstance
        include BaseHTTPMixin

        def initialize(parent, data: {}, id_key: 'id', endpoint: nil)
          @data = data

          endpoint ||= data[id_key.to_sym]
          @connection = parent.connection
          @token = parent.token
          @endpoint = parent.url(endpoint)
          @logger = parent.logger
        end

        attr_reader :logger, :endpoint, :token, :connection

        # Fetch the instance details for this resource.
        # @return [SDKResponse] The HTTP response object.
        def details
          get.hash_response
        end

        # Fetch the instance details from the server. Clear current data and save the results.
        # @return [BaseInstance] This instance for chaining.
        def refresh
          @data.replace(details)
          self
        end

        # Send an update to the server for this resource.
        def update(payload)
          patch(payload: payload)
        end

        # Send a delete request to the server for this resource.
        def remove
          delete
        end

        extend Forwardable
        def_delegators :@data, :[], :dig, :each, :each_pair, :fetch, :has_key?, :has_value?, :include?, :index, :inspect, :key?, :keys, :length, :merge, :merge!, :clear, :to_h, :value?, :values, :pretty_print
      end
    end
  end
end
