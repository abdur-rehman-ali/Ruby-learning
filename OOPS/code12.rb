# attr_reader 
# shortcut for getter method 

class Box 
    attr_reader :length,:width
    def initialize(length=0,width=0)
        @length = length 
        @width = width  
    end

    # getter or accessors 
    def getLength
        @length
    end
end

obj1 = Box.new(10,20)
puts obj1.length 
puts obj1.width 