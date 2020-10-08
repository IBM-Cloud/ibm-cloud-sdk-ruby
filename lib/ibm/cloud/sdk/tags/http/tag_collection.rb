# typed: true
# frozen_string_literal: true

require_relative '../http'

module IBM
  module Cloud
    module SDK
      module TAG
        # The Base Collection for the Tags API.
        class TagCollection < SDKHTTP::BaseCollection
          # rubocop:disable Metrics/AbcSize, Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity, Layout/LineLength

          # Set params on the next request.
          # @param account_id [String>] The ID of the billing account to list the tags for. If it is not set, then it is taken from the authorization token. This parameter is required if tag_type is set to service.
          # @param tag_type [String] The type of the tag you want to list. Supported values are user and service.
          # @param full_data [Boolean] If set to true, this query returns the provider, ghost, ims or ghost,ims, where the tag exists and the number of attached resources.
          # @param providers [String] Select a provider. Supported values are ghost and ims.
          # @param attached_to [String] If you want to return only the list of tags attached to a specified resource, pass the ID of the resource on this parameter. For GhoST onboarded resources, the resource ID is the CRN; for IMS resources, it is the IMS ID. When using this parameter, you must specify the appropriate provider (ims or ghost).
          # @param offset [Integer] The offset is the index of the item from which you want to start returning data from.
          # @param limit [Integer] The number of tags to return (1 <> 1000). Default: 100
          # @param timeout [Integer] The search timeout bounds the search request to be executed within the specified time value. It returns the hits accumulated until time runs out (0 <> 60000).
          # @param order_by_name [String] Order the output by tag name (asc,desc).
          # @param attached_only [Boolean] Filter on attached tags. If true, it returns only tags that are attached to one or more resources.
          def params(
            account_id: nil,
            tag_type: nil,
            full_data: false,
            providers: nil,
            attached_to: nil,
            offset: 0,
            limit: 100,
            timeout: nil,
            order_by_name: 'asc',
            attached_only: false
          )
            @params ||= {}
            @params[:account_id] = account_id if account_id
            @params[:tag_type] = tag_type if tag_type && %w[user service].include?(tag_type)
            @params[:full_data] = full_data if full_data.instance_of?(TrueClass)
            @params[:providers] = providers if providers && %w[ghost ims].include?(providers)
            @params[:attached_to] = attached_to if attached_to
            @params[:offset] = offset if offset.positive?
            @params[:limit] = limit if limit && (1..1000).include?(limit) && limit != 100
            @params[:timeout] = timeout if timeout
            @params[:order_by_name] = order_by_name if order_by_name && %w[desc].include?(order_by_name)
            @params[:attached_only] = attached_only if attached_only.instance_of?(TrueClass)
            self
          end
          # rubocop:enable Metrics/AbcSize, Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity, Layout/LineLength

          def reset_params
            @params = {}
          end

          # Return the total count as retrieved from the API.
          # @return [Integer] value in total_count
          def total_count
            fetch.json.[](:total_count)
          end

          # Get all tags attached to a CRN.
          # @param crn [String] The CRN for the instance.
          def attached_to(crn)
            return [] if crn.to_s.empty?

            params(attached_to: crn).all
          end

          private

          # Create a generator that removes the need for pagination.
          # @param url [String] Full URL to send to server.
          # @return [Enumerator] Object to page through results.
          # @yield [BaseInstance] An instance of the instance class.
          # @yield [Hash] When no BaseInstance set.
          def each_resource(url, offset = 0, &block)
            return enum_for(:each_resource, url) unless block_given?
            return unless url

            response = params(offset: offset).get(path: url).json

            resources = response.fetch(@array_key.to_sym)
            current_count = response.fetch(:offset) + response.fetch(:limit)

            resources&.each { |value| yield value } # rubocop:disable Style/ExplicitBlockArgument

            if resources.empty?
              reset_params
              return
            end

            each_resource(url, current_count, &block)
          end
        end
      end
    end
  end
end
