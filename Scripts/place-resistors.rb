#!/usr/bin/env ruby

x = 47.5

8.times do |i|
  r1 = "R#{ 2*(i + 1) - 1 }"
  r2 = "R#{ 2*(i + 1) }"
  
  y = 29 - 4 - i*3
  
  puts "MOVE #{r1} (#{x} #{y + 0.7});"
  puts "MOVE #{r2} (#{x} #{y - 0.7});"
  
  puts "ROTATE =R180 '#{r1}';"
  puts "ROTATE =R180 '#{r2}';"
end