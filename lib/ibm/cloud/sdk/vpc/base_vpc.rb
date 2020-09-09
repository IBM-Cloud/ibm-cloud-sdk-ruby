# typed: true
# frozen_string_literal: true

require('helpers/response')

module IBM
  module Cloud
    module SDK
      # Container that encapsulates the VPC API.
      class BaseVPC < BaseService
        def initialize(parent, endpoint = nil)
          @endpoint = parent.url(endpoint)
          @token = parent.token
          @logger = parent.logger.get_logger(self.class)
        end

        attr_reader :endpoint

        attr_reader :token

        attr_reader :logger

        def adhoc(method = 'get', path = nil, params = nil)
          RestClient::Request.execute(method: method.to_sym, url: url(path), headers: metadata(params))
        rescue RestClient::ExceptionWithResponse => e
          @logger.error("Exception for #{e.response.request.url} #{e.response.description}")
          e.response
        end

        def get(path = nil, params = nil)
          begin
            response = RestClient.get(url(path), metadata(params))
          rescue RestClient::ExceptionWithResponse => e
            @logger.error("Exception for #{e.response.request.url} #s{e.response.description}")
            response = e.response
          end
          response
        end

        def post(payload, path = nil, params = nil)
          RestClient.post(url(path), payload, metadata(params))
        rescue RestClient::ExceptionWithResponse => e
          @logger.error("Exception for #{e.response.request.url} #{e.response.description}")
          e.response
        end

        def put(payload, path = nil, params = nil)
          RestClient.put(url(path), payload, metadata(params))
        rescue RestClient::ExceptionWithResponse => e
          @logger.error("Exception for #{e.response.request.url} #{e.response.description}")
          e.response
        end

        def patch(payload, path = nil, params = nil)
          RestClient.patch(url(path), payload, metadata(params))
        rescue RestClient::ExceptionWithResponse => e
          @logger.error("Exception for #{e.response.request.url} #{e.response.description}")
          e.response
        end

        def delete(path = nil, params = nil)
          response = RestClient.delete(url(path), metadata(params))
          JSON.parse(response)
        end

        def url(path = nil)
          return endpoint if path.nil?

          "#{endpoint}/#{path}"
        end

        private

        def headers
          head = {
            'Authorization' => @token.authorization_header
          }
          head
        end

        def metadata(params)
          { params: merge_params(params) }.merge(headers)
        end

        def merge_params(params)
          params.nil? && params = {}
          version_param.merge(params)
        end

        def version_param
          { version: '2020-08-01', generation: 2 }
        end
      end
    end
  end
end
