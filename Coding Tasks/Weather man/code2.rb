

dir_path = "/Users/dev/Documents/Ruby/Coding Tasks/Weather man/Dubai_weather/"

highest_temp = 0
highest_temp_date = 0


Dir.foreach(dir_path) do |file|
    next if file == '.' or file == '..'
    file_path =  dir_path + file
    data = IO.readlines(file_path)
    for single_row in data 
        single_row_data = single_row.split(',')
        temp = single_row_data[1]
        date = single_row_data[0]
        int_temp = temp.to_i
        if int_temp > highest_temp
            highest_temp = int_temp
            highest_temp_date = date
        end
    
    end
end

puts "#{highest_temp_date} - #{highest_temp}"
