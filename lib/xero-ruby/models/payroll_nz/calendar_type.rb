=begin
#Xero Payroll NZ

#This is the Xero Payroll API for orgs in the NZ region.

The version of the OpenAPI document: 2.6.0
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::PayrollNz
  class CalendarType
    WEEKLY = "Weekly".freeze
    FORTNIGHTLY = "Fortnightly".freeze
    FOUR_WEEKLY = "FourWeekly".freeze
    MONTHLY = "Monthly".freeze
    ANNUAL = "Annual".freeze
    QUARTERLY = "Quarterly".freeze
    TWICE_MONTHLY = "TwiceMonthly".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = CalendarType.constants.select { |c| CalendarType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #CalendarType" if constantValues.empty?
      value
    end
  end
end