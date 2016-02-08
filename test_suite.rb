require './currencies.rb'
require 'set'
require 'byebug'
require './CurrencyConverter'

set = Set.new{}

rates = {USD: 1.0, EUR: 0.74, JPY: 120.0}
currency_converter = CurrencyConverter.new(rates)

#variable setting and testing

a = Currency.new(30, :EUR)
b = Currency.new(30, :EUR)
x = Currency.new(30, :EUR)
y = Currency.new(10, :EUR)
floater = Currency.new(50.1)
test1 = Currency.new("$100")
test2 = Currency.new(300, :EUR)
EURu = Currency.new("€1.00")
DOLr = Currency.new("$1.00")
JAPn = Currency.new("¥1.00")
wrong = Currency.new("&1.00")

#math formula testing
c = a + b
d = a * c
e = x * y
z = x - y


#math formula testing results
puts "Total : #{c}"
puts "Total : #{a}"
puts "Total : #{b}"
puts "Total : #{d}"
puts "Total : #{x}"
puts "Total : #{e}"
puts "Total : #{y}"
puts "Total : #{floater}"
puts "Total : #{EURu}"
puts test1
puts test2

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
