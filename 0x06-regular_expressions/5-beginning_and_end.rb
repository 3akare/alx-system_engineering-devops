#!/usr/bin/env ruby
reg_a = /h.n/
puts "#{reg_a.match("#{ARGV[0]}")}\n"
