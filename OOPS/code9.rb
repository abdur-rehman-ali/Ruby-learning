# Freezing objects 
# A frozen object may not be modified: you can't change its instance variables.

class Box

    def initialize(l=0,w=0)
        @length = l 
        @width = w
    end

    def setWidth(value)
        @width = value
    end

    def setLength(value)
        @length = value
    end

    def area
        @length * @width
    end
end

obj1 = Box.new(10,21)
puts obj1.area

obj1.setLength 2
obj1.setWidth 2
puts obj1.area

obj1.freeze

if( obj1.frozen? )
    puts "Box object is frozen object"
else
    puts "Box object is normal object"
end

obj1.setLength 2
obj1.setWidth 2
puts obj1.area