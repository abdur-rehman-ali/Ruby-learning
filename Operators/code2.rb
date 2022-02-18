
# comparison operators 

puts (2 == 3)
puts (2 > 3)
puts (2 < 3)
puts (2 >= 3)
puts (4 <= 3)
puts (2 != 3)

#combined comparison operator
puts (1<=>2)
puts (2<=>2)
puts (3<=>2)

puts (1==1.0)  #true as data is same
puts (1.eql?(1.0)) #false as data type is not same

# parallel assignment 
a , b ,c = 1 , 2 , 3
puts a, b, c 

# before swapping 
puts a,b
a,b = b,a
# after swapping 
puts a,b