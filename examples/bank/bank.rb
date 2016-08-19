require_relative 'helper'
require_relative 'bank_exception'

class Bank < BankException

  def initialize
    @helper = Helper.new
  end

  def withdrawal amount
    begin
      if @helper.valid_amount? amount
        if @helper.accepted_amount? amount
          dispense amount
        else
          raise BankException::NoteUnavailableException
        end
      else
        raise BankException::InvalidArgumentException
      end
    rescue Exception => e
      puts e.message
    end
  end

  def dispense amount
    money = []
    while amount > 0
      money.tap do |result|
        @helper.available_denominations.each do | a |
          if amount == 0
            break
          elsif amount == 10
            amount -= 10
            result << 10
          else
            if amount > a
              amount -= a
              result << a
            elsif @helper.available_denominations.include? amount
              amount -= a
              result << a
            end
          end
        end
      end
    end
    money.sort{ |x,y| y <=> x }.map{ |m| '%.2f' % m }.join(", ")
  end

end