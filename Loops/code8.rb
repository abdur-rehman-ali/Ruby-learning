# next statement 

# Jumps to the next iteration of the most internal loop

for i in (2..10)
    if i<=3
        next
    end
    puts "Value of iterator = #{i}"
end