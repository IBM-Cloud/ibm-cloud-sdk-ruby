# frozen_string_literal: true

require 'ibm-cloud-sdk'
require 'vcr'
require 'webmock/rspec'

ENV['IBM_CLOUD_APIKEY'] = 'API_KEY' unless ENV['IBM_CLOUD_APIKEY']

# Set the save location of IAM token response.
# @note Uses 'IBM_CLOUD_TOKEN' environment variable to set location.
#
# We do not want to save the access token to git, but it is required for subsequent REST API calls.
# To combat this problem an environment variable can be set to offline. This will retrieve the token and write it to a 'iam_token' file.
# Once the entire test has been recorded we can delete this file can be deleted and the saved token file will be used in its stead.
# @return [String] The token save location for this test run.
def token_cassette
  return 'iam_token' if ENV['IBM_CLOUD_DISABLE_TOKEN'] == 'true'

  'Test_vpc_API/vpc'
end
# Iterate through the SSH keys and replace all values.
# Being very careful with this one as fixing a data leak would be costly.
def replace_ssh_keys(response)
  data = JSON.parse(response.body, symbolize_names: true)
  raise 'The keys key is not found in the json response.' unless data.key?(:keys)

  keys = { fingerprint: 'SHA256:xxxxxxx', public_key: 'RSA: VVVVVV' }
  data.fetch(:keys).each_with_index do |v, i|
    v.merge!(keys)
    v[:name] = "random_key_#{i}"
  end
  response.body = data.to_json.force_encoding('ASCII-8BIT')
end

def replace_token_contents(response)
  data = JSON.parse(response.body, symbolize_names: true)
  data.merge!({ refresh_token: '11111', ims_user_id: '22222', expiration: 1893456000 })
  response.body = data.to_json.force_encoding('ASCII-8BIT')
end

VCR.configure do |c|
  c.cassette_library_dir = 'spec/vcr'
  c.hook_into :webmock
  c.define_cassette_placeholder('API_KEY') { ENV['IBM_CLOUD_APIKEY'] }
  # If IBM_CLOUD_DISABLE_VCR is in your env then all recordings will be ignored.
  c.ignore_request { ENV['IBM_CLOUD_DISABLE_VCR'] }
  c.allow_http_connections_when_no_cassette = false
  c.configure_rspec_metadata!

  # Default Before every recording.
  c.before_record do |interaction|
    # Mask bearer token in recorded file.
    interaction.request.headers['Authorization'] = 'Bearer xxxxxx' if interaction.request.headers.key?('Authorization')
    # Replace IP V4 Addresses
    interaction.response.body.gsub!(/([0-9]{1,3}\.){3}/, '127.0.0.')
  end

  # If a VCR is tagged with require_2xx then it will only save the VCR if it is a valid 200 response.
  c.before_record(:require_2xx) do |interaction|
    # Don't save results if results are not in 200-series.
    interaction.ignore! unless (200..299).include?(interaction.response.status.code)
  end

  c.before_record(:token_request) do |interaction|
    replace_token_contents(interaction.response)
  rescue => e # rubocop:disable Style/RescueStandardError # Don't know what errors are here so catch them all.
    # If there is an exception during fetching we don't want to save the results.
    puts("Exception raised during fetching of token #{e}")
    interaction.ignore!
  end

  # Filter the VPC /vi/keys response.
  c.before_record(:VPC_keys) do |interaction|
    replace_ssh_keys(interaction.response)
  rescue => e # rubocop:disable Style/RescueStandardError # Don't know what errors are here so catch them all.
    # If there is an exception during fetching we don't want to save the results.
    puts("Exception raised during fetching of ssh keys #{e}")
    interaction.ignore!
  end
end
