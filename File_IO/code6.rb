

# renaming and deleting file 
old_path = "/Users/dev/Documents/Ruby/File_IO/TestFiles/text0.txt"
new_path = "/Users/dev/Documents/Ruby/File_IO/TestFiles/text.txt"

File.rename(old_path,new_path)

dummy = "/Users/dev/Documents/Ruby/File_IO/TestFiles/dummy.txt"
File.delete(dummy)
