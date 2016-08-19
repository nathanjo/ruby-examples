#!/usr/bin/env ruby

require_relative 'grouping'
require_relative 'grouping_exception'

grouping = Grouping.new

begin
  puts "Enter Range"
  range = gets.rstrip
  puts "Set Number"
  set_num = gets.rstrip
  if (/[0-9]/).match(range.to_s) && !(range.empty? && set_num.empty?)
    grouping.set_range range.to_i
    # need to convert string of hash to real hash
    if grouping.validate_hash set_num
      puts "Result: #{grouping.execute}"
    end
  else
    raise GroupingException::InvalidArgumentException
  end
rescue Exception => e
  puts e.message  
end
