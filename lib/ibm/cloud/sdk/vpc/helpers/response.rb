# frozen_string_literal: true

require 'time'
require 'http'

module IBM
  module Cloud
    module SDK
      module VPC
        # Encapsulate the HTTP response.
        class Response
          def initialize(response)
            @response = response
          end

          attr_reader :response

          # Return the response in a hash or array.
          def json
            JSON.parse(body, symbolize_names: true)
          rescue StandardError
            raise "Error while parsing response body. #{response.body}"
          end

          # Return the raw response string.
          def body
            response.body.to_s
          end

          # Return the response code.
          def code
            response.code
          end

          alias_method :status, :code

          # Return the raw connection object.
          def connection
            response.connection
          end

          # Return the content type of the response.
          def content_type
            response.response.mime_type
          end

          # Return the textual reason.
          def reason
            response.reason
          end

          # Return the sent url as a string.
          def url
            response.uri.to_s
          end

          # Return the sent url as a URI class.
          def uri
            response.uri
          end

          # Verify that the json response is a hash.
          def hash_response
            check_object(Hash)
          end

          # Verify that the json response is an array.
          def array_response
            check_object(Array)
          end

          # Find a subkey within the returned response.
          def subkey(key)
            ret = hash_response
            sym_key = key.to_sym
            return ret.fetch(sym_key) if ret.key?(sym_key)

            raise "Key #{key} not found in #{ret}."
          end

          # Check to see if the returned object is the expected object.
          def check_object(obj)
            ret = json
            return ret if ret.instance_of?(obj)

            raise "Expected #{obj} in response for #{url}. The returned object is a #{ret.class}."
          end
        end
      end
    end
  end
end
