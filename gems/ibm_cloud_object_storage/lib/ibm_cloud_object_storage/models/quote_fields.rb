=begin
#COS Compatibility S3 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1
Contact: nicholas.lange@ibm.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'date'

module IbmCloudObjectStorage
  class QuoteFields
    ALWAYS = "ALWAYS".freeze
    ASNEEDED = "ASNEEDED".freeze

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
      constantValues = QuoteFields.constants.select { |c| QuoteFields::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #QuoteFields" if constantValues.empty?
      value
    end
  end
end
