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
  class BucketLogsPermission
    FULL_CONTROL = "FULL_CONTROL".freeze
    READ = "READ".freeze
    WRITE = "WRITE".freeze

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
      constantValues = BucketLogsPermission.constants.select { |c| BucketLogsPermission::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #BucketLogsPermission" if constantValues.empty?
      value
    end
  end
end
