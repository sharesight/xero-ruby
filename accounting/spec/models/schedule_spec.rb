=begin
#Accounting API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0.3
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for XeroRuby::Schedule
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Schedule' do
  before do
    # run before each test
    @instance = XeroRuby::Schedule.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Schedule' do
    it 'should create an instance of Schedule' do
      expect(@instance).to be_instance_of(XeroRuby::Schedule)
    end
  end
  describe 'test attribute "period"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "unit"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["WEEKLY", "MONTHLY"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.unit = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "due_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "due_date_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["DAYSAFTERBILLDATE", "DAYSAFTERBILLMONTH", "OFCURRENTMONTH", "OFFOLLOWINGMONTH"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.due_date_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "start_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "next_scheduled_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "end_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end