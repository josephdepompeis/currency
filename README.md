
below you can find the objectives of this program.

Pleas see the 'test_suite.rb' to see how to test this program and how inputs can be put in, and how to call different parts of the program!



Should be created with an amount and a currency code
complete

Should equal another Currency object with the same amount and currency code
complete


Should NOT equal another Currency object with different amount or currency code
complete


Should be able to be added to another Currency object with the same currency code
complete

Should be able to be subtracted by another Currency object with the same currency code
complete

Should raise a DifferentCurrencyCodeError when you try to add or subtract two Currency objects with different
currency codes.
complete

Should be able to be multiplied by a Fixnum or Float and return a Currency object
INCOMPLETE


Currency.new should be able to take one argument with a
currency symbol embedded in it, like "$1.20" or "€ 7.00", and figure out the correct currency code. It can also take two arguments like before, one being the amount and the other being the currency code.
complete

CurrencyConverter objects:

Should be initialized with a Hash of currency codes to conversion rates (see link to rates below)
complete

At first, just make this work with two currency codes and conversation rates, with one rate being 1.0 and the other being the conversation rate.
An example would be this: {USD: 1.0, EUR: 0.74}, which implies that a dollar is worth 0.74 euros.
complete

Should be able to take a Currency object and a requested currency code that is the same currency code as the Currency object's and return a Currency object equal to the one passed in (that is, currency_converter.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD))
complete

Should be able to take a Currency object that has one currency code it knows and a requested currency code and return a new Currency object with the right amount in the new currency code
complete

Should be able to be created with a Hash of three or more currency codes and conversion rates. An example would be this: {USD: 1.0, EUR: 0.74,
JPY: 120.0}, which implies that a dollar is worth 0.74 euros and that a dollar is worth 120 yen, but also that a euro is worth 120/0.74 = 162.2 yen.
complete

Should be able to convert Currency in any currency code it knows about to Currency in any other currency code it knows about.
complete

Should raise an UnknownCurrencyCodeError when you try to convert from or to a currency code it doesn't know about.
