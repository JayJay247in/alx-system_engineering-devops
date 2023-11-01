#!/usr/bin/env ruby

import sys

if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <string>"
  exit 1
end

string = ARGV[0]

regex = /[A-Z]+/

matches = string.scan(regex)

if matches.any?
  puts matches.join
end