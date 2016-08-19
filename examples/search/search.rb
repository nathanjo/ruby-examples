#!/usr/bin/env ruby

require_relative 'search_control'

require 'nokogiri'

search = SearchControl.new

until ARGV.empty? do
  q = ARGV.shift
  puts "Search: #{q}"
  begin
    search.search q
  rescue Exception => e
    puts e.message
  end
end