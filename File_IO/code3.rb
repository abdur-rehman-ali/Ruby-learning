
# syswrite method 

file_path = "/Users/dev/Documents/Ruby/File_IO/TestFiles/text1.txt"

aFile = File.new(file_path,"r+")

if aFile
    content = aFile.sysread(20)
    puts "Orignal content"
    puts content
    aFile.syswrite("New data added")
else
    puts "Unable to open file"
end
