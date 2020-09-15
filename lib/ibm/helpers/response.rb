# typed: true
# frozen_string_literal: true

require 'http'

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
      return r.fetch(key.to_sym) if r.instance_of?(Hash) && r.key?(key)

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

module HTTP
  # A HTTP response.
  class Response
    def json
      JSON.parse(body, symbolize_names: true)
    rescue StandardError
      raise "Error while parsing response body. #{body}"
    end

    def hash
      check_object(Hash)
    end

    def array
      check_object(Array)
    end

    def subkey(key)
      ret = hash
      sym_key = key.to_sym
      return ret.fetch(sym_key) if ret.key?(sym_key)

      raise "Key not found in #{ret}."
    end

    def check_object(obj)
      ret = json
      return ret if ret.instance_of?(obj)

      raise "Expected #{obj} in response not #{ret.class}."
    end
  end
end
