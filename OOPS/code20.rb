# puts and p 
# puts call to_s method 
# p call inspect method 


class Box
    def inspect
        puts "inspect invoked"
    end

    def to_s
        puts "to_s invoked"
    end
end

puts Box.new.to_s 
p Box.new 