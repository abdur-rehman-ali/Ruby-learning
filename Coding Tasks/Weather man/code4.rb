

path1 = "/Users/dev/Documents/Ruby/Coding Tasks/Weather man/Dubai_weather/"
path2 = "/Users/dev/Documents/Ruby/Coding Tasks/Weather man/Murree_weather/"
path3 = "/Users/dev/Documents/Ruby/Coding Tasks/Weather man/lahore_weather/"

path_to_files = [path1,path2,path3]


highest_temp = 0
highest_temp_date = 0

lowest_temp = 100
lowest_temp_date = 0

max_humidity = 0
max_humidity_date = 0

year = 2006


for dir_path in path_to_files
    Dir.foreach(dir_path) do |file|
        next if file == '.' or file == '..'
        file_path =  dir_path + file
        data = IO.readlines(file_path)
       
        for single_row in data 
            single_row_data = single_row.split(',')
    
    
            max_temp = single_row_data[1]
            date = single_row_data[0]
            if date[0,4] != year.to_s 
                next
            end
           

            max_temp_int = max_temp.to_i
    
            if max_temp_int > highest_temp
                highest_temp = max_temp_int
                highest_temp_date = date
            end
    
            humidity = single_row_data[7]
            humidity_int = humidity.to_i
    
            if humidity_int > max_humidity
                max_humidity = humidity_int
                max_humidity_date = date
            end

            min_temp = single_row_data[3]
            if min_temp == ''
                next
            end
           
            
            min_temp_int = min_temp.to_i
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


