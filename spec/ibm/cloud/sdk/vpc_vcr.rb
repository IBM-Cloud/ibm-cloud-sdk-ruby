# frozen_string_literal: true

require 'ibm-cloud-sdk'
require 'vcr'
require 'webmock/rspec'

ENV['IBM_CLOUD_APIKEY'] = 'API_KEY' unless ENV['IBM_CLOUD_APIKEY']

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
  c.allow_http_connections_when_no_cassette = false
  c.configure_rspec_metadata!
  c.before_record do |interaction|
    # Don't save results if results are not in 200-series.
    interaction.ignore! if interaction.response.status.code > 200 || interaction.response.status.code >= 300
    interaction.request.headers['Authorization'] = 'Bearer xxxxxx' if interaction.request.headers.key?('Authorization')

    # Clean up token save.
    if interaction.request.uri.end_with?('identity/token')
      begin
        replace_token_contents(interaction.response)
      rescue => e # rubocop:disable Style/RescueStandardError # Don't know what errors are here so catch them all.
        # If there is an exception during fetching we don't want to save the results.
        puts("Exception raised during fetching of token #{e}")
        interaction.ignore!
      end
    end

    # Replace IP V4 Addresses
    interaction.response.body.gsub!(/([0-9]{1,3}\.){3}/, '127.0.0.')

    # Clean up keys of any data.
    if interaction.request.uri.match?('v1/keys')
      begin
        replace_ssh_keys(interaction.response)
      rescue => e # rubocop:disable Style/RescueStandardError # Don't know what errors are here so catch them all.
        # If there is an exception during fetching we don't want to save the results.
        puts("Exception raised during fetching of ssh keys #{e}")
        interaction.ignore!
      end
    end
  end
end
