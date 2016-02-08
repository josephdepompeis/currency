require './currencies.rb'
require 'set'
require 'byebug'

class CurrencyConverter
  def initialize(rates = {})
    @rates = rates
  end

  def convert(currency_object , requested_type)
    currency_object = currency_object
    currency_object_amount = currency_object.amount
    currency_object_type = currency_object.type
    if @rates[requested_type] == nil
      raise UnknownCurrencyTypeError
      return Currency.new(currency_object.amount, currency_object_type)
    else
      currency_object_amount = currency_object_amount * (@rates[requested_type])/(@rates[currency_object_type])
      return Currency.new(currency_object_amount, requested_type)
    end
  end

  class UnkownCurrencyTypeError < StandardError
  end
end
