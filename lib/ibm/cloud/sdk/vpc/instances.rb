# typed: true
# frozen_string_literal: true

require_relative 'instance/actions'
require_relative 'instance/network_interfaces'
require_relative 'instance/volume_attachments'

module IBM
  module Cloud
    module SDK
      # Work with VPC instances.
      module VPC
        # Work with multiple VM instances.
        class Instances < VPCCollection
          def initialize(parent)
            super(parent, 'instances', child_class: Instance)
          end

          # A chainable method to set query filters on the collection.
          # @example vpc.images.params(limit: 1).all
          #
          # @param start [String] A server-supplied token determining what resource to start the page on.
          # @param limit [Integer] The number of resources to return on a page  allowed values are between 1 and 100
          # @param name [String] Filters the collection to resources with the exact specified name
          # @param vpc_id [String] Filters the collection to resources in the VPC with the specified identifier
          # @param vpc_crn [String] Filters the collection to resources in the VPC with the specified CRN
          # @param vpc_name [String] Filters the collection to resources in the VPC with the exact specified name
          # @return [BaseCollection] This class with the param instance variable set.
          def params(start: nil, limit: nil, name: nil, vpc_id: nil, vpc_crn: nil, vpc_name: nil)
            super(start: start, limit: limit)
            @params['name'] = name if name
            @params['vpc.id'] = vpc_id if vpc_id
            @params['vpc.crn'] = vpc_crn if vpc_crn
            @params['vpc.name'] = vpc_name if vpc_name
            self
          end
        end

        # Work with a single instance.
        class Instance < VPCInstance
          TRANSITIONAL_STATES = %w[pausing pending restarting resuming starting stopping].freeze
          ERROR_STATE = 'failed'
          RUNNING_STATE = 'running'
          STOPPED_STATES = %w[stopped paused].freeze

          # The id of this VM.
          def id
            @data[:id]
          end

          # The name of this VM.
          def name
            @data[:name]
          end

          # The status of the virtual server instance. Possible values: [failed,paused,pausing,pending,restarting,resuming,running,starting,stopped,stopping]
          def status
            @data[:status]
          end

          # Whether the state of the VM is in failed state.
          # @return [Boolean]
          def failed?
            status == ERROR_STATE
          end

          # Whether the state of the VM is in the started state.
          # @return [Boolean]
          def started?
            status == RUNNING_STATE
          end

          # Whether the state of the VM is in a stopped or paused state.
          # @return [Boolean]
          def stopped?
            STOPPED_STATES.include?(status)
          end

          # Whether the state of the VM is in a transitional state.
          # @return [Boolean]
          def transitional?
            TRANSITIONAL_STATES.include?(status)
          end

          # Interact with instance actions.
          # @return [INSTANCE::Actions]
          def actions
            INSTANCE::Actions.new(self)
          end

          # Interact with instance network interfaces.
          # @return [INSTANCE::NetworkInterfaces]
          def network_interfaces
            INSTANCE::NetworkInterfaces.new(self)
          end

          # Interact with instance volume attachements.
          # @return [INSTANCE::VolumeAttachments]
          def volume_attachments
            INSTANCE::VolumeAttachments.new(self)
          end

          # Return the data used for initializing this VM.
          def initialization
            adhoc(method: 'get', path: 'initialization').json
          end

          # Wait for the VM instance to be in a stable state.
          # @param sleep_time [Integer] The time to sleep between refreshes.
          # @param timeout [Integer] The number of seconds before raising an error.
          # @param block [Proc] A block to test against. Must return a boolean.
          # @raise [RuntimeError] Instance goes into failed state.
          # @raise [RuntimeError] Timeout has been reached.
          def wait_for!(sleep_time: 5, timeout: 600, &block)
            @logger.info("Starting wait for instance #{id}. Starts in state #{status}.")
            loop do
              refresh
              raise "VM #{id} is in a failed state." if failed?
              break if block.call(self)

              timeout = sleep_counter(sleep_time, timeout)
              raise "Time out while waiting #{id} to be stable." if timeout <= 0
            end
            @logger.info("Finished wait for instance #{id}. Ends in state #{status}.")
          end

          # Wait for the VM instance to be have a started status.
          # @param sleep_time [Integer] The time to sleep between refreshes.
          # @param timeout [Integer] The number of seconds before raising an error.
          # @raise [RuntimeError] Instance goes into failed state.
          # @raise [RuntimeError] Timeout has been reached.
          def wait_for_started!(sleep_time: 5, timeout: 600)
            wait_for!(sleep_time: sleep_time, timeout: timeout, &:started?)
          end

          # Wait for the VM instance to be have a stopped status.
          # @param sleep_time [Integer] The time to sleep between refreshes.
          # @param timeout [Integer] The number of seconds before raising an error.
          # @raise [RuntimeError] Instance goes into failed state.
          # @raise [RuntimeError] Timeout has been reached.
          def wait_for_stopped!(sleep_time: 5, timeout: 600)
            wait_for!(sleep_time: sleep_time, timeout: timeout, &:stopped?)
          end

          private

          # Sleep for the specificed time and decrement timout by that number.
          # @return [Integer] The current timeout.
          def sleep_counter(sleep_time, timeout)
            sleep sleep_time
            timeout - sleep_time
          end
        end
      end
    end
  end
end
