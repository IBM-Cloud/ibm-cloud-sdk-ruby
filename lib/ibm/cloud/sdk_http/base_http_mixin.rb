# frozen_string_literal: true

require_relative 'sdk_response'

module IBM
  module Cloud
    # Module holds basic HTTP functionality.
    module SDKHTTP
      # Generic methods for accessing VPC.
      module BaseHTTPMixin
        @connection = nil

        # Run a custom query and verify response is 2xx or 404.
        # @param method [String] The HTTP method to use.
        # @param path [String] The relative path from the current object location.
        # @param params [Hash] A hash of query parameters.
        # @param payload [Hash] A hash to send as the body.
        # @param payload_type [Hash] If json then convert to json string, else send as form data.
        # @return [SDKResponse]
        # @raise [Exceptions::HttpStatusError] Raise if status checks failed.
        def adhoc(method: 'get', path: nil, params: nil, payload: nil, payload_type: 'json')
          unchecked_response(method: method, path: path, params: params, payload: payload, payload_type: payload_type).raise_for_status!
        end

        # Run a custom query do not verify the response.
        # @param method [String] The HTTP method to use.
        # @param path [String] The relative path from the current object location.
        # @param params [Hash] A hash of query parameters.
        # @param payload [Hash] A hash to send as the body.
        # @param payload_type [Hash] If json then convert to json string, else send as form data.
        def unchecked_response(method: 'get', path: nil, params: nil, payload: nil, payload_type: 'json')
          @connection.request(method.to_sym, url(path), metadata(params, payload, payload_type))
        end

        attr_reader :endpoint

        # Perform a GET request and verify response is 2xx or 404.
        # @param path [String] The relative path from the current object location.
        # @param params [Hash] A hash of query parameters.
        # @return [SDKResponse]
        # @raise [Exceptions::HttpStatusError] Raise if status checks failed.
        def get(path: nil, params: nil)
          adhoc(method: 'get', path: path, params: params)
        end

        # Send a POST request and verify response is 2xx or 404.
        # @param path [String] The relative path from the current object location.
        # @param params [Hash] A hash of query parameters.
        # @param payload [Hash] A hash to send as the body.
        # @param payload_type [Hash] If json then convert to json string, else send as form data.
        # @raise [Exceptions::HttpStatusError] Raise if status checks failed.
        # @return [SDKResponse]
        def post(payload: nil, path: nil, params: nil, payload_type: 'json')
          adhoc(method: 'post', path: path, params: params, payload: payload, payload_type: payload_type)
        end

        # Send a PUT request and verify response is 2xx or 404.
        # @param path [String] The relative path from the current object location.
        # @param params [Hash] A hash of query parameters.
        # @param payload [Hash] A hash to send as the body.
        # @param payload_type [Hash] If json then convert to json string, else send as form data.
        # @raise [Exceptions::HttpStatusError] Raise if status checks failed.
        # @return [SDKResponse]
        def put(payload: nil, path: nil, params: nil, payload_type: 'json')
          adhoc(method: 'put', path: path, params: params, payload: payload, payload_type: payload_type)
        end

        # Send a PATCH request and verify response is 2xx or 404.
        # @param path [String] The relative path from the current object location.
        # @param params [Hash] A hash of query parameters.
        # @param payload [Hash] A hash to send as the body.
        # @param payload_type [Hash] If json then convert to json string, else send as form data.
        # @raise [Exceptions::HttpStatusError] Raise if status checks failed.
        # @return [SDKResponse]
        def patch(payload: nil, path: nil, params: nil, payload_type: 'json')
          adhoc(method: 'patch', path: path, params: params, payload: payload, payload_type: payload_type)
        end

        # Send a DELETE request and verify response is 2xx or 404.
        # @param path [String] The relative path from the current object location.
        # @param params [Hash] A hash of query parameters.
        # @raise [Exceptions::HttpStatusError] Raise if status checks failed.
        # @return [SDKResponse]
        def delete(path: nil, params: nil)
          adhoc(method: 'delete', path: path, params: params)
        end

        # Preprocess request parameters with any additional data.
        # @param query [Hash] A hash of query parameters.
        # @param payload [Hash] A hash to send as the body.
        # @param payload_type [Hash] If json then convert to json string, else send as form data.
        # @return [Hash]
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

        # Merge path with current class's endpoint.
        def url(path = nil)
          return endpoint unless path
          return path if URI.parse(path).relative? == false

          "#{endpoint}/#{path}"
        end
      end
    end
  end
end
