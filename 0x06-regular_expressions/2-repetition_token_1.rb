#!/usr/bin/env ruby

import sys

if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <string>"
  exit 1  
end

string = ARGV[0]

regex = /School/

if string =~ regex
  puts string
end