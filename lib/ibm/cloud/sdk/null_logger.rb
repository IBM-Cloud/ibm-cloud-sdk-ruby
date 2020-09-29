require "logger"

module IBM
  module Cloud
    module SDK
      class NullLogger < Logger
        def initialize(*_args)
        end 

        def add(*_args, &_block)
        end 

        def debug?
          false
        end
      end
    end
  end
end
