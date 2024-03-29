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
  class VolumeGroupStorageDetails
    # The name of consistency group at storage controller level
    attr_accessor :consistency_group_name

    # Indicates the minimum period in seconds between multiple cycles
    attr_accessor :cycle_period_seconds

    # Indicates the type of cycling mode used
    attr_accessor :cycling_mode

    # Number of volumes in volume group
    attr_accessor :num_ofvols

    # Indicates whether master/aux volume is playing the primary role
    attr_accessor :primary_role

    # List of remote-copy relationship names in a volume group
    attr_accessor :remote_copy_relationship_names

    # Type of replication(metro,global)
    attr_accessor :replication_type

    # Indicates the relationship state
    attr_accessor :state

    # Indicates whether the relationship is synchronized
    attr_accessor :sync

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'consistency_group_name' => :'consistencyGroupName',
        :'cycle_period_seconds' => :'cyclePeriodSeconds',
        :'cycling_mode' => :'cyclingMode',
        :'num_ofvols' => :'numOfvols',
        :'primary_role' => :'primaryRole',
        :'remote_copy_relationship_names' => :'remoteCopyRelationshipNames',
        :'replication_type' => :'replicationType',
        :'state' => :'state',
        :'sync' => :'sync'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'consistency_group_name' => :'String',
        :'cycle_period_seconds' => :'Integer',
        :'cycling_mode' => :'String',
        :'num_ofvols' => :'Integer',
        :'primary_role' => :'String',
        :'remote_copy_relationship_names' => :'Array<String>',
        :'replication_type' => :'String',
        :'state' => :'String',
        :'sync' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudPower::VolumeGroupStorageDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudPower::VolumeGroupStorageDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'consistency_group_name')
        self.consistency_group_name = attributes[:'consistency_group_name']
      end

      if attributes.key?(:'cycle_period_seconds')
        self.cycle_period_seconds = attributes[:'cycle_period_seconds']
      end

      if attributes.key?(:'cycling_mode')
        self.cycling_mode = attributes[:'cycling_mode']
      end

      if attributes.key?(:'num_ofvols')
        self.num_ofvols = attributes[:'num_ofvols']
      end

      if attributes.key?(:'primary_role')
        self.primary_role = attributes[:'primary_role']
      end

      if attributes.key?(:'remote_copy_relationship_names')
        if (value = attributes[:'remote_copy_relationship_names']).is_a?(Array)
          self.remote_copy_relationship_names = value
        end
      end

      if attributes.key?(:'replication_type')
        self.replication_type = attributes[:'replication_type']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'sync')
        self.sync = attributes[:'sync']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @consistency_group_name.nil?
        invalid_properties.push('invalid value for "consistency_group_name", consistency_group_name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @consistency_group_name.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          consistency_group_name == o.consistency_group_name &&
          cycle_period_seconds == o.cycle_period_seconds &&
          cycling_mode == o.cycling_mode &&
          num_ofvols == o.num_ofvols &&
          primary_role == o.primary_role &&
          remote_copy_relationship_names == o.remote_copy_relationship_names &&
          replication_type == o.replication_type &&
          state == o.state &&
          sync == o.sync
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [consistency_group_name, cycle_period_seconds, cycling_mode, num_ofvols, primary_role, remote_copy_relationship_names, replication_type, state, sync].hash
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
