# frozen_string_literal: true



module IBM
  module Cloud
    module SDK
      # A class that encapuslates logic for getting REST results.
      class Connection
        def initialize(region, guid, token, crn, tenant)
          @crn    = crn
          @guid   = guid
          @region = region
          @token  = token
          @tenant = tenant
        end
      end

      # Container that encapsulates the VPC API.
      class BaseVPC
        def get(path, params = nil)
          response = RestClient.get(url(path), metadata(params))
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

        def url(path)
          return endpoint if path.nil?

          "#{endpoint}/#{path}"
        end

        def headers
          {
            'Authorization' => token.authorization_header,
            'Content-Type' => 'application/json'
          }
        end

        def metadata(params)
          { params: merge_params(params), headers: headers }
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
