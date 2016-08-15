# Simple Grep method
grepString = ARGV[0]
file = ARGV[1]

lines = File.readlines(file).select { |line| /#{grepString}/ =~ line }
puts lines