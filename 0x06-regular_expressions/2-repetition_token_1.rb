#!/usr/bin/env ruby
reg_A = /hb{0,2}tn/
puts "#{reg_A.match("#{ARGV[0]}")}\n"
