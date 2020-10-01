# frozen_string_literal: true

require_relative 'iam_token'
require_relative 'sdk_response'

module IBM
  module Cloud
    # Module holds basic HTTP functionality.
    module SDKHTTP
      # Generic methods for accessing VPC.
      module BaseHTTPMixin
        def self.included(base)
          base.send :include, HTTParty
        end

        def adhoc(method: 'get', path: nil, params: {}, payload: {})
          response = self.class.send(method.to_sym, url(path), metadata(params, payload))
          generate_response(response)
        end

        def get(path: nil, params: {})
          response = self.class.get(url(path), metadata(params))
          generate_response(response)
        end

        attr_reader :endpoint

        def post(payload = {}, path: nil, params: {})
          adhoc(method: 'post', path: path, params: params, payload: payload)
        end

        def put(payload = {}, path: nil, params: {})
          adhoc(method: 'put', path: path, params: params, payload: payload)
        end

        # def patch(payload = {},  path: nil, params: {})
        #   adhoc(method: 'patch', path: path, params: params, payload: payload)
        # end

        # def delete(path: nil, params: {})
        #   adhoc(method: 'delete', path: path, params: params)
        # end

        def metadata(params, payload)
          params ||= {}
          payload ||= {}
          {
            params: params,
            body: payload,
            headers: { "Authorization": @token.authorization_header }
          }
        end

        def url(path = nil)
          return endpoint unless path

          "#{endpoint}/#{path}"
        end

        private

        def generate_response(response)
          SDKResponse.new(response).raise_for_status?
        end
      end
    end
  end
end
