# -*- encoding: utf-8 -*-

=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-11-17

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

$:.push File.expand_path("../lib", __FILE__)
require "ibm_cloud_vpc/version"

Gem::Specification.new do |s|
  s.name        = "ibm_cloud_vpc"
  s.version     = IbmCloudVpc::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["IBM Cloud Developers"]
  s.email       = [""]
  s.homepage    = "https://openapi-generator.tech"
  s.summary     = "IBM Cloud VPC"
  s.description = "Ruby gem for IBM Cloud VPC"
  s.license     = 'Apache-2.0'
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency "ibm_cloud_sdk_core", "~> 1.1.1"

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
