# frozen_string_literal: true

require 'ibm-cloud-sdk'
require_relative '../vpc_vcr'

methods = {
  actions: {
    class: IBM::Cloud::SDK::VPC::INSTANCE::Actions,
    instance_class: IBM::Cloud::SDK::VPC::INSTANCE::Actions,
    has_instance: false,
    has_count: false
  },
  network_interfaces: {
    class: IBM::Cloud::SDK::VPC::INSTANCE::NetworkInterfaces,
    instance_class: IBM::Cloud::SDK::VPC::INSTANCE::NetworkInterface,
    has_instance: true,
    has_count: false,
    child_classes: {
      floating_ips: {
        class: IBM::Cloud::SDK::VPC::INSTANCE::FloatingIps,
        instance_class: IBM::Cloud::SDK::VPC::INSTANCE::FloatingIp,
        has_instance: true,
        has_count: false,
      }
    }
  },
  volume_attachments: {
    class: IBM::Cloud::SDK::VPC::INSTANCE::VolumeAttachments,
    instance_class: IBM::Cloud::SDK::VPC::INSTANCE::VolumeAttachment,
    has_instance: true,
    has_count: false
  }
}.freeze


RSpec.shared_examples 'children tests' do |k, v|
  it 'can be called' do
    expect(child).to be_an_instance_of(v[:class])
  end

  it 'can access fetch' do
    res = child.fetch
    expect(res.status).to eq(200)
  end

  if v[:has_instance]
    it 'can call an instance' do
      child_instance = child.first_instance
      skip 'Child instance ' unless child_instance
      expect(child_instance).to be_an_instance_of(v[:instance_class])
    end
  else
    it 'does not have details' do
      expect(child).not_to respond_to(:instance)
    end
  end

  it 'can get all' do
    expect{child.all.to_a}.not_to raise_error
  end

  if v[:has_count]
    it 'collection has count, returns a number' do
      expect(child.count).to be_an_instance_of(Integer)
    end
  else
    it 'collection has no count, returns nil' do
      expect(child.count).to be_an_instance_of(NilClass)
    end
  end
end

RSpec.describe 'Test vpc_instance API', vcr: { tag: :require_2xx } do # rubocop:disable Metrics/BlockLength
  let(:log) { Logger.new($stdout).tap { |l| l.level = Logger::DEBUG } }
  let(:vpc) { VCR.use_cassette(token_cassette, { tags: %i[require_2xx token_request] }) { IBM::CloudSDK.new(ENV['IBM_CLOUD_APIKEY']).vpc } }

  it 'can be instantiated' do
    expect(vpc.instances.params(limit: 1).all.first).to be_an_instance_of(IBM::Cloud::SDK::VPC::Instance)
  end

  methods.each do |k, v|
    describe "Test subclass #{k}", :vcr do
      let(:child) { vpc.instances.params(limit: 1).all.first.send(k) }
      include_examples 'children tests', k, v
    end
  end

  methods[:network_interfaces][:child_classes].each do |k, v|
    describe "Test network_interfaces subclass #{k}", :vcr do
      let(:child) { vpc.instances.params(limit: 1).all.first.network_interfaces.params(limit: 1).all.first.send(k) }
      include_examples 'children tests', k, v
    end
  end
end
