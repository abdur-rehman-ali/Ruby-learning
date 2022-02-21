# loop with array 

num = Array[1,2,3,4,5,6,7]

puts "First prinitng"
for i in num
    puts i 
end

puts "Second prinitng"
for i in (0..num.length)
    puts num[i]
end

puts "Third prinitng"
num.each do |i|
    puts i 
end