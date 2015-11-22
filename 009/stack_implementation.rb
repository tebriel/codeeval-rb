#!/usr/bin/env ruby
File.open(ARGV[0]).each_line do |line|
    results = []
    skip = false
    line.split(' ').reverse.each do |num|
        results << num unless skip
        skip = !skip
    end
    puts results.join(' ')
end
