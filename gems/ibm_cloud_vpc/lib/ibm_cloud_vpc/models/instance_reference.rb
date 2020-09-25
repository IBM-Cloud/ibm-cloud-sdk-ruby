=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-09-08

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'date'

module IbmCloudVpc
  class InstanceReference
    # The CRN for this virtual server instance
    attr_accessor :crn

    # The URL for this virtual server instance
    attr_accessor :href

    # The unique identifier for this virtual server instance
    attr_accessor :id

    # The user-defined name for this virtual server instance (and default system hostname)
    attr_accessor :name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'crn' => :'crn',
        :'href' => :'href',
        :'id' => :'id',
        :'name' => :'name'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'crn' => :'String',
        :'href' => :'String',
        :'id' => :'String',
        :'name' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudVpc::InstanceReference` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudVpc::InstanceReference`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'crn')
        self.crn = attributes[:'crn']
      end

      if attributes.key?(:'href')
        self.href = attributes[:'href']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @crn.nil?
        invalid_properties.push('invalid value for "crn", crn cannot be nil.')
      end

      if @href.nil?
        invalid_properties.push('invalid value for "href", href cannot be nil.')
      end

      pattern = Regexp.new(/^http(s)?:\/\/([^\/?#]*)([^?#]*)(\?([^#]*))?(#(.*))?$/)
      if @href !~ pattern
        invalid_properties.push("invalid value for \"href\", must conform to the pattern #{pattern}.")
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @id.to_s.length > 64
        invalid_properties.push('invalid value for "id", the character length must be smaller than or equal to 64.')
      end

      if @id.to_s.length < 1
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^[-0-9a-z_]+$/)
      if @id !~ pattern
        invalid_properties.push("invalid value for \"id\", must conform to the pattern #{pattern}.")
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length > 63
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 63.')
      end

      if @name.to_s.length < 1
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^([a-z]|[a-z][-a-z0-9]*[a-z0-9])$/)
      if @name !~ pattern
        invalid_properties.push("invalid value for \"name\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @crn.nil?
      return false if @href.nil?
      return false if @href !~ Regexp.new(/^http(s)?:\/\/([^\/?#]*)([^?#]*)(\?([^#]*))?(#(.*))?$/)
      return false if @id.nil?
      return false if @id.to_s.length > 64
      return false if @id.to_s.length < 1
      return false if @id !~ Regexp.new(/^[-0-9a-z_]+$/)
      return false if @name.nil?
      return false if @name.to_s.length > 63
      return false if @name.to_s.length < 1
      return false if @name !~ Regexp.new(/^([a-z]|[a-z][-a-z0-9]*[a-z0-9])$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] href Value to be assigned
    def href=(href)
      if href.nil?
        fail ArgumentError, 'href cannot be nil'
      end

      pattern = Regexp.new(/^http(s)?:\/\/([^\/?#]*)([^?#]*)(\?([^#]*))?(#(.*))?$/)
      if href !~ pattern
        fail ArgumentError, "invalid value for \"href\", must conform to the pattern #{pattern}."
      end

      @href = href
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      if id.to_s.length > 64
        fail ArgumentError, 'invalid value for "id", the character length must be smaller than or equal to 64.'
      end

      if id.to_s.length < 1
        fail ArgumentError, 'invalid value for "id", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^[-0-9a-z_]+$/)
      if id !~ pattern
        fail ArgumentError, "invalid value for \"id\", must conform to the pattern #{pattern}."
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 63
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 63.'
      end

      if name.to_s.length < 1
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^([a-z]|[a-z][-a-z0-9]*[a-z0-9])$/)
      if name !~ pattern
        fail ArgumentError, "invalid value for \"name\", must conform to the pattern #{pattern}."
      end

      @name = name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          crn == o.crn &&
          href == o.href &&
          id == o.id &&
          name == o.name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [crn, href, id, name].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        IbmCloudVpc.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end