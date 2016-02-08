require 'byebug'

class Currency
  def initialize(amount, type = "USD")
    @amount = amount
    @type = type

    if amount.to_s.include?("$")
      @amount = amount.to_s.tr("$", "")
      @type = :USD
    elsif amount.to_s.include?("€")
      @amount = @amount.to_s.tr("€", "")
      @type = :EUR
    elsif amount.to_s.include?("¥")
      @amount = @amount.to_s.tr("¥", "")
      @type = :JPY


    end
  end



def type
  return @type
end


    def ==(other)
      if @type == other.type && @amount == other.amount
        return true
      elsif @type == other.type && @amount >= other.amount || @type == other.type && @amount >= other.amount
        raise DifferentCurrencyTypeError
        return false
      else
        raise DifferentCurrencyTypeError
        return false
      end
    end






  def +(other)
    if @type == other.type
    total = @amount + other.amount
    Currency.new(total, @type)
    else
    puts "error goes here!"
    end
  end

  def *(other)
    if @type == other.type
    sum = @amount * other.amount
    Currency.new(sum, @type)
  elsif  other. == nil
    sum = @amount * other.amount
        Currency.new(sum, @type)
return "boners"
    else
    puts "error goes here!"
    end
  end

  def -(other)
    if @type == other.type
    answer = @amount - other.amount
    Currency.new(answer, @type)
    else
    puts "error goes here!"
    end
  end



  def amount
    @amount.to_f
  end

  def type
    @type
  end



  def to_s
    "Your amounts are #{@amount} #{@type}"
  end

  class DifferentCurrencyTypeError < StandardError
  end


end
