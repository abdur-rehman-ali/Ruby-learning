# attr_writer 

class Box 
    # getter or accessors
    attr_reader :length,:width

    # setters 
    attr_writer :length,:width

    # constructor
    def initialize(length,width)
        @length = length
        @width = width
    end
end

obj1 = Box.new(12,43)

obj1.length = 1
obj1.width = 2

puts obj1.length
puts obj1.width