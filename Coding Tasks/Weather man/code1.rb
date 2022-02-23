

file_path = "/Users/dev/Documents/Ruby/Coding Tasks/Weather man/Dubai_weather/Dubai_weather_2004_Jul.txt"

data = IO.readlines(file_path)

# single_data = data[0].split(',')
highest_temp = 0
highest_temp_date = 0
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

puts "#{highest_temp_date} - #{highest_temp}"

