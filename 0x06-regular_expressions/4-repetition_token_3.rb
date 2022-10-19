#!/usr/bin/env ruby
reg_a = /hbt*n/
puts "#{reg_a.match("#{ARGV[0]}")}\n"
