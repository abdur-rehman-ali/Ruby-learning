# initalize method 
# instance variables 
# getters or accessors

class Box
    # constructor 
    def initialize(l=0,w=0)
        # assign value to instance variables 
        @length = l 
        @width = w 
    end

    # getters or accessors
    def print_length
        @length
    end

    def print_width
        @width
    end
end

obj1 = Box.new(12,21)
puts obj1.print_length
puts obj1.print_width

obj2 = Box.new
puts obj2.print_length
puts obj2.print_width


