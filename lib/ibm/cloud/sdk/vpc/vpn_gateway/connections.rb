# typed: true
# frozen_string_literal: true

require_relative('local_cidrs')
require_relative('peer_cidrs')

module IBM
  module Cloud
    module SDK
      module VPC
        module VPNGATEWAY
          # A list of Connection
          class Connections < VPCCollection
            def initialize(parent)
              @array_key = 'connections'
              @instance = Connection
              super(parent, @array_key)
            end
          end

          # A single Connection
          class Connection < VPCInstance
            def local_cidrs
              LocalCIDRs.new(self)
            end

            def peer_cidrs
              PeerCIDRs.new(self)
            end
          end
        end
      end
    end
  end
end
