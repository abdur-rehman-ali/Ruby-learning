
# deleting elements 

num = Array[1,2,3,4,5,6,7,8]
puts "#{num}"
num.delete(0)
puts "#{num}"

# delete all elements less than 4 
num.delete_if {|n| n < 4}
puts "#{num}"
