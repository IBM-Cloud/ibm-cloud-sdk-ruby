=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-09-08

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'spec_helper'

describe IbmCloudVpc::Configuration do
  let(:config) { IbmCloudVpc::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("https://us-south.iaas.cloud.ibm.com/v1")
    # IbmCloudVpc.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://us-south.iaas.cloud.ibm.com/v1")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://us-south.iaas.cloud.ibm.com/v1")
      end
    end
  end
end