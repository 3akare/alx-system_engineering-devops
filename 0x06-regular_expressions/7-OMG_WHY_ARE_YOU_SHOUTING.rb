#!/usr/bin/env ruby
reg_a = /[A-Z]/
num = "#{ARGV[0]}".length
x = 0
while x <= num
    print "#{reg_a.match("#{ARGV[0][x]}")}"
    x = x + 1
end
puts""