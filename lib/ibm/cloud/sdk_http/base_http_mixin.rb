# frozen_string_literal: true

require_relative 'sdk_response'

module IBM
  module Cloud
    # Module holds basic HTTP functionality.
    module SDKHTTP
      # Generic methods for accessing VPC.
      module BaseHTTPMixin
        @connection = nil

        def adhoc(method: 'get', path: nil, params: nil, payload: nil, payload_type: 'json')
          unchecked_response(method: method, path: path, params: params, payload: payload, payload_type: payload_type).raise_for_status!
        end

        def unchecked_response(method: 'get', path: nil, params: nil, payload: nil, payload_type: 'json')
          @connection.request(method.to_sym, url(path), metadata(params, payload, payload_type))
        end

        attr_reader :endpoint

        def get(path: nil, params: nil)
          adhoc(method: 'get', path: path, params: params)
        end

        def post(payload: nil, path: nil, params: nil, payload_type: 'json')
          adhoc(method: 'post', path: path, params: params, payload: payload, payload_type: payload_type)
        end

        def put(payload: nil, path: nil, params: nil, payload_type: 'json')
          adhoc(method: 'put', path: path, params: params, payload: payload, payload_type: payload_type)
        end

        def patch(payload: nil, path: nil, params: nil, payload_type: 'json')
          adhoc(method: 'patch', path: path, params: params, payload: payload, payload_type: payload_type)
        end

        def delete(path: nil, params: nil)
          adhoc(method: 'delete', path: path, params: params)
        end

        def metadata(query = nil, payload = nil, payload_type = 'json')
          @params ||= {}
          @params.merge!(query) if query

          send_parameters = {
            query: @params,
            headers: { "Authorization": @token.authorization_header }
          }

          # Add payload if it is not nil.
          if payload && payload.empty? == false
            payload = payload.to_json if payload_type == 'json'
            send_parameters[:body] = payload
          end
          send_parameters
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
