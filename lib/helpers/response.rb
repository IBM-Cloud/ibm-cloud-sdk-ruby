# typed: true
# frozen_string_literal: true

require 'json'

module RestClient
  # Update restclient reponse with additional methods.
  class Response

    def array
      r = json
      return r if r.instance_of?(Array)

      raise "Expected array in reponse not #{r.class}."
    end

    def hash
      r = json
      return r if r.instance_of?(Hash)

      raise "Expected hash in reponse not #{r.class}."
    end

    def subkey(key)
      r = hash
      return r[key] if r.instance_of?(Hash) && r.key?(key)

      raise "Key not found in #{r}."
    end

    def json
      begin
        r = JSON.parse(body)
      rescue StandardError
        raise "Error while parsing response body. #{body}"
      end
      r
    end
  end
end
