#!/usr/bin/env ruby
reg_a = /School/
puts "#{reg_a.match("#{ARGV[0]}")}\n"
