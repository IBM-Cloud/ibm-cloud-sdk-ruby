# frozen_string_literal: true

require 'json'

module IBM
  module Cloud
    # Module holds basic HTTP functionality.
    module SDKHTTP
      # Encapsulate the HTTP response.
      # @param response [HTTP::Response] The HTTP response object.
      class SDKResponse
        def initialize(response)
          @response = response
        end

        # The raw HTTP response.
        # @return [HTTP::Response]
        attr_reader :response

        # Return the response in a hash or array.
        # @return [Hash] When response is a hash.
        # @return [Array] When response is an array.
        # @raise [Exceptions::ExceptionWithResponse] Contents of body is not properly formatted json.
        def json
          JSON.parse(body, symbolize_names: true)
        rescue StandardError
          raise Exceptions::ExceptionWithResponse.new("#{url} Error while parsing response body. #{response.body}", self)
        end

        # Return the raw response string.
        # @return [String]
        # @return [nil] Response does not have body method.
        def body
          response&.body.to_s
        end

        # Return the response code.
        # @return [Integer] Response has code method.
        # @return [nil] Response does not have code method.
        def code
          response&.code
        end

        alias status code

        # Return the raw connection object.
        # @return [HTTP::Connection]
        # @return [nil] Response does not have a connection method.
        def connection
          response&.request
        end

        # Chainable method to verify the status code. Raise an exception for non 200-series or 404 status codes.
        # @return [Response] Allows for method to be chainable.
        # @raise [Exceptions::HttpStatusError] Raise if status checks failed.
        def raise_for_status!
          return self if (200..299).include?(code)
          return self if code == 404

          raise Exceptions::HttpStatusError.new(self)
        end

        # Return the content type of the response.
        # @return [String] The mimetype of the response.
        # @return [nil] Response does not have response method that responds to mime_type.
        def content_type
          response&.response&.content_type
        end

        # Return the textual reason.
        # @return [String] HTTP Reason
        # @return [nil] Response does not have reaspn method that responds.
        def reason
          response&.response&.msg
        end

        # Return the sent url as a string.
        # @return [String] Full URL sent
        # @return [nil] Response does not have response method that responds to mime_type.
        def url
          uri.to_s
        end

        # Return the sent url as a URI class.
        # @see https://github.com/httprb/http/blob/master/lib/http/uri.rb URI Class doc.
        # @return [HTTP::URI]
        # @return [nil] Response does not have response method that responds to mime_type.
        def uri
          connection&.uri
        end

        # Verify that the json response is a hash.
        # @return [Hash] Response from JSON
        # @raise [RuntimeError] JSON object is not a Hash.
        def hash_response
          check_object(Hash)
        end

        # Verify that the json response is an array.
        # @return [Array] Response from JSON
        # @raise [RuntimeError] JSON object is not a Array.
        def array_response
          check_object(Array)
        end

        # Find a subkey within the returned response.
        # @param key [String] Name of a first level key.
        # @return [Any] Response from JSON
        # @raise [RuntimeError] JSON object is not a Array.
        def subkey(key)
          ret = hash_response
          sym_key = key.to_sym
          return ret.fetch(sym_key) if ret.key?(sym_key)

          msg = "Key #{key} not found in #{ret}."
          raise Exceptions::ExceptionWithResponse.new(msg, self)
        end

        # Check to see if the returned object is the expected object.
        # @param obj [Object] The object to test the response against.
        # @raise [Exceptions::ExceptionWithResponse] Parsed JSON is not the expecte class.
        def check_object(obj)
          ret = json
          return ret if ret.instance_of?(obj)

          msg = "Expected #{obj} in response for #{url}. The returned object is a #{ret.class}."
          raise Exceptions::ExceptionWithResponse.new(msg, self)
        end
      end
    end
  end
end
