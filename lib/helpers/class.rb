# The base object.
class Object
  # Filter out the standard methods and only show the interesting methods.
  # @return [Array<String>]
  def im
    case self.class
    when Class
      public_methods.sort - Object.public_methods
    when Module
      public_methods.sort - Module.public_methods
    else
      public_methods.sort - Object.new.public_methods
    end
  end
end
