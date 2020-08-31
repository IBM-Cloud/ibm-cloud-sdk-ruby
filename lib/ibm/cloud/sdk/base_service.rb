module IBM
  module Cloud
    module SDK
      class BaseService
        def self.endpoint
          raise NotImplementedError
        end

        def endpoint
          raise NotImplementedError
        end

        def delete(path)
          JSON.parse(RestClient.delete(url(path), headers))
        end

        def get(path)
          JSON.parse(RestClient.get(url(path), headers))
        end

        def post(path, payload)
          JSON.parse(RestClient.post(url(path), payload, headers))
        end

        private

        def url(path)
          if path.start_with?('https')
            path
          else
            "#{endpoint}/#{path}"
          end
        end

        def headers
          {"Authorization" => token.authorization_header}
        end
      end
    end
  end
end
