# typed: strict
# frozen_string_literal: true

require('helpers/response')

module IBM
  module Cloud
    module SDK
      # Container that encapsulates the VPC API.
      class BaseVPC < BaseService
        extend T::Sig

        sig { params(method: String, path: T.nilable(String), params: T.untyped).returns(RestClient::Response) }
        def adhoc(method = 'get', path = nil, params = nil)
          RestClient::Request.execute(method: method.to_sym, url: url(path), headers: metadata(params))
        rescue RestClient::ExceptionWithResponse => e
          @logger.error("Exception for #{e.response.request.url} #{e.response.description}")
          e.response
        end

        sig { returns(String) }
        attr_reader :endpoint

        sig { params(endpoint: String, token: IBM::Cloud::SDK::IAM::Token, logger: Log).void }
        def initialize(endpoint, token, logger)
          @endpoint = T.let(endpoint, String)
          @token = T.let(token, IBM::Cloud::SDK::IAM::Token)
          @logger = T.let(logger.get_logger(self.class), Log) unless logger.nil?
        end

        sig { params(path: T.nilable(String), params: T.nilable(T::Hash[String, String])).returns(RestClient::Response) }
        def get(path = nil, params = nil)
          begin
            response = T.let(RestClient.get(url(path), metadata(params)), RestClient::Response)
          rescue RestClient::ExceptionWithResponse => e
            @logger.error("Exception for #{e.response.request.url} #s{e.response.description}")
            response = T.let(e.response, RestClient::Response)
          end
          response
        end

        sig { params(payload: T::Hash[String, String], path: T.nilable(String), params: T.nilable(T::Hash[String, String])).returns(RestClient::Response) }
        def post(payload, path = nil, params = nil)
          RestClient.post(url(path), payload, metadata(params))
        rescue RestClient::ExceptionWithResponse => e
          @logger.error("Exception for #{e.response.request.url} #{e.response.description}")
          e.response
        end

        sig { params(payload: T::Hash[String, String], path: T.nilable(String), params: T.nilable(T::Hash[String, String])).returns(RestClient::Response) }
        def put(payload, path = nil, params = nil)
          RestClient.put(url(path), payload, metadata(params))
        rescue RestClient::ExceptionWithResponse => e
          @logger.error("Exception for #{e.response.request.url} #{e.response.description}")
          e.response
        end

        sig { params(payload: T::Hash[String, String], path: T.nilable(String), params: T.nilable(T::Hash[String, String])).returns(RestClient::Response) }
        def patch(payload, path = nil, params = nil)
          RestClient.patch(url(path), payload, metadata(params))
        rescue RestClient::ExceptionWithResponse => e
          @logger.error("Exception for #{e.response.request.url} #{e.response.description}")
          e.response
        end

        sig { params(path: T.nilable(String), params: T.nilable(T::Hash[String, String])).returns(RestClient::Response) }
        def delete(path = nil, params = nil)
          response = RestClient.delete(url(path), metadata(params))
          JSON.parse(response)
        end

        private

        sig { params(path: T.nilable(String)).returns(String) }
        def url(path = nil)
          return endpoint if path.nil?

          "#{endpoint}/#{path}"
        end

        sig { returns(T::Hash[String, String]) }
        def headers
          head = {
            'Authorization' => @token.authorization_header
          }
          head
        end

        sig { params(params: T.untyped).returns(T::Hash[Symbol, T.any(String, Integer)]) }
        def metadata(params)
          { params: merge_params(params) }.merge(headers)
        end

        sig { params(params: T.nilable(T::Hash[Symbol, T.untyped])).returns(T::Hash[Symbol, T.untyped]) }
        def merge_params(params)
          params.nil? && params = {}
          version_param.merge(params)
        end

        sig { returns(T::Hash[Symbol, T.any(String, Integer)]) }
        def version_param
          { version: '2020-08-01', generation: 2 }
        end
      end
    end
  end
end
