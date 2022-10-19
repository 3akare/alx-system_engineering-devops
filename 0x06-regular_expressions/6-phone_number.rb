#!/usr/bin/env ruby
reg_a = /^\d{10}/
puts "#{reg_a.match("#{ARGV[0]}")}"