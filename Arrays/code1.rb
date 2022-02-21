

# creating arrays 
names = Array.new(10)
puts names.length 
puts names[0]

# creating and intialzing array 
num = Array.new(5,1)
puts num[0]
puts "#{num}"

# You can also use a block with new, populating each element with what the block evaluates to −
even = Array.new(20) { |i| i }
puts "#{even}"

# another method of creating array 
arr2 = Array[1,2,3,4,5]
puts "#{arr2}"
