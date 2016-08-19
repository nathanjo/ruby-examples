require_relative 'helper'
require_relative 'grouping_exception'

class Grouping < GroupingException
  
  def initialize
    @helper = Helper.new
  end

  def execute
    if @helper.range_placed?
      arr = @helper.hash_data
      e_range = range = @helper.range
      r_start = 0
      c = arr.count + 1
      g_arr = []
      nega = []
      while c > 0
        arn = []
        nega = []
        # filter negative first
        arr.map {|x| nega << x if x < 0}
        if !nega.empty?
          new_arr = @helper.order_sub_arr nega
          arr.delete_if {|x| x < 0}
          g_arr << new_arr
        end
        arr.each do |n|
          if n.between?(r_start,e_range)
            arn << n
          end
        end
        if !arn.empty?
          new_arr = @helper.order_sub_arr arn
          g_arr << new_arr
        end
        r_start = e_range + 1
        e_range += range
        c -= 1
      end
      g_arr.inspect
    end
  end

  def set_range n
    @helper.set_range n 
  end

  def validate_hash h
    @helper.validate_hash(h) || false
  end
end