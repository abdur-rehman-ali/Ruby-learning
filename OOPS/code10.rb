# Class constants 

class Box
    COUNT=4

    def print
        puts "Accessing count inside class = #{COUNT}"
    end
end

obj1 = Box.new
obj1.print

# accessing count outside class  
puts Box::COUNT
