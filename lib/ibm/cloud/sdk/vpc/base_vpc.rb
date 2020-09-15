# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      # Container that encapsulates the VPC API.
      class BaseVPC
        def initialize(parent, endpoint = nil)
          @endpoint = parent.url(endpoint)
          @token = parent.token
          @logger = parent.logger
        end

        attr_reader :endpoint, :token, :logger

        def adhoc(method: 'get', path: nil, params: {}, payload_type: 'json', payload: {})
          @token.adhoc(method.to_sym, url(path), metadata(params, payload_type, payload))
        end

        def get(path: nil, params: {})
          adhoc(method: 'get', path: path, params: params)
        end

        def post(payload = {}, path: nil, params: {}, type: 'json')
          adhoc(method: 'post', path: path, params: params, payload: payload)
        end

        def put(payload = {}, path: nil, params: {})
          adhoc(method: 'put', path: path, params: params, payload: payload)
        end

        def patch(payload = {},  path: nil, params: {})
          adhoc(method: 'patch', path: path, params: params, payload: payload)
        end

        def delete(path: nil, params: {})
          adhoc(method: 'delete', path: path, params: params)
        end

        def url(path = nil)
          return endpoint unless path

          "#{endpoint}/#{path}"
        end

        private

        def metadata(params = {}, payload_type = 'json', payload = {})
          params ||= {}
          pt = {
            params: { version: '2020-08-01', generation: 2 }.merge(params)

          }
          pt[payload_type.to_sym] = payload unless payload.empty?
          pt
        end
      end
    end
  end
end
