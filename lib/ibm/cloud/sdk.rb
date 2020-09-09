# typed: true
# frozen_string_literal: true

require_relative 'sdk/base_service'
require_relative 'sdk/iam'
require_relative 'sdk/power_iaas'
require_relative 'sdk/resource_controller'
require_relative 'sdk/vpc'

module IBM
  module Cloud
    module SDK
      class Error < StandardError; end
    end
  end
end
