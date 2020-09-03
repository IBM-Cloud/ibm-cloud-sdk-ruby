# typed: true
# frozen_string_literal: true

require_relative('floating_ips')

module IBM
  module Cloud
    module SDK
      module VPC
        module INSTANCES
          # All netowrk interfaces.
          class NetworkInterfaces < BaseVPC
            def all
              get.subkey('network_interfaces')
              # get
            end

            def update(payload)
              post(payload)
            end

            def instance(id)
              NetworkInterface.new(url(id), @token, @logger)
            end
          end

          # A single network insterface.
          class NetworkInterface < BaseVPC
            def remove
              delete
            end

            def details
              get
            end

            def update(payload)
              patch(payload)
            end

            def floating_ips
              FloatingIps.new(url('floating_ips'), @token, @logger)
            end
          end
        end
      end
    end
  end
end
