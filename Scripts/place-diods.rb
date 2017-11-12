#!/usr/bin/env ruby

DIODES = 2 * 16 * 8
OFFSET = 1

# Move them
DIODES.times do |i|
  label = "D#{i + OFFSET}"
  front = (i / 16).even?
  
  x = 100 - 4 - (i % 16) * 3
  y = 29 - 4 - (i / 32) * 3
  
  angle = front ? 45 : 135
  mirrored = front ? '' : 'M'
  
  puts "MOVE #{label} (#{x} #{y});"
  #puts "MIRROR #{label};" unless front
  puts "ROTATE =#{mirrored}R#{angle} #{label};"
  puts "SMASH #{label};"
  puts "MOVE #{label}>NAME (#{x} #{y + 29});"
end