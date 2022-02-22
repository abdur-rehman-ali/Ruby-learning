# instance method 


class Box
    def initialize(l=0,w=0)
        @length = l 
        @width = w
    end

    # instance method 
    def area
        @length * @width
    end
end

obj1 = Box.new(12,21)
puts obj1.area 