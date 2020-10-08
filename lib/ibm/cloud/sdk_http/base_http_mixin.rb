# frozen_string_literal: true

require_relative 'sdk_response'

module IBM
  module Cloud
    # Module holds basic HTTP functionality.
    module SDKHTTP
      # Generic methods for accessing VPC.
      module BaseHTTPMixin
        @connection = nil

        def adhoc(method: 'get', path: nil, params: {}, payload: {})
          unchecked_response(method: method, path: path, params: params, payload: payload).raise_for_status!
        end

        def unchecked_response(method: 'get', path: nil, params: {}, payload: {})
          @connection.request(method.to_sym, url(path), metadata(params, payload))
        end

        def get(path: nil, params: {})
          adhoc(method: 'get', path: path, params: params)
        end

        attr_reader :endpoint

        def post(payload = {}, path: nil, params: {})
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

        def metadata(query = nil, payload = nil)
          @params ||= {}
          query ||= {}
          payload ||= {}
          {
            query: @params.merge(query),
            body: payload,
            headers: { "Authorization": @token.authorization_header }
          }
        end

        def url(path = nil)
          return endpoint unless path
          return path if URI.parse(path).relative? == false

          "#{endpoint}/#{path}"
        end
      end
    end
  end
end
