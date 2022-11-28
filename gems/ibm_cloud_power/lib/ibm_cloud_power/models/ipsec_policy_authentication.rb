=begin
#Power Cloud API

#IBM Power Cloud API for Power Hardware / Infrastructure

The version of the OpenAPI document: 1.0.0
Contact: kylej@us.ibm.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module IbmCloudPower
  class IPSECPolicyAuthentication
    HMAC_SHA_256_128 = "hmac-sha-256-128".freeze
    HMAC_SHA1_96 = "hmac-sha1-96".freeze
    NONE = "none".freeze

    def self.all_vars
      @all_vars ||= [HMAC_SHA_256_128, HMAC_SHA1_96, NONE].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if IPSECPolicyAuthentication.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #IPSECPolicyAuthentication"
    end
  end
end
