#!/usr/bin/env ruby
reg_a = /hbt{2,5}n/
puts "#{reg_a.match("#{ARGV[0]}")}\n"
