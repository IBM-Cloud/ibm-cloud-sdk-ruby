# frozen_string_literal: true

require_relative 'base_http_mixin'

module IBM
  module Cloud
    # Module holds basic HTTP functionality.
    module SDKHTTP
      # Container that encapsulates the VPC API.
      class BaseInstance < Hash
        include BaseHTTPMixin

        def initialize(parent, data: {}, id_key: 'id', endpoint: nil)
          # Call super to init the underlying class.
          super()

          endpoint ||= data[id_key.to_sym]
          @connection = parent.connection
          @token = parent.token
          @endpoint = parent.url(endpoint)
          @logger = parent.logger
          merge!(data)
        end

        attr_reader :logger, :endpoint, :token, :connection

        def details
          get.hash_response
        end

        def refresh
          clear
          merge!(details)
          self
        end

        def update(payload)
          patch(payload)
        end

        def remove
          delete
        end
      end
    end
  end
end
