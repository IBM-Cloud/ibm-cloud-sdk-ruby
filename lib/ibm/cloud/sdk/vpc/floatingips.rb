# frozen_string_literal: true

module IBM
  module Cloud
    module SDK
      module VPC
        # Class that deals with groups of floating IPs.
        class FloatingIPs < BaseVPC
          # Init the base class
          def initialize(endpoint, token, crn, tenant)
            @endpoint = "#{endpoint}/floating_ips"
            @token = token
            @crn = crn
            @tenant = tenant
          end

          attr_reader :endpoint

          # Get all Floating IPs
          #
          # @return [Array<Hash>] all PVM Instances for this instance
          def list
            get(nil)
          end

          def create(payload)
            post(nil, payload)
          end

          def delete(id)
            delete(id)
          end

          def instance(id)
            IBM::Cloud::SDK::VPC::FloatingIP.new(url(id))
          end
        end
      end

      # Class that deals with a single floating IP.
      class FloatingIP < BaseClass
        def initialize(endpoint, guid, token, crn, tenant)
          @endpoint = endpoint
          @guid = guid
          @token = token
          @crn = crn
          @tenant = tenant
        end

        def details
          get(nil)
        end

        def update(payload)
          patch(nil, payload)
        end
      end
    end
  end
end
