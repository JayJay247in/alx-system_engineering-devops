#!/usr/bin/env ruby

import sys

if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <string>"
  exit 1
end

string = ARGV[0]

regex = /\d{10}/

if string =~ regex
  puts string
end