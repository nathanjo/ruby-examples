require_relative 'helper'
require_relative 'search_exception'
require 'nokogiri'

class SearchControl < SearchException

  def initialize
    @page = File.open(Dir.pwd + "/examples/search/search.html") { |f| Nokogiri::HTML(f) }
  end

  def search q
    puts "*** Top 3 results ****"
    3.times do |i|
      puts @page.css('div')[i + 1]
    end
    puts "*** Description for #{q} ***"
    @page.css("div").each do |x|
      if x.xpath("h1").text == q
        puts x.xpath("p").text
      end
    end
  end
end