# typed: strict
# frozen_string_literal: true

require 'sorbet-runtime'
require 'json'

module RestClient
  # Update restclient reponse with additional methods.
  class Response
    extend T::Sig

    sig { returns(T::Array[T.untyped]) }
    def array
      r = json
      return T.let(r, T::Array[T.untyped]) if r.instance_of?(Array)

      raise "Expected array in reponse not #{r.class}."
    end

    sig { returns(T::Hash[String, T.untyped]) }
    def hash
      r = json
      return r if r.instance_of?(Hash)

      raise "Expected hash in reponse not #{r.class}."
    end

    sig { params(key: String).returns(T.untyped) }
    def subkey(key)
      r = hash
      return r[key] if r.instance_of?(Hash) && r.key?(key)

      raise "Key not found in #{r}."
    end

    sig { returns(T.untyped) }
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
