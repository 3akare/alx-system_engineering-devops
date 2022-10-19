#!/usr/bin/env ruby
reg_a = /School/
puts ARGV[0].scan(reg_a).join
