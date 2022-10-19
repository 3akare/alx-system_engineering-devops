#!/usr/bin/env ruby
reg_a = /h[b][t]{0,4}n/
puts "#{reg_a.match("#{ARGV[0]}")}\n"
