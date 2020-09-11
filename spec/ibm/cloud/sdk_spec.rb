# frozen_string_literal: true

require 'ibm-cloud-sdk'

RSpec.describe IBM::Cloud::SDK do
  it 'has a version number' do
    expect(IBM::Cloud::SDK::VERSION).not_to be nil
  end
end
