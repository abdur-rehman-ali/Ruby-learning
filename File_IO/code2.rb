

# File.new method to open the file
# sysread to read characters from file 

file_path = "/Users/dev/Documents/Ruby/File_IO/TestFiles/text.txt"

aFile = File.new(file_path,"r")

if aFile
    # read 2 characters 
    content = aFile.sysread(2)
    puts content
else 
    puts "Unable to open file"
end