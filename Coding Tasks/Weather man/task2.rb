# absolute path to all directories which contain data files 
path1 = "/Users/dev/Documents/Ruby/Coding Tasks/Weather man/Dubai_weather/"
path2 = "/Users/dev/Documents/Ruby/Coding Tasks/Weather man/Murree_weather/"
path3 = "/Users/dev/Documents/Ruby/Coding Tasks/Weather man/lahore_weather/"

# making array of path so that we can iterate over every file in each directory 
path_to_files = [path1,path2,path3]

month = 3
year = 2006

# variables to store highest tempetarure sum , lowest temperature sum, maximum humidity sum 
highest_temp_sum = 0
lowest_temp_sum = 100
max_humidity_sum = 0
# variable to store count of all values which is required to find average 
value_count = 0


# iterating over all directories 
for dir_path in path_to_files

    # iterating over each file in current directory 
    Dir.foreach(dir_path) do |file|

        # ignore if there are any hidden files 
        next if file == '.' or file == '..'

        # path of current file 
        file_path =  dir_path + file

        # read data from current file in the form of array 
        data = IO.readlines(file_path)
       
        # iterate over whole data line by line 
        for single_row in data 

            # As data is separated by (,) so split data on (,) to get array of data 
            single_row_data = single_row.split(',')
    
            # date is stored on 0 index of array so target the date 
            date = single_row_data[0]
            

            # Compare the current year with the year which has been passed as input 
            next if (date[5,1] != month.to_s) || (date[0,4] != year.to_s )
            
            puts date

            # Max temperature is stored on 1 index so target the Max temperature  
            max_temp = single_row_data[1]
            highest_temp_sum +=max_temp.to_i
            
    
            # Humidity is stored on 7 index so target the Humidity  
            humidity = single_row_data[7]
            max_humidity_sum += humidity.to_i

            # Minimum temperature is stored on 3 index so target the Minimum temperatue  
            min_temp = single_row_data[3]
            lowest_temp_sum +=min_temp.to_i

            value_count+=1
            
        end
    end   
end

puts "Highest Average temperature: #{highest_temp_sum/value_count}C"
puts "Lowest Average temperature: #{lowest_temp_sum/value_count}C "
puts "Average Humidity: #{max_humidity_sum/value_count}%"


