
# variable number of parameters 

def sample(*test)
    puts "The number of parameters = #{test.length}"
    for i in (0..test.length)
        puts test[i] 
    end

end

sample 1,2,3,4,5
sample 3,"Ali","RIMAAN"