# typed: true
# frozen_string_literal: true

require 'ibm/cloud/sdk_http'
require_relative 'tags/http'

module IBM
  module Cloud
    module SDK
      # A collection interface into the Tags API.
      class Tags < TAG::TagCollection
        def initialize(connection, token, logger: nil) # rubocop:disable Lint/MissingSuper
          @token = token
          @connection = connection

          @logger = logger || Logger.new($stdout, level: :warn)
          @array_key = 'items'
        end

        attr_reader :logger, :token, :connection

        def endpoint
          'https://tags.global-search-tagging.cloud.ibm.com/v3/tags'
        end
      end
    end
  end
end
