
# select method 
# used for filtering of elements 

num = Array[1,2,3,4,5,6,7,8]

# filter out even numbers from num 

even = num.select {|i| i%2==0}

puts "#{even}"


names = ['rock', 'paper', 'scissors', 'lizard', 'spock'].select {|str| str.length>5}
puts "#{names}" 