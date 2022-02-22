# super method 

class Box
    def print
        "This is Box class"
    end
end

class BigBox < Box
    def print
        super + "This is Big box class"
    end
end

obj1 = BigBox.new
puts obj1.print