# frozen_string_literal: true

require 'ibm-cloud-sdk'

methods = {
  floating_ips: IBM::Cloud::SDK::VPC::FloatingIPs,
  flowlog_collectors: IBM::Cloud::SDK::VPC::FlowLogCollectors,
  ike_policies: IBM::Cloud::SDK::VPC::IKEPolicies,
  images: IBM::Cloud::SDK::VPC::Images,
  instances: IBM::Cloud::SDK::VPC::Instances,
  ipsec_policies: IBM::Cloud::SDK::VPC::IPSecPolicies,
  keys: IBM::Cloud::SDK::VPC::Keys,
  load_balancers: IBM::Cloud::SDK::VPC::LoadBalancers,
  network_acls: IBM::Cloud::SDK::VPC::NetworkACLs,
  operating_systems: IBM::Cloud::SDK::VPC::OperatingSystems,
  public_gateways: IBM::Cloud::SDK::VPC::PublicGateways,
  regions: IBM::Cloud::SDK::VPC::Regions,
  security_groups: IBM::Cloud::SDK::VPC::SecurityGroups,
  subnets: IBM::Cloud::SDK::VPC::Subnets,
  volumes: IBM::Cloud::SDK::VPC::Volumes,
  volumes_profiles: IBM::Cloud::SDK::VPC::VolumeProfiles,
  vpcs: IBM::Cloud::SDK::VPC::Vpcs,
  vpn_gateways: IBM::Cloud::SDK::VPC::VPNGateways
}.freeze

RSpec.describe 'Test vpc API' do
  # token = IBM::Cloud::SDK::IAM.new(ENV['IBM_CLOUD_APIKEY']).get_identity_token
  vpc = IBM::CloudSDK.new(ENV['IBM_CLOUD_APIKEY']).vpc
  # vpc = IBM::Cloud::SDK::Vpc.new('us-east', token)

  it 'can be instantiated' do
    expect(vpc).to be_an_instance_of(IBM::Cloud::SDK::Vpc)
  end

  it 'region can be changed' do
    old_endpoint = vpc.endpoint
    expect(vpc.endpoint).to eq(old_endpoint)
    new_region = 'us-south'
    vpc.region = new_region
    expect(vpc.region).to eq(new_region)
    # TODO: Find new_region from within string.
    expect(vpc.endpoint).not_to eq(old_endpoint)
  end

  methods.each do |k, v|
    child = vpc.send(k)

    it "#{k} can be called" do
      expect(child).to be_an_instance_of(v)
    end

    it "#{k} can access fetch" do
      child.fetch
    end

    it "#{k} can get all" do
      expect(child.all).to be_an_instance_of(Array)
    end
  end
end
