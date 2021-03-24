# -*- encoding: utf-8 -*-

=begin
#COS Compatibility S3 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1
Contact: nicholas.lange@ibm.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

$:.push File.expand_path("../lib", __FILE__)
require "ibm_cloud_object_storage/version"

Gem::Specification.new do |s|
  s.name        = "ibm_cloud_object_storage"
  s.version     = IbmCloudObjectStorage::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["IBM Cloud Developers"]
  s.email       = ["nicholas.lange@ibm.com"]
  s.homepage    = "https://openapi-generator.tech"
  s.summary     = "IBM Cloud Object Storage"
  s.description = "Ruby gem for IBM Cloud Object Storage"
  s.license     = 'Apache-2.0'
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
