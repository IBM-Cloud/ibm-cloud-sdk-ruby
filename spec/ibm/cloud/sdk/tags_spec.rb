# frozen_string_literal: true

require 'ibm-cloud-sdk'
require_relative 'vpc_vcr'

RSpec.describe IBM::Cloud::SDK::Tags, vcr: { tag: :require_2xx } do
  let(:tags) { VCR.use_cassette('IBM_CLoud_SDK_Tags/tags', { tags: %i[require_2xx token_request] }) { IBM::CloudSDK.new(ENV['IBM_CLOUD_APIKEY']).tags } }

  it 'has http methods' do
    %i[get post put delete adhoc unchecked_response url].each do |meth|
      expect(tags).to respond_to(meth)
    end
  end

  it 'can get fetch' do
    hsh = tags.fetch.json.to_h
    %i[total_count offset limit items].each do |k|
      expect(hsh.key?(k)).to be true
    end
  end

  it 'can get all' do
    t = tags
    expect(t.all.to_a.length).to eq(t.total_count)
  end

  it 'can set parameters' do
    t = tags
    prm = {
      account_id: 'aadddccd',
      tag_type: 'user',
      full_data: true,
      providers: 'ghost',
      attached_to: 'attached_to',
      offset: 1,
      limit: 1,
      timeout: 'dddd',
      order_by_name: 'desc',
      attached_only: true
    }
    t.reset_params
    expect(t.instance_variable_get(:@params).length).to eq(0)

    prm.each_pair do |key, value|
      expect(t.instance_variable_get(:@params).key?(key)).to be false
      t.send(:params, **{ key => value })
      expect(t.instance_variable_get(:@params).key?(key)).to be true
    end
    t.reset_params
    expect(t.instance_variable_get(:@params).length).to eq(0)
  end

  it 'instance_of returns empty list when param empty.' do
    expect(tags.attached_to(nil)).to be_an_instance_of(Array)
    expect(tags.attached_to(nil).empty?).to be true
    expect(tags.attached_to('')).to be_an_instance_of(Array)
    expect(tags.attached_to('').empty?).to be true
  end
end
