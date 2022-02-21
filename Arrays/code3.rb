
# Map method in arrays 
# Used for transforming arrays 

num = Array[1,2,3,4,5,6]
puts "#{num}"
new_num= num.map { |i| i*2 }
puts "#{new_num}"