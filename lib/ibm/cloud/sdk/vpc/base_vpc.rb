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

        attr_reader :endpoint

        attr_reader :token

        attr_reader :logger

        def adhoc(method: 'get', path: nil, params: nil, payload: nil, &block)
          RestClient::Request.execute(
            method: method.to_sym, url: url(path), headers: metadata(params), payload: payload, &block
          )
        rescue RestClient::ExceptionWithResponse => e
          response = e.response
          @logger.error("Exception for #{response.request.url} #{response.description}")
          response
        end

        def get(path: nil, params: nil)
          adhoc(method: 'get', path: path, params: params)
        end

        def post(payload, path: nil, params: nil)
          adhoc(method: 'post', path: path, params: params, payload: payload)
        end

        def put(payload, path: nil, params: nil)
          adhoc(method: 'put', path: path, params: params, payload: payload)
        end

        def patch(payload, path: nil, params: nil)
          adhoc(method: 'patch', path: path, params: params, payload: payload)
        end

        def delete(path: nil, params: nil)
          adhoc(method: 'delete', path: path, params: params)
        end

        def url(path = nil)
          return endpoint unless path

          "#{endpoint}/#{path}"
        end

        private

        def metadata(params)
          { params: merge_params(params) }.merge(headers)
        end

        def headers
          { 'Authorization' => token.authorization_header }
        end

        def merge_params(params)
          return version_param unless params

          version_param.merge(params)
        end

        def version_param
          { version: '2020-08-01', generation: 2 }
        end
      end
    end
  end
end
