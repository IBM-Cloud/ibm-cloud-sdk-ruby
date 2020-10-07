# typed: true
# frozen_string_literal: true

module IBM
  module Cloud
    module SDKHTTP
      # Access a specific instance by either id or name depending on API.
      module ChildMixin
        # Get an instance of the collection object.
        # @param id [String] ID of Name to search on depending on API.
        # @return [] The instance object.
        def instance(id)
          @instance.new(self, endpoint: id).refresh
        end

        # Return the first_instance returned from a collection get.
        def first_instance
          params(limit: 1).all.first
        end
      end
    end
  end
end
