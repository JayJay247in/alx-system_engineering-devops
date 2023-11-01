#!/usr/bin/env ruby

import re

if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <log_file>"
  exit 1
end

log_file = ARGV[0]

File.foreach(log_file) do |line|
  matches = line.match(/^\w+ [\d:]+ .*from:(\S+) \[to:(\S+)\] \[flags:([:\-0-9]+)\]/)

  if matches
    sender = matches[1]
    receiver = matches[2]
    flags = matches[3]
    
    puts "#{sender},#{receiver},#{flags}"
  end
end