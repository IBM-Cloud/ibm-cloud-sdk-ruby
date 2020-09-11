# typed: false
# frozen_string_literal: true

# The base object.
class Object
  # Filter out the standard methods and only show the interesting methods.
  # @return [Array<String>]
  def im
    methods = public_methods.sort
    case self.class
    when Class
      methods - Object.public_methods
    when Module
      methods - Module.public_methods
    else
      methods - Object.new.public_methods
    end
  end
end
