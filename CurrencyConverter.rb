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


set = Set.new{}


rates = {USD: 1.0, EUR: 0.74, JPY: 120.0}
currency_converter = CurrencyConverter.new(rates)

test1 = Currency.new("$100")
test2 = Currency.new(300, :EUR)
a = Currency.new(30, :EUR)
b = Currency.new(30, :EUR)
x = Currency.new(30, :EUR)
y = Currency.new(10, :EUR)
floater = Currency.new(50.1)
EURu = Currency.new("€1.00")
DOLr = Currency.new("$1.00")
JAPn = Currency.new("¥1.00")
wrong = Currency.new("&1.00")


c = a + b
d = a * c
e = x * y
z = x - y



puts "Total : #{c}"
puts "Total : #{a}"
puts "Total : #{b}"
puts "Total : #{d}"
puts "Total : #{x}"
puts "Total : #{e}"
puts "Total : #{y}"
puts "Total : #{floater}"
puts "Total : #{EURu}"


#to test error msg
# if y == x
#   puts "error isnt working"
# end

if a == b
  puts "the == is working"
end

puts test1
puts test2


test3 = currency_converter.convert(test1, :USD)
puts test3


test4 = currency_converter.convert(x, :USD)
puts test4



test5 = currency_converter.convert(EURu, :USD)
puts test5

test6 = currency_converter.convert(DOLr, :EUR)
puts test6


test7 = currency_converter.convert(JAPn, :JPY)
puts test7

test8 = currency_converter.convert(JAPn, :USD)
puts test8

# to test error messge
# test9 = currency_converter.convert(x, :SYK)
# puts test9
