require 'colorize'
puts "+".red 
puts "+".blue 


path1 = "/Users/dev/Documents/Ruby/Coding Tasks/Weather man/Dubai_weather/"

arr = []
Dir.glob('/Users/dev/Documents/Ruby/Coding Tasks/Weather man/Murree_weather/*.txt') do |rb_filename|
    # Do work on files & directories ending in .rb
    # puts rb_filename
    arr.append(rb_filename)
end

puts arr.sort

# absolute path to all directories which contain data files 
path1 = "/Users/dev/Documents/Ruby/Coding Tasks/Weather man/Dubai_weather/"
path2 = "/Users/dev/Documents/Ruby/Coding Tasks/Weather man/Murree_weather/"
path3 = "/Users/dev/Documents/Ruby/Coding Tasks/Weather man/lahore_weather/"

# making array of path so that we can iterate over every file in each directory 
path_to_files = [path1,path2,path3]

