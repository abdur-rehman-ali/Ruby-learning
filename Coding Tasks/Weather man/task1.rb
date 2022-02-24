# absolute path to all directories which contain data files 
path1 = "/Users/dev/Documents/Ruby/Coding Tasks/Weather man/Dubai_weather/"
path2 = "/Users/dev/Documents/Ruby/Coding Tasks/Weather man/Murree_weather/"
path3 = "/Users/dev/Documents/Ruby/Coding Tasks/Weather man/lahore_weather/"

# making array of path so that we can iterate over every file in each directory 
path_to_files = [path1,path2,path3]

# variables to store maximum temperature and date 
highest_temp = 0
highest_temp_date = 0

# variables to store minimum temperature and date 
lowest_temp = 100
lowest_temp_date = 0

# variables to store maximum humidity and date 
max_humidity = 0
max_humidity_date = 0

year = 2006

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
    
            # data is stored on 0 index of array so target the date 
            date = single_row_data[0]

            # Max temperature is stored on 1 index so target the Max temperature  
            max_temp = single_row_data[1]

            # Compare the current year with the year which has been passed as input 
            next if date[0,4] != year.to_s 
           
            # typecasting max_temp to get integer value 
            max_temp_int = max_temp.to_i
    
            # condition to check maximum temperature and store it if it is maximum 
            if max_temp_int > highest_temp
                highest_temp = max_temp_int
                highest_temp_date = date
            end
    
            # Humidity is stored on 7 index so target the Humidity  
            humidity = single_row_data[7]

            # typecasting humidity to get integer value 
            humidity_int = humidity.to_i
    
            # condition to check maximum humidity and store it if it is maximum 
            if humidity_int > max_humidity
                max_humidity = humidity_int
                max_humidity_date = date
            end

            # Minimum temperature is stored on 3 index so target the Minimum temperatue  
            min_temp = single_row_data[3]

            # deal with empty data 
            next if min_temp == ''
            
            # typecasting min_temp to get integer value 
            min_temp_int = min_temp.to_i

            # condition to check minimum temperatue and store if it is minimum
            if min_temp_int < lowest_temp
                lowest_temp = min_temp_int
                lowest_temp_date = date
            end
        end
    end   
end


puts "Highest: #{highest_temp}C on #{highest_temp_date}"
puts "Lowest: #{lowest_temp}C on #{lowest_temp_date}"
puts "Humid: #{max_humidity}% on #{max_humidity_date}"


