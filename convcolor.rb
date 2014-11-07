#!/usr/bin/env ruby

if ARGV.length == 0
    puts "Usage: ruby convcolor.rb <24 bit hex color>"
    exit 1
end
inColor = ARGV[0]

color = Integer(inColor, 16)
r = (color >> 16) & 0xFF
g = (color >> 8) & 0xFF
b = (color) & 0xFF

r = r >> 3
g = g >> 2
b = b >> 3

r = r << 11
g = g << 5

puts (r | g | b).to_s(16)
