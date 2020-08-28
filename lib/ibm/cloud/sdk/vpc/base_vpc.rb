# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      # Container that encapsulates the VPC API.
      class BaseVPC
        def initialize(endpoint, token, logger)
          @endpoint = endpoint
          @token = token
          @logger = logger.get_logger(self.class) unless logger.nil?
        end

        def get(path, params = nil)
          begin
            response = RestClient.get(url(path), metadata(params))
          rescue RestClient::ExceptionWithResponse => e
            @logger.error("Exception for #{e.response.request.url} #{e.response.description}")
            return e.response
          end
          JSON.parse(response)
        end

        def post(path, payload, params = nil)
          response = RestClient.post(url(path), payload, metadata(params))
          JSON.parse(response)
        end

        def put(path, payload, params = nil)
          response = RestClient.put(url(path), payload, metadata(params))
          JSON.parse(response)
        end

        def patch(path, payload, params = nil)
          response = RestClient.patch(url(path), payload, metadata(params))
          JSON.parse(response)
        end

        def delete(path, params = nil)
          response = RestClient.delete(url(path), metadata(params))
          JSON.parse(response)
        end

        attr_reader :endpoint

        def url(path)
          return endpoint if path.nil?

          "#{endpoint}/#{path}"
        end

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
