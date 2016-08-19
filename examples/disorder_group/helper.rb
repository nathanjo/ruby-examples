require 'yaml'

class Helper

  attr_accessor :range, :hash_data

  # def range
  #   self.range
  # end

  def set_range r
    self.range = r
  end

  # def hash_data
  #   self.hash_data 
  # end

  def range_placed?
    self.range != nil
  end

  def order_sub_arr arr
    new_array = []
    max_pos = arr_count = arr.count
    min_pos = 0
    loop do
      arr.each do |v|
        if arr.min
          new_array[min_pos] = arr.min
          min_pos += 1
          arr.delete(arr.min)
        end
        if arr.max
          new_array[max_pos] = arr.max
          max_pos -= 1
          arr.delete(arr.max)
        end
        break;
      end
      break if arr.count == 0
    end
    new_array.compact
  end

  def validate_hash h
    begin
      if h.kind_of? String
        self.hash_data = eval(h)
      else
        self.hash_data = h
      end
    rescue Exception => e
      puts e.message
    end
  end

end