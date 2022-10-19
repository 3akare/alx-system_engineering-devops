#!/usr/bin/env ruby
reg_a = /hbt{0,5}n/
puts "#{reg_a.match("#{ARGV[0]}")}\n"
