=begin
#Xero Payroll NZ

#This is the Xero Payroll API for orgs in the NZ region.

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::PayrollNz
  require 'bigdecimal'

  class SalaryAndWage
    # Xero unique identifier for a salary and wages record
    attr_accessor :salary_and_wages_id
    
    # Xero unique identifier for an earnings rate
    attr_accessor :earnings_rate_id
    
    # The Number of Units per week for the corresponding salary and wages
    attr_accessor :number_of_units_per_week
    
    # The rate of each unit for the corresponding salary and wages
    attr_accessor :rate_per_unit
    
    # The Number of Units per day for the corresponding salary and wages
    attr_accessor :number_of_units_per_day
    
    # The days per week for the salary.
    attr_accessor :days_per_week
    
    # The effective date of the corresponding salary and wages
    attr_accessor :effective_from
    
    # The annual salary
    attr_accessor :annual_salary
    
    # The current status of the corresponding salary and wages
    attr_accessor :status
    ACTIVE = "Active".freeze
    PENDING = "Pending".freeze
    HISTORY = "History".freeze
    
    # The type of the payment of the corresponding salary and wages
    attr_accessor :payment_type
    SALARY = "Salary".freeze
    HOURLY = "Hourly".freeze
    
    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'salary_and_wages_id' => :'salaryAndWagesID',
        :'earnings_rate_id' => :'earningsRateID',
        :'number_of_units_per_week' => :'numberOfUnitsPerWeek',
        :'rate_per_unit' => :'ratePerUnit',
        :'number_of_units_per_day' => :'numberOfUnitsPerDay',
        :'days_per_week' => :'daysPerWeek',
        :'effective_from' => :'effectiveFrom',
        :'annual_salary' => :'annualSalary',
        :'status' => :'status',
        :'payment_type' => :'paymentType'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'salary_and_wages_id' => :'String',
        :'earnings_rate_id' => :'String',
        :'number_of_units_per_week' => :'BigDecimal',
        :'rate_per_unit' => :'BigDecimal',
        :'number_of_units_per_day' => :'BigDecimal',
        :'days_per_week' => :'BigDecimal',
        :'effective_from' => :'Date',
        :'annual_salary' => :'BigDecimal',
        :'status' => :'String',
        :'payment_type' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::PayrollNz::SalaryAndWage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::PayrollNz::SalaryAndWage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'salary_and_wages_id')
        self.salary_and_wages_id = attributes[:'salary_and_wages_id']
      end

      if attributes.key?(:'earnings_rate_id')
        self.earnings_rate_id = attributes[:'earnings_rate_id']
      end

      if attributes.key?(:'number_of_units_per_week')
        self.number_of_units_per_week = attributes[:'number_of_units_per_week']
      end

      if attributes.key?(:'rate_per_unit')
        self.rate_per_unit = attributes[:'rate_per_unit']
      end

      if attributes.key?(:'number_of_units_per_day')
        self.number_of_units_per_day = attributes[:'number_of_units_per_day']
      end

      if attributes.key?(:'days_per_week')
        self.days_per_week = attributes[:'days_per_week']
      end

      if attributes.key?(:'effective_from')
        self.effective_from = attributes[:'effective_from']
      end

      if attributes.key?(:'annual_salary')
        self.annual_salary = attributes[:'annual_salary']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'payment_type')
        self.payment_type = attributes[:'payment_type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @earnings_rate_id.nil?
        invalid_properties.push('invalid value for "earnings_rate_id", earnings_rate_id cannot be nil.')
      end

      if @number_of_units_per_week.nil?
        invalid_properties.push('invalid value for "number_of_units_per_week", number_of_units_per_week cannot be nil.')
      end

      if @number_of_units_per_day.nil?
        invalid_properties.push('invalid value for "number_of_units_per_day", number_of_units_per_day cannot be nil.')
      end

      if @effective_from.nil?
        invalid_properties.push('invalid value for "effective_from", effective_from cannot be nil.')
      end

      if @annual_salary.nil?
        invalid_properties.push('invalid value for "annual_salary", annual_salary cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @payment_type.nil?
        invalid_properties.push('invalid value for "payment_type", payment_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @earnings_rate_id.nil?
      return false if @number_of_units_per_week.nil?
      return false if @number_of_units_per_day.nil?
      return false if @effective_from.nil?
      return false if @annual_salary.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["Active", "Pending", "History"])
      return false unless status_validator.valid?(@status)
      return false if @payment_type.nil?
      payment_type_validator = EnumAttributeValidator.new('String', ["Salary", "Hourly"])
      return false unless payment_type_validator.valid?(@payment_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["Active", "Pending", "History"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_type Object to be assigned
    def payment_type=(payment_type)
      validator = EnumAttributeValidator.new('String', ["Salary", "Hourly"])
      unless validator.valid?(payment_type)
        fail ArgumentError, "invalid value for \"payment_type\", must be one of #{validator.allowable_values}."
      end
      @payment_type = payment_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          salary_and_wages_id == o.salary_and_wages_id &&
          earnings_rate_id == o.earnings_rate_id &&
          number_of_units_per_week == o.number_of_units_per_week &&
          rate_per_unit == o.rate_per_unit &&
          number_of_units_per_day == o.number_of_units_per_day &&
          days_per_week == o.days_per_week &&
          effective_from == o.effective_from &&
          annual_salary == o.annual_salary &&
          status == o.status &&
          payment_type == o.payment_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [salary_and_wages_id, earnings_rate_id, number_of_units_per_week, rate_per_unit, number_of_units_per_day, days_per_week, effective_from, annual_salary, status, payment_type].hash
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
        end # or else data not found in attributes(hash), not an issue as the data can be optional
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
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BigDecimal
        BigDecimal(value.to_s)
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
        XeroRuby::PayrollNz.const_get(type).build_from_hash(value)
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
    def to_hash(downcase: false)
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        key = downcase ? attr : param
        hash[key] = _to_hash(value)
      end
      hash
    end

    # Returns the object in the form of hash with snake_case
    def to_attributes
      to_hash(downcase: true)
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

    def parse_date(datestring)
      if datestring.include?('Date')
        seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
        Time.at(seconds_since_epoch).utc.strftime('%Y-%m-%dT%H:%M:%S%z').to_s
      else # handle date 'types' for small subset of payroll API's
        Time.parse(datestring).strftime('%Y-%m-%dT%H:%M:%S').to_s
      end
    end
  end
end
