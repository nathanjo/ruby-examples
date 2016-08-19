#!/usr/bin/env ruby

require_relative 'bank'
require_relative 'bank_exception'

bank = Bank.new

until ARGV.empty? do
  input = ARGV.shift
  puts "Enter amount: #{input}"
  begin
    if input.match(/^[0-9]+$/) || input.match(/0+$/)
      num = input.to_i
      puts bank.withdrawal num
    else
      raise BankException::InvalidArgumentException
    end
  rescue Exception => e
    puts e.message
  end
end