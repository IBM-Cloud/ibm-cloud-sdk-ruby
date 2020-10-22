# typed: true
# frozen_string_literal: true

require 'date'
require 'forwardable'

module IBM
  module Cloud
    module SDK
      module VPC
        module INSTANCE
          # Actions for an instance.
          class Actions < VPCCollection
            def initialize(parent)
              super(parent, 'actions')
            end

            # Send an action request to start the instance.
            def start
              send_action('start')
            end

            # Send an action request to stop the instance.
            # @param force [Boolean] Clear the queue and run this action.
            def stop(force: false)
              send_action('stop', force: force)
            end

            # Send an action request to reboot the instance.
            # @param force [Boolean] Clear the queue and run this action.
            def reboot(force: false)
              send_action('reboot', force: force)
            end

            # Send a custom action request.
            # @param action [String] The type of action. Allowable values: [reboot, start, stop]
            # @param force [Boolean] If set to true, the action will be forced immediately, and all queued actions deleted. Ignored for the start action.
            def send_action(action, force: false)
              payload = { type: action }
              payload[:force] = force if force
              response = post(payload: payload)
              Action.new(response)
            end
          end

          # A base class that wraps the action response.
          class Action
            def initialize(response)
              @response = response
              @data = response.json
              @keys = %i[type force created_at]
              add_inst_vars(@keys)
            end

            # Return the DateTime the action was created.
            # @return [DateTime]
            def created_at
              return DateTime.parse(@created_at) if @created_at

              @created_at
            end

            # The HTTP response object.
            attr_accessor :response

            extend Forwardable
            def_delegators :@data, :[], :dig, :each_pair, :fetch, :has_key?, :has_value?, :include?, :index, :inspect, :key?, :keys, :length, :merge, :merge!, :clear, :to_h, :value?, :values, :pretty_print

            private

            # Iterate through an array of symbols. Set the instance variable and attr_accessor for each.
            def add_inst_vars(keys)
              keys.each do |k|
                instance_variable_set "@#{k}", @data[k]
                self.class.attr_accessor k unless respond_to?(k)
              end
            end
          end
        end
      end
    end
  end
end
