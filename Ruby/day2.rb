#   Access files without code blocks
def read_file(file_name)
  file = File.open(file_name, "r")
  data = file.read
  file.close
  return data
end

fileToRead = "fileToRead.txt"
fileContents = read_file(fileToRead)
puts "'#{fileToRead}' was opened without file blocks"
puts "Contents: #{fileContents}"

#   Access files with codeblocks - benefit is automatic file close
fileInfo = File.open(fileToRead, "r") { |file| file.read }
puts "\r\n'#{fileToRead}' was opened with a file block"
puts "Contents: #{fileContents}"

sixteen = [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13]

# Print contents of array sixteen number 4 at a time using each 
puts "\r\nUse .each to display #{sixteen} four numbers at a time"
counter = 1
tmp = []
sixteen.each do |item|  
    tmp.push(item)  # add to temporary array
    
    # display first four elements, then clear
    if (counter % 4) == 0
        puts "#{tmp}"
        tmp = []
    end
    
    counter += 1   
end

# Print contents of array of sixteen numbers 4 at a time using each_slice
puts "\r\nUse .each_slice to display #{sixteen} four numbers at a time"
sixteen.each_slice(4) { |item| puts "#{item}" }