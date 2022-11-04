=begin
#Power Cloud API

#IBM Power Cloud API for Power Hardware / Infrastructure

The version of the OpenAPI document: 1.0.0
Contact: kylej@us.ibm.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module IbmCloudPower
  class ImageReference
    # Creation Date
    attr_accessor :creation_date

    # Description
    attr_accessor :description

    # Link to Image resource
    attr_accessor :href

    # Image ID
    attr_accessor :image_id

    # Last Update Date
    attr_accessor :last_update_date

    # Image Name
    attr_accessor :name

    attr_accessor :specifications

    # Image State
    attr_accessor :state

    # Storage pool where image resides
    attr_accessor :storage_pool

    # Storage type for image
    attr_accessor :storage_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'creation_date' => :'creationDate',
        :'description' => :'description',
        :'href' => :'href',
        :'image_id' => :'imageID',
        :'last_update_date' => :'lastUpdateDate',
        :'name' => :'name',
        :'specifications' => :'specifications',
        :'state' => :'state',
        :'storage_pool' => :'storagePool',
        :'storage_type' => :'storageType'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'creation_date' => :'Time',
        :'description' => :'String',
        :'href' => :'String',
        :'image_id' => :'String',
        :'last_update_date' => :'Time',
        :'name' => :'String',
        :'specifications' => :'ImageSpecifications',
        :'state' => :'String',
        :'storage_pool' => :'String',
        :'storage_type' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudPower::ImageReference` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudPower::ImageReference`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'creation_date')
        self.creation_date = attributes[:'creation_date']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'href')
        self.href = attributes[:'href']
      end

      if attributes.key?(:'image_id')
        self.image_id = attributes[:'image_id']
      end

      if attributes.key?(:'last_update_date')
        self.last_update_date = attributes[:'last_update_date']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'specifications')
        self.specifications = attributes[:'specifications']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'storage_pool')
        self.storage_pool = attributes[:'storage_pool']
      end

      if attributes.key?(:'storage_type')
        self.storage_type = attributes[:'storage_type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @creation_date.nil?
        invalid_properties.push('invalid value for "creation_date", creation_date cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @href.nil?
        invalid_properties.push('invalid value for "href", href cannot be nil.')
      end

      if @image_id.nil?
        invalid_properties.push('invalid value for "image_id", image_id cannot be nil.')
      end

      if @last_update_date.nil?
        invalid_properties.push('invalid value for "last_update_date", last_update_date cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @specifications.nil?
        invalid_properties.push('invalid value for "specifications", specifications cannot be nil.')
      end

      if @state.nil?
        invalid_properties.push('invalid value for "state", state cannot be nil.')
      end

      if @storage_pool.nil?
        invalid_properties.push('invalid value for "storage_pool", storage_pool cannot be nil.')
      end

      if @storage_type.nil?
        invalid_properties.push('invalid value for "storage_type", storage_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @creation_date.nil?
      return false if @description.nil?
      return false if @href.nil?
      return false if @image_id.nil?
      return false if @last_update_date.nil?
      return false if @name.nil?
      return false if @specifications.nil?
      return false if @state.nil?
      return false if @storage_pool.nil?
      return false if @storage_type.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          creation_date == o.creation_date &&
          description == o.description &&
          href == o.href &&
          image_id == o.image_id &&
          last_update_date == o.last_update_date &&
          name == o.name &&
          specifications == o.specifications &&
          state == o.state &&
          storage_pool == o.storage_pool &&
          storage_type == o.storage_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [creation_date, description, href, image_id, last_update_date, name, specifications, state, storage_pool, storage_type].hash
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
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
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
      when :Time
        Time.parse(value)
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
        # models (e.g. Pet) or oneOf
        klass = IbmCloudPower.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
